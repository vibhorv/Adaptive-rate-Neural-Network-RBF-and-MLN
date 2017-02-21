function [y,u] = predict(x,w1,w2)

u=sigmoid_fx(w1,x);
u=[1;u];
y=sigmoid_fx(w2,u);

end

