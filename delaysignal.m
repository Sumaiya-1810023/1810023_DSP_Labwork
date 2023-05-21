clc;
clear;
close all;
t=0:0.1:50;
x1=square(t);
x2=square(t-5);
subplot(3,1,1);

plot(t,x1,'r');
title('input signal');
subplot(3,1,2);

plot(t,x2,'b');
title('delayed signal');
corr=xcorr(x1,x2);
t2=-length(x1)+1 : length(x1)-1;
subplot(3,1,3); 
plot(t2,corr,'g');
title('correlated signal');
[max_val,max_index]=max(abs(corr));
time_delay=(max_index -1 )/10 ;
 
fprintf('timedelay is %.3f\n s',time_delay);