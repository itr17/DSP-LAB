
clc;
clear;
close;

x = [1 2 -3 2 1];
h = [1 0 -1 -1 1];

N = length(x);
M = length(h);

n = 0:N-1;
n_x = 1:N;

// Folding and Shifting Method

y1 = zeros(1,N);

for i = 0:N-1
    for k = 0:M-1
        index = i-k;

        while index < 0
            index = index + N;
        end

        while index >= N
            index = index - N;
        end

        y1(i+1) = y1(i+1) + h(k+1)*x(index+1);
    end
end

disp("Folding and Shifting result:");
disp(y1);

// Matrix Method

H = zeros(N,N);

for i = 0:N-1
    for k = 0:N-1
        index = i-k;

        while index < 0
            index = index + N;
        end

        while index >= N
            index = index - N;
        end

        H(i+1,k+1) = h(index+1);
    end
end

Y = H*x';
y2 = Y';

disp("Circular convolution matrix H:");
disp(H);

disp("Matrix Method result:");
disp(y2);

// Calculate Energy

Ex = abs(x).^2;
Ey1 = abs(y1).^2;
Ey2 = abs(y2).^2;

disp("Energy of x(n):");
disp(Ex);

disp("Energy of y(n):");
disp(Ey1);

// Compare Results

if norm(y1-y2) < 1e-10 then
    disp("Both methods give the same result!");
else
    disp("The results are different!");
end

// Figure 1: Folding and Shifting

scf(0);
clf();

subplot(4,1,1);
plot2d3(n_x,x,style=2);
xtitle("Bieu do cua x(n)","n","x(n)");
xgrid();

subplot(4,1,2);
plot2d3(n,y1,style=5);
xtitle("Bieu do cua y(n) (Folding and Shifting)","n","y(n)");
xgrid();

subplot(4,1,3);
plot2d3(n_x,Ex,style=6);
xtitle("Bieu do cua Ex(n)","n","Ex(n)");
xgrid();

subplot(4,1,4);
plot2d3(n_x,Ey1,style=4);
xtitle("Bieu do cua Ey(n)","n","Ey(n)");
xgrid();

// Figure 2: Matrix Method

scf(1);
clf();

subplot(4,1,1);
plot2d3(n_x,x,style=2);
xtitle("Bieu do cua x(n)","n","x(n)");
xgrid();

subplot(4,1,2);
plot2d3(n,y2,style=5);
xtitle("Bieu do cua y(n) (Matrix Method)","n","y(n)");
xgrid();

subplot(4,1,3);
plot2d3(n_x,Ex,style=6);
xtitle("Bieu do cua Ex(n)","n","Ex(n)");
xgrid();

subplot(4,1,4);
plot2d3(n_x,Ey2,style=4);
xtitle("Bieu do cua Ey(n)","n","Ey(n)");
xgrid();
