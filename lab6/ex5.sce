clear; clc; close;
w = linspace(-%pi, %pi, 1000);
H = 1 + exp(-%i * w);
X = 1 ./ (1 - 0.5 * exp(-%i * w));
Y = X .* H;

mag_Y = abs(Y);
phase_Y = atan(imag(Y), real(Y));

scf(1);

// 1. Phổ biên độ
subplot(2, 1, 1);
plot(w, mag_Y, 'b', 'LineWidth', 2);
title('Pho bien do cua ngo ra y(n)');
xlabel('Tan so goc w (rad/mau)');
ylabel('Bien do |Y(w)|');
xgrid();

// 2. Phổ pha
subplot(2, 1, 2);
plot(w, phase_Y, 'r', 'LineWidth', 2);
title('Pho pha cua ngo ra y(n)');
xlabel('Tan so goc w (rad/mau)');
ylabel('Goc pha (rad)');
xgrid();
