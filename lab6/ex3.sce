clear; clc; close;

w = linspace(-%pi, %pi, 1000);

X1 = 1 ./ (1 - 0.1 * exp(-%i * w));
mag_X1 = abs(X1);                
phase_X1 = atan(imag(X1), real(X1)); 


scf(1);
subplot(2, 1, 1);
plot(w, mag_X1, 'b', 'LineWidth', 2);
title('Phổ biên độ của x1(n)');
xlabel('Tần số góc (rad/mẫu)');
ylabel('$|X_1(e^{j\omega})|$');
xgrid();

subplot(2, 1, 2);
plot(w, phase_X1, 'r', 'LineWidth', 2);
title('Phổ pha của x1(n)');
xlabel('Tần số góc (rad/mẫu)');
ylabel('$\angle X_1(e^{j\omega}) (rad)$');
xgrid();

X2 = 1 + exp(-%i * w) + exp(-%i * 2 * w) + exp(-%i * 3 * w);
mag_X2 = abs(X2);
phase_X2 = atan(imag(X2), real(X2));


scf(2); 
subplot(2, 1, 1);
plot(w, mag_X2, 'b', 'LineWidth', 2);
title('Phổ biên độ của x2(n)');
xlabel('Tần số góc (rad/mẫu)');
ylabel('$|X_2(e^{j\omega})|$');
xgrid();

subplot(2, 1, 2);
plot(w, phase_X2, 'r', 'LineWidth', 2);
title('Phổ pha của x2(n));
xlabel('Tần số góc (rad/mẫu)');
ylabel('$\angle X_2(e^{j\omega}) (rad)$');
xgrid();
