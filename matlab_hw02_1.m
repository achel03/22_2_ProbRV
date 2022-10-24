% 확률변수론(01) 22000013 강하림
% hw2_1: ex3.5-3(N=10,000)
clear

N=10000;
stp=0.1;
b=1;

x=rand(1,N); 
y=sqrt(-b*log(1-x));
yabscissa=0:stp:2.5;

histogram(y,"BinWidth",0.1,"BinLimits",[0 2.5]);
hold on % to draw multiple plot in one figure
ytrue=2*yabscissa/b.*exp(-yabscissa.^2/b)*(N*stp);
plot(yabscissa, ytrue, 'k','LineWidth',1.5,'LineStyle',':','Color','r');
xlabel('Magnitude of Bins'), ylabel('Resource Number of Samples');
title('Histogram of Rayleigh Distribution');

% ref1 : https://kr.mathworks.com/help/stats/rayleigh-distribution.html
% ref2 : https://kr.mathworks.com/help/matlab/ref/matlab.graphics.chart.primitive.histogram.html#d124e495126
% ref3 : https://kr.mathworks.com/help/matlab/ref/power.html
% ref4 : https://kr.mathworks.com/help/matlab/ref/hold.html?searchHighlight=hold%20on&s_tid=srchtitle
% ref5 : https://kr.mathworks.com/help/stats/prob.normaldistribution.pdf.html