%% in-classex
analyticalAnswer = sind(112);
x = 0:1:360;
y = sind(x);
plot(x,y);
hold on;
plot(112,analyticalAnswer,'x');
t2 = taylorSine(112,2);
plot(112,t2,'x');
t3 = taylorSine(112,3);
plot(112,t3,'x');