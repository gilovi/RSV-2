warning off
samples = 100000;
n = 1000;
delta = 0.001;
%%
k = zeros(samples,1);
g = genAR(k ,.5,n);
v = [1 2 3 0.5*n 0.75*n n];
for i=1:length(v)
    subplot(2,3,i)
    [y,x] = hist(g(:,v(i)),[-3:delta:3]);
    y=y/(samples*delta);
    bar(x,y);
end
%%    
figure;
k = rand(samples,1) + 2;
g2 = genAR(k ,.5,n);
v = [1 2 3 0.5*n 0.75*n n];
for i = 1:length(v)
    subplot(2,3,i)
    [y,x] = hist(g2(:,v(i)),[-2:delta:2]);
    y=y/(samples*delta);
    bar(x,y);
end