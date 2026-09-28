clc;
clear;

// =====================================================
// BÀI 2.4
//
// x(n) = {2, 3, 4, 5, 6}
// Mũi tên nằm dưới 4
//
// n:    -2  -1   0   1   2
// x:     2   3   4   5   6
// =====================================================


// =====================================================
// (1) Vẽ tín hiệu ban đầu x(n)
// =====================================================

n = -2:2;
x = [2 3 4 5 6];

scf(1);
clf();

plot2d3(n, x);

xlabel("n");
ylabel("x(n)");
title("Tín hiệu ban đầu x(n)");
xgrid();

xs2png(1, "b24_original.png");


// =====================================================
// (2) Thành phần chẵn
//
// xe(n) = [x(n) + x(-n)] / 2
// =====================================================

xe = zeros(1, length(n));

for i = 1:length(n)
    xe(i) = (x(i) + x(length(n)-i+1)) / 2;
end

scf(2);
clf();

plot2d3(n, xe);

xlabel("n");
ylabel("x_e(n)");
title("Thành phần chẵn x_e(n)");
xgrid();

xs2png(2, "b24_even.png");


// =====================================================
// (3) Thành phần lẻ
//
// xo(n) = [x(n) - x(-n)] / 2
// =====================================================

xo = zeros(1, length(n));

for i = 1:length(n)
    xo(i) = (x(i) - x(length(n)-i+1)) / 2;
end

scf(3);
clf();

plot2d3(n, xo);

xlabel("n");
ylabel("x_o(n)");
title("Thành phần lẻ x_o(n)");
xgrid();

xs2png(3, "b24_odd.png");


// =====================================================
// In kết quả ra Console để kiểm tra
// =====================================================

disp("n = ");
disp(n);

disp("x(n) = ");
disp(x);

disp("Thanh phan chan xe(n) = ");
disp(xe);

disp("Thanh phan le xo(n) = ");
disp(xo);
