clc;
clear;
clf();

// Exercise 1.3(a) xa(t) = 3cos(5t + pi/6)
t = 0:0.01:8;
xa = 3*cos(5*t + %pi/6);
subplot(3,2,1);
plot(t, xa);
xgrid();
xlabel("t");
ylabel("x_a(t)");
title("1.3(a): x_a(t) = 3cos(5t + pi/6)");
T0 = 2*%pi/5;
disp(T0, "Fundamental period T0 = ");

// Exercise 1.3(b) x(n) = 3cos(5n + pi/6)
n = 0:50;
xb = 3*cos(5*n + %pi/6);
subplot(3,2,2);
plot2d3(n, xb);
xgrid();
xlabel("n");
ylabel("x(n)");
title("1.3(b): x(n) = 3cos(5n + pi/6)");

// Exercise 1.3(c) x(n) = 2exp[j(n/6 - pi)]
xc = 2*exp(%i*(n/6 - %pi));
subplot(3,2,3);
plot2d3(n, real(xc));
xgrid();
xlabel("n");
ylabel("Re{x(n)}");
title("1.3(c): Real part of x(n)");

// Exercise 1.3(d) x(n) = cos(n/8)cos(pi*n/8)
xd = cos(n/8).*cos(%pi*n/8);
subplot(3,2,4);
plot2d3(n, xd);
xgrid();
xlabel("n");
ylabel("x(n)");
title("1.3(d): x(n) = cos(n/8)cos(pi*n/8)");

// Exercise 1.3(e) x(n) = cos(pi*n/2) - sin(pi*n/8) + 3cos(pi*n/4 + pi/3)
xe = cos(%pi*n/2) - sin(%pi*n/8) + 3*cos(%pi*n/4 + %pi/3);
subplot(3,2,5);
plot2d3(n, xe);
xgrid();
xlabel("n");
ylabel("x(n)");
title("1.3(e)");

n1 = 0:30;
x1 = cos(%pi*n1/2) - sin(%pi*n1/8) + 3*cos(%pi*n1/4 + %pi/3);
x2 = cos(%pi*(n1+16)/2) - sin(%pi*(n1+16)/8) + 3*cos(%pi*(n1+16)/4 + %pi/3);
error = max(abs(x2-x1));
disp(error, "max |x(n+16) - x(n)| = ");
