x=linspace(0,4*pi,10);
y=x.^2.*sin(x);
figure
hold on
plot(x,y,'g--','LineWidth',3);
plot(x,y,'ro','MarkerSize',15,'LineWidth',5);
