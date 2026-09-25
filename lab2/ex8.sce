n = -2:1;
x = [1, -2, 3, 6];

y1 = x($:-1:1);
n1 = -n($:-1:1);

scf(1); 
subplot(2,1,1);
plot2d3(n, x); title("Original Signal x(n)"); xlabel("n"); ylabel("x(n)");
subplot(2,1,2);
plot2d3(n1, y1); title("y1(n) = x(-n)"); xlabel("n"); ylabel("y1(n)");

y2 = x;
n2 = n - 3;

scf(2); 
subplot(2,1,1);
plot2d3(n, x); title("Original Signal x(n)"); xlabel("n"); ylabel("x(n)");
subplot(2,1,2);
plot2d3(n2, y2); title("y2(n) = x(n+3)"); xlabel("n"); ylabel("y2(n)");

y3 = 2 * x($:-1:1);
n3 = -n($:-1:1) - 2;

scf(3); // Mo cua so Figure 3
subplot(2,1,1);
plot2d3(n, x); title("Original Signal x(n)"); xlabel("n"); ylabel("x(n)");
subplot(2,1,2);
plot2d3(n3, y3); title("y3(n) = 2x(-n-2)"); xlabel("n"); ylabel("y3(n)");
