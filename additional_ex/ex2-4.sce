// BÀI 2.4: PHÂN TÍCH THÀNH PHẦN CHẴN / LẺ CỦA TÍN HIỆU
clc; clear;

// Tín hiệu gốc x(n) = {2, 3, 4, 5, 6} với gốc n=0 tại giá trị 4 (n thuộc [-2, 2])
n = -2:2;
x = [2:6];

// 1. Vẽ tín hiệu gốc x(n)
scf(1); clf();
plot2d3(n, x);
xlabel("n"); ylabel("x(n)"); title("Tín hiệu gốc x(n)"); xgrid();
xs2png(1, "b24_original.png");

// 2. Tính thành phần chẵn: x_e(n) = [x(n) + x(-n)] / 2
xe = zeros(1, length(n));
for i = 1:length(n)
    xe(i) = (x(i) + x(length(n) - i + 1)) / 2;
end

scf(2); clf();
plot2d3(n, xe);
xlabel("n"); ylabel("x_e(n)"); title("Thành phần chẵn x_e(n)"); xgrid();
xs2png(2, "b24_even.png");

// 3. Tính thành phần lẻ: x_o(n) = [x(n) - x(-n)] / 2
xo = zeros(1, length(n));
for i = 1:length(n)
    xo(i) = (x(i) - x(length(n) - i + 1)) / 2;
end

scf(3); clf();
plot2d3(n, xo);
xlabel("n"); ylabel("x_o(n)"); title("Thành phần lẻ x_o(n)"); xgrid();
xs2png(3, "b24_odd.png");

// In kết quả ra màn hình Console
disp("=== KẾT QUẢ BÀI 2.4 ===");
disp("Chỉ số thời gian n:"); disp(n);
disp("Tín hiệu x(n):"); disp(x);
disp("Thành phần chẵn x_e(n):"); disp(xe);
disp("Thành phần lẻ x_o(n):"); disp(xo);
