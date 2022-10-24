% 확률변수론(01) 22000013 강하림
% hw: plot the probability of heads as the # of a fair coin tossing.
N=2000;
u=rand(1,N);
H=u<0.5;
tossing=(1:N);
prob_H=zeros(1,N);

for i=1:N 
    prob_H(i)=sum(H(1:i))./i;
end

plot(tossing,prob_H);
ylim([0, 1.0]);
xlabel('The number of tossing'), ylabel('The prob of heads');
title('Fair Coin Tossing Simulation');