function y = sigmoid_fx(w,x)


h=w*x;
u=exp(-h)+1;
y=1./(u);
end

