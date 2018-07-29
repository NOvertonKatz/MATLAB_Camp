clc
close all
hold on
x=0:15;
y1=x;
y2=x/2;
y3=log10(x);
plot(x,y1);
title('Thinking Algorithmically');
xlabel('Size of Problem');
ylabel('Time to solve');
pause
plot(x,y2);
pause
plot(x,y3);
legend('n','n/2','log(n)')