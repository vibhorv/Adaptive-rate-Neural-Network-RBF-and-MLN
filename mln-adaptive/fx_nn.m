function a = fx_nn(n)
w1=rand(n,3);
w2=rand(1,n+1);
a=1;
err=error_fx(w1,w2);
e=[err];
u=[a];
while err > 0.1
    z=[1;1;1];
    [w1,w2]=bck_prop(z,w1,w2,0);
    z=[1;0;0];
    [w1,w2]=bck_prop(z,w1,w2,0);
    z=[1;0;1];
    [w1,w2]=bck_prop(z,w1,w2,1);    
    z=[1;1;0];
    [w1,w2]=bck_prop(z,w1,w2,1);
    err=error_fx(w1,w2);
    e=[err,e];
    u=[a,u];
    fprintf('value of error : %d\n', err);
    a=a+1;
end
fprintf('value of Iteration : %d\n', a);
end

