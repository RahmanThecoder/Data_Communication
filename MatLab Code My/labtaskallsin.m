A1=13;

A2=25;

f=60000;

dur=0.00033;

tt= -dur : 1/f : dur;

X1=A1*sin( (2*pi*3000*tt)+pi/9);

subplot(3,1,1);

plot(tt,X1),grid on

hold on

X2=A2*sin( 2*pi*3000*tt - pi/6 );

subplot(3,1,2)

plot(tt,X2),grid on

X3=X1+X2;

subplot(3,1,3);

plot(tt,X3), grid on