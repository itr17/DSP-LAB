
clc;
clear;
clf;

// Tham so
r = 0.7;
w0 = %pi/4;

// Vi tri zero va pole
z0 = 0;
p1 = r * exp(%i*w0);
p2 = r * exp(-%i*w0);

// Ve duong tron don vi
theta = linspace(0, 2*%pi, 500);
xc = cos(theta);
yc = sin(theta);

plot(xc, yc, "k--");
a = gca();
a.isoview = "on";

// Ve truc toa do
xpoly([-1.3 1.3], [0 0]);
xpoly([0 0], [-1.3 1.3]);

// Ve zero: hinh tron
xarc(-0.035, 0.035, 0.07, 0.07, 0, 360*64);

// Ve poles: dau X
plot(real(p1), imag(p1), "rx");
plot(real(p2), imag(p2), "rx");

// Ghi chu
xstring(real(p1)+0.05, imag(p1)+0.05, "p1");
xstring(real(p2)+0.05, imag(p2)-0.1, "p2");
xstring(0.05, -0.1, "z0");

xlabel("Real");
ylabel("Imaginary");
title("Pole-Zero Plot of X1(z)");

xgrid();
