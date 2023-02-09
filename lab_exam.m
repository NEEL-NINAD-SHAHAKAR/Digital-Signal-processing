clear all;
close all;

Fs = 150;
Ts=1/Fs;
t=[1:1:99];

fc1=50;
fc2=65.5;
%fc2=64;
fc3=68;

x1=1000*cos(2*pi*fc1*t*Ts);
x2=10*cos(2*pi*fc2*t*Ts);
x3=10*cos(2*pi*fc3*t*Ts);

x = x1 + x2 + x3 + rand(1,99);

%pointwise multiplication with inbuilt hamming window
y1 = x.*hamming(99)';
y2 = x.*hanning(99)';
y3 = x.*blackman(99)';

%Taking DFT's of windowed functions
p = abs(fftshift(fft(x, 1000)));
z1 = abs(fftshift(fft(y1, 1000)));
z2 = abs(fftshift(fft(y2, 1000)));
z3 = abs(fftshift(fft(y3, 1000)));

%Normalisation of FFT's for comparison with each other in logarithmic scale
b1 = 20*log10(z1/z1(168));
b2 = 20*log10(z2/z2(168));
b3 = 20*log10(z3/z3(168));
p1 = 20*log10(p/p(168));

%Plotting normalised outputs in a single window
hold on;
plot(p1, 'r');
plot(b1, 'b');
plot(b2, 'g');
plot(b3, 'm');
hold pff;

