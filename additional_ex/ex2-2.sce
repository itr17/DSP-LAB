// BÀI 2.2: CÁC PHÉP BIẾN ĐỔI TÍN HIỆU RỜI RẠC
clc; clear;

// Tín hiệu gốc x(n) xác định trên đoạn [0, 4]
function y = xval(k)
    if k >= 0 & k <= 2 then y = 1;
    elseif k == 3 | k == 4 then y = 1/2;
    else y = 0;
    end
endfunction

// (a) Dịch trễ 2 mẫu: y(n) = x(n-2)
n_a = -2:7; y_a = zeros(1, length(n_a));
for i = 1:length(n_a) y_a(i) = xval(n_a(i)-2); end
scf(1); clf(); plot2d3(n_a, y_a);
xlabel("n"); ylabel("y(n)"); title("(a) x(n-2)"); xgrid();
xs2png(1, "b22_a.png");

// (b) Lật rồi trễ 4 mẫu: y(n) = x(4-n)
n_b = -2:7; y_b = zeros(1, length(n_b));
for i = 1:length(n_b) y_b(i) = xval(4-n_b(i)); end
scf(2); clf(); plot2d3(n_b, y_b);
xlabel("n"); ylabel("y(n)"); title("(b) x(4-n)"); xgrid();
xs2png(2, "b22_b.png");

// (c) Dịch sớm 2 mẫu: y(n) = x(n+2)
n_c = -5:4; y_c = zeros(1, length(n_c));
for i = 1:length(n_c) y_c(i) = xval(n_c(i)+2); end
scf(3); clf(); plot2d3(n_c, y_c);
xlabel("n"); ylabel("y(n)"); title("(c) x(n+2)"); xgrid();
xs2png(3, "b22_c.png");

// (d) Nhân với dãy bước lật: y(n) = x(n)*u(2-n)
n_d = -2:6; y_d = zeros(1, length(n_d));
for i = 1:length(n_d)
    u = 0; if n_d(i) <= 2 then u = 1; end
    y_d(i) = xval(n_d(i)) * u;
end
scf(4); clf(); plot2d3(n_d, y_d);
xlabel("n"); ylabel("y(n)"); title("(d) x(n)u(2-n)"); xgrid();
xs2png(4, "b22_d.png");

// (e) Lấy mẫu tại n=3: y(n) = x(n-1)*delta(n-3)
n_e = -1:6; y_e = zeros(1, length(n_e));
for i = 1:length(n_e)
    d = 0; if n_e(i) == 3 then d = 1; end
    y_e(i) = xval(n_e(i)-1) * d;
end
scf(5); clf(); plot2d3(n_e, y_e);
xlabel("n"); ylabel("y(n)"); title("(e) x(n-1)delta(n-3)"); xgrid();
xs2png(5, "b22_e.png");

// (f) Nén/Biến đổi phi tuyến chỉ số: y(n) = x(n^2)
n_f = -4:4; y_f = zeros(1, length(n_f));
for i = 1:length(n_f) y_f(i) = xval(n_f(i)^2); end
scf(6); clf(); plot2d3(n_f, y_f);
xlabel("n"); ylabel("y(n)"); title("(f) x(n^2)"); xgrid();
xs2png(6, "b22_f.png");

// (g) Thành phần chẵn: x_e(n) = [x(n) + x(-n)]/2
n_g = -5:5; y_g = zeros(1, length(n_g));
for i = 1:length(n_g) y_g(i) = (xval(n_g(i)) + xval(-n_g(i))) / 2; end
scf(7); clf(); plot2d3(n_g, y_g);
xlabel("n"); ylabel("x_e(n)"); title("(g) Thành phần chẵn x_e(n)"); xgrid();
xs2png(7, "b22_g.png");

// (h) Thành phần lẻ: x_o(n) = [x(n) - x(-n)]/2
n_h = -5:5; y_h = zeros(1, length(n_h));
for i = 1:length(n_h) y_h(i) = (xval(n_h(i)) - xval(-n_h(i))) / 2; end
scf(8); clf(); plot2d3(n_h, y_h);
xlabel("n"); ylabel("x_o(n)"); title("(h) Thành phần lẻ x_o(n)"); xgrid();
xs2png(8, "b22_h.png");

disp("Đã hoàn thành Bài 2.2!");
