// Bài 2.6: Khảo sát tính bất biến theo thời gian
clc; clear;

// Tín hiệu x(n)
function y = xval(k)
    if k >= 0 & k <= 3 then y = 1;
    else y = 0;
    end
endfunction

// 1. Tín hiệu đầu vào x(n)
nx = -2:5;
x = zeros(1, length(nx));
for i = 1:length(nx) x(i) = xval(nx(i)); end

scf(1); clf();
plot2d3(nx, x);
xlabel("n"); ylabel("x(n)"); title("Tín hiệu đầu vào x(n)"); xgrid();
xs2png(1, "b26_x.png");

// 2. Câu (b): Hệ thống y(n) = x(n^2)
// Tính y(n) = x(n^2)
ny = -3:3;
y_b = zeros(1, length(ny));
for i = 1:length(ny) y_b(i) = xval(ny(i)^2); end

scf(2); clf();
plot2d3(ny, y_b);
xlabel("n"); ylabel("y(n)"); title("Tín hiệu y(n) = x(n^2)"); xgrid();
xs2png(2, "b26_y.png");

// Tính y(n-2)
ny_shift = -1:5;
y_shift_b = zeros(1, length(ny_shift));
for i = 1:length(ny_shift) y_shift_b(i) = xval((ny_shift(i) - 2)^2); end

scf(3); clf();
plot2d3(ny_shift, y_shift_b);
xlabel("n"); ylabel("y''_2(n)"); title("Tín hiệu y''_2(n) = y(n-2)"); xgrid();
xs2png(3, "b26_y_shift.png");

// Tính x_2(n) = x(n-2)
nx2 = -1:6;
x2 = zeros(1, length(nx2));
for i = 1:length(nx2) x2(i) = xval(nx2(i) - 2); end

scf(4); clf();
plot2d3(nx2, x2);
xlabel("n"); ylabel("x_2(n)"); title("Tín hiệu x_2(n) = x(n-2)"); xgrid();
xs2png(4, "b26_x2.png");

// Tính y_2(n) = T[x_2(n)]
ny2 = -3:3;
y2_b = zeros(1, length(ny2));
for i = 1:length(ny2) y2_b(i) = xval(ny2(i)^2 - 2); end

scf(5); clf();
plot2d3(ny2, y2_b);
xlabel("n"); ylabel("y_2(n)"); title("Tín hiệu y_2(n) = T[x_2(n)]"); xgrid();
xs2png(5, "b26_y2.png");

// 3. Câu (c): Hệ thống y(n) = x(n) - x(n-1)
// Tính y(n)
nc = -2:6;
yc = zeros(1, length(nc));
for i = 1:length(nc) yc(i) = xval(nc(i)) - xval(nc(i) - 1); end

scf(6); clf();
plot2d3(nc, yc);
xlabel("n"); ylabel("y(n)"); title("Tín hiệu y(n) = x(n) - x(n-1)"); xgrid();
xs2png(6, "b26_c_y.png");

// So sánh y(n-2) và y_2(n)
nc_cmp = -1:7;
yc_shift = zeros(1, length(nc_cmp));
yc_sys   = zeros(1, length(nc_cmp));
for i = 1:length(nc_cmp)
    yc_shift(i) = xval(nc_cmp(i) - 2) - xval(nc_cmp(i) - 3);
    yc_sys(i)   = xval(nc_cmp(i) - 2) - xval(nc_cmp(i) - 3);
end

scf(7); clf();
subplot(2,1,1); plot2d3(nc_cmp, yc_shift);
xlabel("n"); ylabel("y(n-2)"); title("Hệ thống (c): y(n-2)"); xgrid();
subplot(2,1,2); plot2d3(nc_cmp, yc_sys);
xlabel("n"); ylabel("y_2(n)"); title("Hệ thống (c): T[x(n-2)] -> Bất biến theo thời gian"); xgrid();
xs2png(7, "b26_c_compare.png");

// 4. Câu (d): Hệ thống y(n) = n * x(n)
// Tính y(n)
nd = -2:5;
yd = zeros(1, length(nd));
for i = 1:length(nd) yd(i) = nd(i) * xval(nd(i)); end

scf(8); clf();
plot2d3(nd, yd);
xlabel("n"); ylabel("y(n)"); title("Tín hiệu y(n) = n * x(n)"); xgrid();
xs2png(8, "b26_d_y.png");

// So sánh y(n-2) và y_2(n)
nd_cmp = -1:6;
yd_shift = zeros(1, length(nd_cmp));
yd_sys   = zeros(1, length(nd_cmp));
for i = 1:length(nd_cmp)
    yd_shift(i) = (nd_cmp(i) - 2) * xval(nd_cmp(i) - 2);
    yd_sys(i)   = nd_cmp(i) * xval(nd_cmp(i) - 2);
end

scf(9); clf();
subplot(2,1,1); plot2d3(nd_cmp, yd_shift);
xlabel("n"); ylabel("y(n-2)"); title("Hệ thống (d): y(n-2) = (n-2)x(n-2)"); xgrid();
subplot(2,1,2); plot2d3(nd_cmp, yd_sys);
xlabel("n"); ylabel("y_2(n)"); title("Hệ thống (d): T[x(n-2)] = n*x(n-2) -> Biến đổi theo thời gian"); xgrid();
xs2png(9, "b26_d_compare.png");

disp("Đã xuất thành công 9 file ảnh cho Bài 2.6!");
