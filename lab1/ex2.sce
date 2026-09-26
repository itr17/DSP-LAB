t = linspace(0, 0.1, 1000);
xa = 3 * sin(100 * %pi * t);

n = 0:30;
xn = 3 * sin((%pi/3) * n);

delta = 0.1;
xq = fix(xn / delta) * delta; 

clf(); 

subplot(3,1,1);
plot(t, xa);
title("x_a(t) in 5 periods");
xlabel("t (s)");
ylabel("Amplitude");

subplot(3,1,2);
plot2d3(n, xn); 
title("x(n) in 5 periods");
xlabel("n (samples)");
ylabel("Amplitude");

subplot(3,1,3);
plot2d3(n, xq);
title("x_q(n) in 5 periods (Quantized, Delta=0.1)");
xlabel("n (samples)");
ylabel("Amplitude");
