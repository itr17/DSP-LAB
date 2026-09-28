clc;
clear;

// =====================================================
// ĐỊNH NGHĨA TÍN HIỆU GỐC x(n)
// =====================================================
//
// x(0) = x(1) = x(2) = 1
// x(3) = x(4) = 1/2
// x(n) = 0 ở các vị trí còn lại
// =====================================================

function y = xval(k)
    if k >= 0 & k <= 2 then
        y = 1;
    elseif k == 3 | k == 4 then
        y = 1/2;
    else
        y = 0;
    end
endfunction


// =====================================================
// (a) x(n-2)
// =====================================================
//
// Dịch x(n) sang phải 2 mẫu
// =====================================================

n = -3:8;
y = zeros(1, length(n));

for i = 1:length(n)
    y(i) = xval(n(i)-2);
end

scf(1);
clf();

plot2d3(n, y, style=2);

xlabel("n");
ylabel("x(n-2)");
title("(a) Tín hiệu x(n-2)");
xgrid();

xs2png(1, "b22_a.png");


// =====================================================
// (b) x(4-n)
// =====================================================
//
// Đảo tín hiệu và dịch
// =====================================================

n = -2:7;
y = zeros(1, length(n));

for i = 1:length(n)
    y(i) = xval(4-n(i));
end

scf(2);
clf();

plot2d3(n, y, style=2);

xlabel("n");
ylabel("x(4-n)");
title("(b) Tín hiệu x(4-n)");
xgrid();

xs2png(2, "b22_b.png");


// =====================================================
// (c) x(n+2)
// =====================================================
//
// Dịch x(n) sang trái 2 mẫu
// =====================================================

n = -5:5;
y = zeros(1, length(n));

for i = 1:length(n)
    y(i) = xval(n(i)+2);
end

scf(3);
clf();

plot2d3(n, y, style=2);

xlabel("n");
ylabel("x(n+2)");
title("(c) Tín hiệu x(n+2)");
xgrid();

xs2png(3, "b22_c.png");


// =====================================================
// (d) x(n)u(2-n)
// =====================================================
//
// u(2-n) = 1 khi n <= 2
// u(2-n) = 0 khi n > 2
// =====================================================

n = -3:7;
y = zeros(1, length(n));

for i = 1:length(n)

    xn = xval(n(i));

    if n(i) <= 2 then
        u = 1;
    else
        u = 0;
    end

    y(i) = xn * u;

end

scf(4);
clf();

plot2d3(n, y, style=2);

xlabel("n");
ylabel("x(n)u(2-n)");
title("(d) Tín hiệu x(n)u(2-n)");
xgrid();

xs2png(4, "b22_d.png");


// =====================================================
// (e) x(n-1)delta(n-3)
// =====================================================
//
// delta(n-3) = 1 khi n = 3
//              0 khi n != 3
//
// x(3-1) = x(2) = 1
//
// => x(n-1)delta(n-3) = delta(n-3)
// =====================================================

n = -2:7;
y = zeros(1, length(n));

for i = 1:length(n)

    if n(i) == 3 then

        delta = 1;
        y(i) = xval(n(i)-1) * delta;

    else

        y(i) = 0;

    end

end

scf(5);
clf();

plot2d3(n, y, style=5);

xlabel("n");
ylabel("x(n-1)delta(n-3)");
title("(e) Tín hiệu x(n-1)delta(n-3)");
xgrid();

xs2png(5, "b22_e.png");


// =====================================================
// (f) x(n^2)
// =====================================================
//
// Thay n bằng n^2
// =====================================================

n = -5:5;
y = zeros(1, length(n));

for i = 1:length(n)

    y(i) = xval(n(i)^2);

end

scf(6);
clf();

plot2d3(n, y, style=2);

xlabel("n");
ylabel("x(n^2)");
title("(f) Tín hiệu x(n^2)");
xgrid();

xs2png(6, "b22_f.png");


// =====================================================
// (g) PHẦN CHẴN của x(n)
//
// xe(n) = [x(n) + x(-n)] / 2
// =====================================================

n = -5:5;
y = zeros(1, length(n));

for i = 1:length(n)

    y(i) = (xval(n(i)) + xval(-n(i))) / 2;

end

scf(7);
clf();

plot2d3(n, y, style=2);

xlabel("n");
ylabel("x_e(n)");
title("(g) Phần chẵn x_e(n)");
xgrid();

xs2png(7, "b22_g.png");


// =====================================================
// (h) PHẦN LẺ của x(n)
//
// xo(n) = [x(n) - x(-n)] / 2
// =====================================================

n = -5:5;
y = zeros(1, length(n));

for i = 1:length(n)

    y(i) = (xval(n(i)) - xval(-n(i))) / 2;

end

scf(8);
clf();

plot2d3(n, y, style=5);

xlabel("n");
ylabel("x_o(n)");
title("(h) Phần lẻ x_o(n)");
xgrid();

xs2png(8, "b22_h.png");
