clear; clc; close;

w = linspace(-%pi, %pi, 1000);
H = 1 ./ (1 + 0.1 * exp(-%i * w) + 0.2 * exp(-%i * 2 * w));
mag_H = abs(H);
phase_H = atan(imag(H), real(H));

scf(1);

// 1. Phổ biên độ
subplot(2, 1, 1);
plot(w, mag_H, 'b', 'LineWidth', 2);
title('Phổ biên độ của đáp ứng xung h(n)');
xlabel('Tần số góc w (rad/mẫu)');
ylabel('Biên độ |H(w)|');
xgrid();

// 2. Phổ pha
subplot(2, 1, 2);
plot(w, phase_H, 'r', 'LineWidth', 2);
title('Phổ pha của đáp ứng xung h(n)');
xlabel('Tần số góc w (rad/mẫu)');
ylabel('Góc pha (rad)');
xgrid();
