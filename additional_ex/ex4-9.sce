clc;
clear;
close;

// Bai 4.9: Magnitude and Phase Spectrum

w = linspace(-%pi, %pi, 2001);

// =====================================
// Cau (a)
// x(n) = u(n) - u(n-6)
// =====================================

nA = 0:5;
xA = ones(1,6);

XA = zeros(1,length(w));

for i = 1:length(w)
    XA(i) = sum(xA .* exp(-%i*w(i)*nA));
end


// =====================================
// Cau (f)
// x(n) = 2 - n/2, |n| <= 4
// =====================================

nF = -4:4;
xF = 2 - nF/2;

XF = zeros(1,length(w));

for i = 1:length(w)
    XF(i) = sum(xF .* exp(-%i*w(i)*nF));
end


// =====================================
// Cau (g)
// x(n) = {-2,-1,0,1,2}
// =====================================

nG = -2:2;
xG = [-2,-1,0,1,2];

XG = zeros(1,length(w));

for i = 1:length(w)
    XG(i) = sum(xG .* exp(-%i*w(i)*nG));
end


// =====================================
// Tinh magnitude va phase
// =====================================

MA = abs(XA);
MF = abs(XF);
MG = abs(XG);

PA = atan(imag(XA), real(XA));
PF = atan(imag(XF), real(XF));
PG = atan(imag(XG), real(XG));

// Phase khong xac dinh tai diem pho bang 0
PA(MA < 1d-8) = %nan;
PF(MF < 1d-8) = %nan;
PG(MG < 1d-8) = %nan;


// =====================================
// Ve 6 do thi
// =====================================

scf(2);

// Cau (a)
subplot(3,2,1);
plot(w/%pi, MA);
xtitle("(a) Magnitude Spectrum", ...
       "omega/pi", "|X(e^jw)|");
xgrid();

subplot(3,2,2);
plot(w/%pi, PA);
xtitle("(a) Phase Spectrum", ...
       "omega/pi", "Phase (rad)");
xgrid();


// Cau (f)
subplot(3,2,3);
plot(w/%pi, MF);
xtitle("(f) Magnitude Spectrum", ...
       "omega/pi", "|X(e^jw)|");
xgrid();

subplot(3,2,4);
plot(w/%pi, PF);
xtitle("(f) Phase Spectrum", ...
       "omega/pi", "Phase (rad)");
xgrid();


// Cau (g)
subplot(3,2,5);
plot(w/%pi, MG);
xtitle("(g) Magnitude Spectrum", ...
       "omega/pi", "|X(e^jw)|");
xgrid();

subplot(3,2,6);
plot(w/%pi, PG);
xtitle("(g) Phase Spectrum", ...
       "omega/pi", "Phase (rad)");
xgrid();
