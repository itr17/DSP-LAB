// BÀI 2.1: BIẾN ĐỔI TÍN HIỆU RỜI RẠC
clc; clear;

// Tín hiệu gốc x(n) xác định trong đoạn [-3, 3]
function y = xval(k)
    if k == -3 then y = 0;
    elseif k == -2 then y = 1/3;
    elseif k == -1 then y = 2/3;
    elseif k >= 0 & k <= 3 then y = 1;
    else y = 0;
    end
endfunction

// (a) Tín hiệu gốc x(n)
n = -4:4;
x = zeros(1, length(n));
for i = 1:length(n)
    x(i) = xval(n(i));
end

scf(1); clf();
plot2d3(n, x);
xlabel("n"); ylabel("x(n)"); title("(a) Tín hiệu gốc x(n)"); xgrid();
xs2png(1, "b21_x_n.png");

// (b.1) y1(n) = x(-n+4): Lật rồi dịch phải 4 mẫu (miền phi 0: n thuộc [1, 7])
n1 = 0:8;
y1 = zeros(1, length(n1));
for i = 1:length(n1)
    y1(i) = xval(-n1(i) + 4);
end

scf(2); clf();
plot2d3(n1, y1);
xlabel("n"); ylabel("y_1(n)"); title("(b.1) y_1(n) = x(-n+4)"); xgrid();
xs2png(2, "b21_y1.png");

// (b.2) y2(n) = x(-n-4): Dịch trễ 4 mẫu rồi lật (miền phi 0: n thuộc [-7, -1])
n2 = -8:0;
y2 = zeros(1, length(n2));
for i = 1:length(n2)
    y2(i) = xval(-n2(i) - 4);
end

scf(3); clf();
plot2d3(n2, y2);
xlabel("n"); ylabel("y_2(n)"); title("(b.2) y_2(n) = x(-n-4)"); xgrid();
xs2png(3, "b21_y2.png");

// (b.3) So sánh hai kết quả y1(n) và y2(n)
scf(4); clf();
subplot(2,1,1);
plot2d3(n1, y1);
xlabel("n"); ylabel("y_1(n)"); title("Lật rồi trễ: y_1(n) = x(-n+4)"); xgrid();

subplot(2,1,2);
plot2d3(n2, y2);
xlabel("n"); ylabel("y_2(n)"); title("Trễ rồi lật: y_2(n) = x(-n-4)"); xgrid();
xs2png(4, "b21_compare.png");

// (e) Vẽ dãy bước đơn vị u(n) và xung đơn vị delta(n)
ne = -5:5;
u = zeros(1, length(ne));
delta = zeros(1, length(ne));

for i = 1:length(ne)
    if ne(i) >= 0 then u(i) = 1; end
    if ne(i) == 0 then delta(i) = 1; end
end

scf(5); clf();
subplot(2,1,1);
plot2d3(ne, u);
xlabel("n"); ylabel("u(n)"); title("Dãy bước đơn vị u(n)"); xgrid();

subplot(2,1,2);
plot2d3(ne, delta);
xlabel("n"); ylabel("delta(n)"); title("Dãy xung đơn vị delta(n)"); xgrid();
xs2png(5, "b21_u_delta.png");

disp("Đã hoàn thành Bài 2.1!");
