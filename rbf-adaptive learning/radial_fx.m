function u = radial_fx(x,c,phi)
size(phi);
sigma=phi.*phi;
[ux,uy]= size(c);
p=c;
a=0;

while a<ux 
   p(a+1,:)=p(a+1,:)-x;
   a=a+1;
end

z=p.*p;
den=sigma;
size(z);
size(den);
r=z./den;
r=r';
q=sum(r);
u=exp(-q);
end

