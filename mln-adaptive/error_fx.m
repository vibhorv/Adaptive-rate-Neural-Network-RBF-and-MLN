function error = error_fx( w1,w2 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
error=0;
z=[1;1;1];
y=predict(z,w1,w2);
error=error+(y)*(y);
z=[1;0;0];
y=predict(z,w1,w2);
error=error+(y)*(y);
z=[1;0;1];
y=predict(z,w1,w2);
error=error+(1-y)*(1-y);   
z=[1;1;0];
y=predict(z,w1,w2);
error=error+(1-y)*(1-y);
error=(0.5)*error;
end

