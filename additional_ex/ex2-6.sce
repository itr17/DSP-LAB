clc;
clear;


// =====================================================
// BÀI 2.6
//
// x(n) = 1, 0 <= n <= 3
// x(n) = 0, otherwise
// =====================================================


// =====================================================
// HÀM TÍN HIỆU x(n)
// =====================================================

function y = xval(n)

    if n >= 0 & n <= 3 then
        y = 1;
    else
        y = 0;
    end

endfunction



// =====================================================
// (b1) VẼ TÍN HIỆU x(n)
// =====================================================

n = -3:7;
x = zeros(1, length(n));

for i = 1:length(n)
    x(i) = xval(n(i));
end

scf(1);
clf();

plot2d3(n, x);

xlabel("n");
ylabel("x(n)");
title("(b1) Tín hiệu x(n)");
xgrid();

xs2png(1, "b26_x.png");



// =====================================================
// (b2) y(n) = x(n^2)
// =====================================================

n = -5:5;
y = zeros(1, length(n));

for i = 1:length(n)
    y(i) = xval(n(i)^2);
end

scf(2);
clf();

plot2d3(n, y);

xlabel("n");
ylabel("y(n)");
title("(b2) Tín hiệu y(n) = x(n^2)");
xgrid();

xs2png(2, "b26_y.png");



// =====================================================
// (b3) y'_2(n) = y(n-2)
// =====================================================
//
// y(n) khác 0 tại n = -1, 0, 1
// Sau khi dịch phải 2:
// n = 1, 2, 3
// =====================================================

n = -3:7;
y_shift = zeros(1, length(n));

for i = 1:length(n)

    y_shift(i) = xval((n(i)-2)^2);

end

scf(3);
clf();

plot2d3(n, y_shift);

xlabel("n");
ylabel("y(n-2)");
title("(b3) Tín hiệu y(n-2)");
xgrid();

xs2png(3, "b26_y_shift.png");



// =====================================================
// (b4) x_2(n) = x(n-2)
// =====================================================
//
// x(n) khác 0 tại 0,1,2,3
// x(n-2) khác 0 tại 2,3,4,5
// =====================================================

n = -3:8;
x2 = zeros(1, length(n));

for i = 1:length(n)

    x2(i) = xval(n(i)-2);

end

scf(4);
clf();

plot2d3(n, x2);

xlabel("n");
ylabel("x_2(n)");
title("(b4) Tín hiệu x_2(n) = x(n-2)");
xgrid();

xs2png(4, "b26_x2.png");



// =====================================================
// (b5) y_2(n) = T[x_2(n)]
//
// y_2(n) = x_2(n^2)
//        = x(n^2 - 2)
//
// y_2(n) khác 0 tại n = -2 và n = 2
// =====================================================

n = -5:5;
y2 = zeros(1, length(n));

for i = 1:length(n)

    y2(i) = xval(n(i)^2 - 2);

end

scf(5);
clf();

plot2d3(n, y2);

xlabel("n");
ylabel("y_2(n)");
title("(b5) Tín hiệu y_2(n)");
xgrid();

xs2png(5, "b26_y2.png");



// =====================================================
// (c) y(n) = x(n) - x(n-1)
// =====================================================
//
// y(0) = 1
// y(4) = -1
// =====================================================

n = -3:7;
yc = zeros(1, length(n));

for i = 1:length(n)

    yc(i) = xval(n(i)) - xval(n(i)-1);

end

scf(6);
clf();

plot2d3(n, yc);

xlabel("n");
ylabel("y(n)");
title("(c) Tín hiệu y(n) = x(n) - x(n-1)");
xgrid();

xs2png(6, "b26_c_y.png");



// =====================================================
// (c) SO SÁNH y_2(n) VÀ y(n-2)
// =====================================================
//
// Với hệ thống y(n) = x(n) - x(n-1)
//
// y_2(n) = x(n-2) - x(n-3)
// y(n-2) = x(n-2) - x(n-3)
//
// Hai tín hiệu giống nhau
// =====================================================

n = -3:9;

yc_shift = zeros(1, length(n));
yc_system = zeros(1, length(n));

for i = 1:length(n)

    // y(n-2)
    yc_shift(i) = xval(n(i)-2) - xval(n(i)-3);

    // T[x(n-2)]
    yc_system(i) = xval(n(i)-2) - xval(n(i)-3);

end


scf(7);
clf();

subplot(2,1,1);

plot2d3(n, yc_shift);

xlabel("n");
ylabel("y(n-2)");
title("y(n-2)");
xgrid();


subplot(2,1,2);

plot2d3(n, yc_system);

xlabel("n");
ylabel("y_2(n)");
title("y_2(n) = T[x(n-2)]");
xgrid();

xs2png(7, "b26_c_compare.png");



// =====================================================
// (d) y(n) = n*x(n)
// =====================================================

n = -3:7;
yd = zeros(1, length(n));

for i = 1:length(n)

    yd(i) = n(i) * xval(n(i));

end

scf(8);
clf();

plot2d3(n, yd);

xlabel("n");
ylabel("y(n)");
title("(d) Tín hiệu y(n) = n*x(n)");
xgrid();

xs2png(8, "b26_d_y.png");



// =====================================================
// (d) SO SÁNH y_2(n) VÀ y(n-2)
// =====================================================
//
// x_2(n) = x(n-2)
//
// y_2(n) = n*x(n-2)
//
// y(n-2) = (n-2)*x(n-2)
//
// Hai tín hiệu khác nhau
// =====================================================

n = -3:8;

yd_system = zeros(1, length(n));
yd_shift = zeros(1, length(n));

for i = 1:length(n)

    // y_2(n) = n*x(n-2)
    yd_system(i) = n(i) * xval(n(i)-2);

    // y(n-2) = (n-2)*x(n-2)
    yd_shift(i) = (n(i)-2) * xval(n(i)-2);

end


scf(9);
clf();

subplot(2,1,1);

plot2d3(n, yd_system);

xlabel("n");
ylabel("y_2(n)");
title("y_2(n) = T[x(n-2)]");
xgrid();


subplot(2,1,2);

plot2d3(n, yd_shift);

xlabel("n");
ylabel("y(n-2)");
title("y(n-2)");
xgrid();

xs2png(9, "b26_d_compare.png");



// =====================================================
// IN KẾT QUẢ RA CONSOLE
// =====================================================

disp("========================================");
disp("BAI 2.6");
disp("========================================");

disp(" ");

disp("x(n) = 1 tai n = 0,1,2,3");

disp(" ");

disp("y(n) = x(n^2):");
disp(y);

disp(" ");

disp("y(n-2):");
disp(y_shift);

disp(" ");

disp("x2(n) = x(n-2):");
disp(x2);

disp(" ");

disp("y2(n) = T[x2(n)]:");
disp(y2);

disp(" ");

disp("He thong (c): y(n) = x(n) - x(n-1)");
disp("y(n):");
disp(yc);

disp(" ");

disp("He thong (d): y(n) = n*x(n)");
disp("y(n):");
disp(yd);
