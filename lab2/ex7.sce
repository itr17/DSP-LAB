n = -1:3; 

x1_pad = [0, 0, 1, 3, -2]; 
x2_pad = [0, 1, 2, 3, 0];  

y_mul = x1_pad .* x2_pad; 

subplot(3, 1, 1);
plot2d3(n, x1_pad);
title("Signal x1(n)"); xlabel("n"); ylabel("x1(n)");

subplot(3, 1, 2);
plot2d3(n, x2_pad);
title("Signal x2(n)"); xlabel("n"); ylabel("x2(n)");

subplot(3, 1, 3);
plot2d3(n, y_mul);
title("Multiplication y(n) = x1(n) . x2(n)"); xlabel("n"); ylabel("y(n)");
