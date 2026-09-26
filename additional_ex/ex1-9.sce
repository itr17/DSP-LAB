clear; clc;
close();                   

T = 0.02;                  

// 1. Tín hiệu gốc mượt
fs_high = 20000;
t_high  = 0 : 1/fs_high : T;
xa_high = sin(480*%pi*t_high) + 3*sin(720*%pi*t_high);

// 2. Lấy mẫu 600 Hz
fs = 600;
Ts = 1/fs;
n  = 0 : floor(T/Ts);
t_n = n * Ts;
x_n = sin(480*%pi*t_n) + 3*sin(720*%pi*t_n);

// 3. Tái tạo sau ideal D/A: ya(t) = -2*sin(480*%pi*t)
ya = -2 * sin(480*%pi*t_high);

// Vẽ
scf(0);
clf;
subplot(3,1,1);
plot(t_high*1000, xa_high, 'b', 'LineWidth', 1.5);
title('1. Tín hiệu gốc xa(t) = sin(480πt) + 3sin(720πt)  (lấy mẫu cao 20 kHz)');
xlabel('Thời gian t (ms)');
ylabel('Biên độ xa(t)');
xgrid;

subplot(3,1,2);
plot(t_high*1000, xa_high, 'c--');
hold on;
plot(t_n*1000, x_n, 'ro-', 'MarkerSize', 4, 'LineWidth', 1.2);
title('2. Tín hiệu rời rạc x(n) = xa(nTs) với fs = 600 Hz');
xlabel('Thời gian t (ms)');
ylabel('Biên độ x(n)');
legend('xa(t) gốc (tham chiếu)', 'Mẫu tại fs = 600 Hz', 'in_upper_right');
xgrid;

subplot(3,1,3);
plot(t_high*1000, xa_high, 'c--');
hold on;
plot(t_high*1000, ya, 'r', 'LineWidth', 2);
title('3. Tín hiệu tái tạo sau D/A lý tưởng: ya(t) = -2 sin(480πt)');
xlabel('Thời gian t (ms)');
ylabel('Biên độ');
legend('xa(t) gốc (tham chiếu)', 'ya(t) sau ideal D/A', 'in_upper_right');
xgrid;
