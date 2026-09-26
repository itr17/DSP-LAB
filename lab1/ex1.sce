x = 1:4;
v1 = x + 1;
disp("Vector 1:", v1);

y = 5:8;
v2 = x .* y;
disp("Vector 2:", v2);

x_lin = linspace(0, %pi, 10);
v3 = sin(x_lin);
disp("Vector 3:", v3);
