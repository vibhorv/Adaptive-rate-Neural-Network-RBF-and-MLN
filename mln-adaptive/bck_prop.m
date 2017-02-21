function [ w1,w2 ] = bck_prop(x,w1,w2,yd)

[y,v]=predict(x,w1,w2);


J1=(y.*(1-y))*v;
J2=(v.*(1-v))*x';
uy=size(J1);
j1 = reshape(J1,[1,uy(1)*uy(2)]);
uy=size(J2);
j2 = reshape(J2,[1,uy(1)*uy(2)]);
J=[j1,j2];
size(J);
etah=J*J';
n=1/etah;


delta12=y*(1-y)*(yd-y);
size(w2);
w2=w2 + (n)*delta12*v';
v_t=v.*(1-v);
w2_t=delta12*w2;
delta01=v_t'.*w2_t;
size(delta01(2:end));
w1=w1 + (n)*(delta01(2:end)')*x';
end

