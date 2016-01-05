warning off
samples = 100000;
n = 1000;
delta = 0.001;

g = genAR(zeros(samples,1),.5,n);
v = [1 2 3 0.5*n 0.75*n n];
for i=1:length(v)
    subplot(2,3,i)
    [y,x] = hist(g(:,v(i)),[-3:delta:3]);
    y=y/(samples*delta);
    bar(x,y);
end
    
