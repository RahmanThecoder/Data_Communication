%demo from Stackoverfloww

x1 = A1*exp(j*2*pi*f1*t + Phi1); 
x2 = A1*exp(j*2*pi*f1*t + Phi1) + A2*exp(j*2*pi*f2*t + Phi2);

abs(x1) = A1;
angle(x1) = Phi1;

abs(x2) = A1+A2;
angle(x2) = Phi1+Phi2;


x3 = A3*cos(2*pi*f3*t + Phi3); 
x4 = A3*cos(2*pi*f3*t + Phi3) + A4*cos(2*pi*f4*t + Phi4);