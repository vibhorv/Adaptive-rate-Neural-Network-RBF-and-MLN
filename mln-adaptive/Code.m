Iteration=zeros(1,17);
innerlayer=zeros(1,17);


for a=4:20
    Iteration(a-3)=fx_nn(a);
    innerlayer(a-3)=a;
end
size(innerlayer)
size(Iteration)
plot(innerlayer,Iteration)
    