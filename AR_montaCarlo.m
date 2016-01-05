samples = 1000000;
n = 100000;
delta = 0.001;

g = genAR(zeros(samples,1),.5,n);
xn = zeros(samples,1);
for i=[1 2 3 10^4 10^5 10^6 ]
   xn(:,end+1)= g(:,i); 
end

for i = 2:7
[x,y] = hist(xn(:,i),[3:delta:3]);
y=y/(samples*delta);
figure;
bar(x,y)
end