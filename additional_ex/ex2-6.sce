// BÀI 2.6: KHẢO SÁT TÍNH BẤT BIẾN THEO THỜI GIAN (TIME-INVARIANCE)
clc; clear;

// Tín hiệu vào x(n): Xung chữ nhật độ dài 4 (n thuộc [0, 3])
function y = xval(k)
    if k >= 0 & k <= 3 then y = 1;
    else y = 0;
    end
endfunction

// (b) Hệ thống nén/dãn thời gian: y(n) = x(n^2)
n = -4:6;
y_shift_b = zeros(1, length(n)); // Trễ ngõ ra: y(n-2) = x((n-2)^2)
y_sys_b   = zeros(1, length(n)); // Trễ ngõ vào: T[x(n-2)] = x(n^2 - 2)

for i = 1:length(n)
    y_shift_b(i) = xval((n(i)-2)^2);
    y_sys_b(i)   = xval(n(i)^2 - 2);
end

scf(1); clf();
subplot(2,1,1); plot2d3(n, y_shift_b);
xlabel("n"); ylabel("y(n-2)"); title("Hệ thống (b): y(n-2)"); xgrid();
subplot(2,1,2); plot2d3(n, y_sys_b);
xlabel("n"); ylabel("y_2(n)"); title("Hệ thống (b): T[x(n-2)] -> Biến đổi theo thời gian"); xgrid();
xs2png(1, "b26_b_compare.png");

// (c) Hệ thống lấy sai phân: y(n) = x(n) - x(n-1)
n_c = -2:8;
y_shift_c = zeros(1, length(n_c)); // Trễ ngõ ra: y(n-2) = x(n-2) - x(n-3)
y_sys_c   = zeros(1, length(n_c)); // Trễ ngõ vào: T[x(n-2)] = x(n-2) - x(n-3)

for i = 1:length(n_c)
    y_shift_c(i) = xval(n_c(i)-2) - xval(n_c(i)-3);
    y_sys_c(i)   = xval(n_c(i)-2) - xval(n_c(i)-3);
end

scf(2); clf();
subplot(2,1,1); plot2d3(n_c, y_shift_c);
xlabel("n"); ylabel("y(n-2)"); title("Hệ thống (c): y(n-2)"); xgrid();
subplot(2,1,2); plot2d3(n_c, y_sys_c);
xlabel("n"); ylabel("y_2(n)"); title("Hệ thống (c): T[x(n-2)] -> Bất biến theo thời gian"); xgrid();
xs2png(2, "b26_c_compare.png");

// (d) Hệ thống nhân hệ số phụ thuộc thời gian: y(n) = n * x(n)
n_d = -2:7;
y_shift_d = zeros(1, length(n_d)); // Trễ ngõ ra: y(n-2) = (n-2)*x(n-2)
y_sys_d   = zeros(1, length(n_d)); // Trễ ngõ vào: T[x(n-2)] = n*x(n-2)

for i = 1:length(n_d)
    y_shift_d(i) = (n_d(i)-2) * xval(n_d(i)-2);
    y_sys_d(i)   = n_d(i) * xval(n_d(i)-2);
end

scf(3); clf();
subplot(2,1,1); plot2d3(n_d, y_shift_d);
xlabel("n"); ylabel("y(n-2)"); title("Hệ thống (d): y(n-2)"); xgrid();
subplot(2,1,2); plot2d3(n_d, y_sys_d);
xlabel("n"); ylabel("y_2(n)"); title("Hệ thống (d): T[x(n-2)] -> Biến đổi theo thời gian"); xgrid();
xs2png(3, "b26_d_compare.png");

// In kết quả đánh giá hệ thống ra Console
disp("=== KẾT LUẬN BÀI 2.6 ===");
disp("Hệ thống (b) y(n)=x(n^2): Biến đổi theo thời gian (Time-Varying)");
disp("Hệ thống (c) y(n)=x(n)-x(n-1): Bất biến theo thời gian (Time-Invariant)");
disp("Hệ thống (d) y(n)=n*x(n): Biến đổi theo thời gian (Time-Varying)");
