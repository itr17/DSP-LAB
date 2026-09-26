//=====================================================
//Minh họa Aliasing - Bài 1.7 (câu b và c)
//Fs = 8 kHz
//5 kHz → alias thành 3 kHz
//9 kHz → alias thành 1 kHz
//=====================================================
clear; clc; clf;

//tham số
Fs = 8000;
t  = 0 : 1/Fs : 0.008;

//tín hiệu gốc (lấy mẫu 8 kHz)
x5 = cos(2*%pi*5000*t);
x9 = cos(2*%pi*9000*t);

//tín hiệu alias lý thuyết
x3 = cos(2*%pi*3000*t);
x1 = cos(2*%pi*1000*t);

//vẽ hình
//câu (b): 5 kHz vs 3 kHz
subplot(2,2,1)
plot(t*1000, x5, 'b-o')
title("(b) Tín hiệu 5 kHz lấy mẫu với Fs = 8 kHz")
xlabel("Thời gian (ms) | Fs = 8 kHz")
ylabel("Biên độ")
xgrid

subplot(2,2,2)
plot(t*1000, x5, 'b-o', t*1000, x3, 'r--')
title("So sánh: 5 kHz (xanh) vs 3 kHz (đỏ) - Fs = 8 kHz")
xlabel("Thời gian (ms) | Fs = 8 kHz")
legend("5 kHz", "3 kHz (alias)")
xgrid

//câu (c): 9 kHz vs 1 kHz
subplot(2,2,3)
plot(t*1000, x9, 'b-o')
title("(c) Tín hiệu 9 kHz lấy mẫu với Fs = 8 kHz")
xlabel("Thời gian (ms) | Fs = 8 kHz")
ylabel("Biên độ")
xgrid

subplot(2,2,4)
plot(t*1000, x9, 'b-o', t*1000, x1, 'r--')
title("So sánh: 9 kHz (xanh) vs 1 kHz (đỏ) - Fs = 8 kHz")
xlabel("Thời gian (ms) | Fs = 8 kHz")
legend("9 kHz", "1 kHz (alias)")
xgrid
