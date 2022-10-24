% 확률변수론(01) 22000013 강하림
% hw2_2: write a matlab program that generates random number with exponential
% distribution from Uniform distributed random variable
% histogram & real distribution function(pdf), N=10000 SAMPLE

N=10000;
stp=0.1;

x=rand(N,1);
y=-log(1-x);
yabscissa=0:stp:2.5;

histogram(y,"BinWidth",0.1,'BinLimits',[0,2.5])
real_pdf=exp(-yabscissa)*(N*stp);
hold on % to draw multiple plot in one figure
plot(yabscissa, real_pdf,'LineWidth',2,'LineStyle',':') 
xlabel('Magnitude of Bins'), ylabel('Resource Number of Samples');
title('Histogram of Exponential Distribution');

% ref 1: https://bookdown.org/kevin_davisross/probsim-book/exponential.html
% ref 2: https://stackoverflow.com/questions/33147545/how-to-normalize-histogram <- the method of applying CLF(normalization pdf, since N is large enough)