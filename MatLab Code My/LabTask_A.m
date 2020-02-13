% The function is x(t)=Acos(2*pi*f*t+Q) where startdur <= t <= enddur 

% Q is phase displacement in degrees

% f is frequency in Hertz => 1/Timeperiod

% t is the duration in second => 1-10sec or 0-20sec etc.

% function [x,t] = sinusoidgen(A,f,Q,startdur,enddur)

function [x,t] = LabTask_A(A,f,Q,startdur,enddur)

t = startdur:1/(20*f):enddur; % samples the signal to 20 times per period ; startdur and enddur in sec ; f in Hz

Q=(Q*pi)/180; %Convert degree to radians.

x = A*cos((2*pi*f*t)+Q); %Q - angle in radians.

end

%Take A1 = 13; A2 = 24; φ1 =60o; φ2 = -30o