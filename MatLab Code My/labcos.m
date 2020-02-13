A1=18;
A2=1.2*18;
f = 4000;            % sinusoid freq
T = 1/f;            % period 
fs = T/25;       % time step
tt = -T:fs:T;     % time vector
tm1=(37.2/11)*T;
tm2=-(41.3/27)*T;
X1=A1*cos(2*pi*(4000))*(tt-tm1);
subplot(3,1,1);
plot(tt,X1),grid on
title('Sinusoid #1') 
hold on
X2=A2*cos(2*pi*(4000))*(tt-tm2);
subplot(3,1,2)
plot(tt,X2),grid on