

%t=0:0.1:2;
t=linspace(0,1,500);
f=30;
hu=sin(2*pi*f*t);
fu=hu*2;
%plot(t,hu,t,fu);
plot(t,hu,'g+-',t,fu,'LineWidth',3,'Markersize',14);

