function y = sigmoid_fx(w,x)
h=w*x;
y=1./(exp(-h)+1);
end

