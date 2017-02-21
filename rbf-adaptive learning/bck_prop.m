function [c,phi,w2,a] = bck_prop(x,c,phi,w2,yd)
[y,v]=predict(x,c,phi,w2);
ytilda=yd-y;
n=1/(v*v')
%fprintf('etah : %d\n',);
w2=w2 + (n)*ytilda*v;

[ux,uy]= size(c);
p=c;
a=0;

while a<ux 
   p(a+1,:)=p(a+1,:)-x;
   a=a+1;
end

u=((p.*p)./(phi.*phi.*phi));
p_1=(p./(phi.*phi));
bu=(w2.*v);

a=0;
while a<ux
    c_up(a+1,:)=bu(a+1)*p_1(a+1,:);
    u_up(a+1,:)=bu(a+1)*u(a+1,:);
    a=a+1;
end
size(u_up);
size(c_up);
c=c + n*ytilda*c_up;
phi=phi + n*ytilda*u_up;

end
