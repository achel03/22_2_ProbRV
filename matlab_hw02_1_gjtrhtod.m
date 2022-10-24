% 확률변수론(01) 22000013 강하림
% hw: ex3.5-3(N=10,000)
N=10000;
sz=[1 N];
y=[1 N];
x = rand(sz); 

for i=1:N 
    y(i)=power(-log(1-x(i)),1/2);
end
histogram(y,"BinWidth",0.1,"BinLimits",[0 2.5]);
xlabel('Magnitude of Bins'), ylabel('Resource Number of Samples');
title('Histogram of Rayleigh Distribution');

sigma=1;
c= linspace(0,2.5);
p = c/sigma^2.*exp(-c.^2/(2*sigma^2)); %?? ctl ㅎㅗㅏㄱㅇㅣㄴㅇㅛㅇ?
hold on;
% plot(c,p)
plot(x,y)

% pd=makedist("Rayleigh");
% raylplot=pdf(pd,x);
% plot(x,raylplot)
% ref1 : https://kr.mathworks.com/help/stats/rayleigh-distribution.html
% ref2 : https://kr.mathworks.com/help/matlab/ref/matlab.graphics.chart.primitive.histogram.html#d124e495126
% ref3 : https://kr.mathworks.com/help/matlab/ref/power.html
% ref4 : https://kr.mathworks.com/help/matlab/ref/hold.html?searchHighlight=hold%20on&s_tid=srchtitle
% ref5 : https://kr.mathworks.com/help/stats/prob.normaldistribution.pdf.html