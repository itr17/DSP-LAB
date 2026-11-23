clc;
clear;
close;

// Bai 4.11: Ve tin hieu y(n)

// Chi so n
n = -5:3;

// Gia tri y(n)
y = [ ...
    1/2, ...
    0, ...
    1-%i/2, ...
    2, ...
    1+2*%i, ...
    0, ...
    1/2-2*%i, ...
    0, ...
    %i/2 ...
];

// Tach phan thuc va phan ao
y_real = real(y);
y_imag = imag(y);


// =====================================
// Ve tin hieu y(n)
// =====================================

scf(3);

subplot(2,1,1);

plot2d3(n, y_real);

xtitle("Real Part of y(n)", ...
       "n", "Real{y(n)}");

xgrid();


subplot(2,1,2);

plot2d3(n, y_imag);

xtitle("Imaginary Part of y(n)", ...
       "n", "Imag{y(n)}");

xgrid();
