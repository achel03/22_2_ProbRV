% ref 2: https://stackoverflow.com/questions/33147545/how-to-normalize-histogram
% <- the method of applying CLF(normalization pdf)
N = 10000;
Lambda=1;
r = rand(N,1);
X = -log(1-r)/Lambda;
histogram(X, 'Normalization', 'pdf','BinLimits',[0,2.5]) %// plot normalized histogram
t = 0:0.1:2.5;
pdf = Lambda*exp(-Lambda*t);
hold on, plot(t,pdf,'LineWidth',1.5) %// plot pdf