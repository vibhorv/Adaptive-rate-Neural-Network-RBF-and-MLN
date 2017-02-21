function [y,u] = predict(x,c,phi,w2)

u=radial_fx(x,c,phi);
u=[1,u];
y=w2*u';

end

