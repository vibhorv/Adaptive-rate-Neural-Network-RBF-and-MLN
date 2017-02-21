function [c,phi,w] = fx_nn(n)
c=rand(n,3);
phi=rand(n,3);
w=rand(1,n+1);
a=1;
err=error_fx(c,phi,w);
e=[err];
u=[a];
while err > 0.1
    z=[1,1,1];
    [c,phi,w]=bck_prop(z,c,phi,w,0);
    z=[1,0,0];
    [c,phi,w]=bck_prop(z,c,phi,w,0);
    z=[1,0,1];
    [c,phi,w]=bck_prop(z,c,phi,w,1);    
    z=[1,1,0];
    [c,phi,w]=bck_prop(z,c,phi,w,1);
    err=error_fx(c,phi,w);
    e=[err,e];
    u=[a,u];
    fprintf('error : %d\n', err);
    a=a+1;
end
%plot(u,e)
end

