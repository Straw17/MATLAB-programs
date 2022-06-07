x = linspace(-5,5);
y = 5 * x.^2 + 2 * x - 3;
z = 3 * x + 1;
plot(x,y,'green',x,z,'--');
title('Example Plot');
xlabel('x');
ylabel('functions');
legend('y', 'z');