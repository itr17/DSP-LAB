clear; clc; close(winsid());

nx = 0:4;
x = [1, 2, -3, 2, 1];

nh = 0:2;
h = [1, 0, -1];

ny = 0:6;
y = conv(x, h); 

ex = abs(x).^2;      
Ex_total = sum(ex);  

ey = abs(y).^2;      
Ey_total = sum(ey);  

scf(1);
clf();

// Đồ thị 1: Tín hiệu x(n)
subplot(2, 2, 1);
plot2d3(nx, x, style=2);
plot(nx, x, 'bo');
xgrid();
xtitle("Signal x(n)", "n", "Amplitude");
a1 = gca(); a1.data_bounds = [-1, -4; 7, 3];

// Đồ thị 2: Tín hiệu y(n)
subplot(2, 2, 2);
plot2d3(ny, y, style=5);
plot(ny, y, 'ro');
xgrid();
xtitle("Linear Convolution y(n)", "n", "Amplitude");
a2 = gca(); a2.data_bounds = [-1, -5; 7, 5];

// Đồ thị 3: Năng lượng của x(n)
subplot(2, 2, 3);
plot2d3(nx, ex, style=2);
plot(nx, ex, 'bs');
xgrid();
xtitle("Energy of x(n): e_x(n) = |x(n)|^2 (Total E_x = " + string(Ex_total) + ")", "n", "Energy");
a3 = gca(); a3.data_bounds = [-1, 0; 7, 10];

// Đồ thị 4: Năng lượng của y(n)
subplot(2, 2, 4);
plot2d3(ny, ey, style=5);
plot(ny, ey, 'rs');
xgrid();
xtitle("Energy of y(n): e_y(n) = |y(n)|^2 (Total E_y = " + string(Ey_total) + ")", "n", "Energy");
a4 = gca(); a4.data_bounds = [-1, 0; 7, 18];
