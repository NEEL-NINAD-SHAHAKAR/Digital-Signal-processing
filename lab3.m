clear all ;
close all;


fc1 = 50;
fc2 = 65.5;
fc3 = 68;
fs = 150;
Ts =1/fs;
t = [1: 1: 99];

x1 = 1000*cos(2*pi*fc1*t*Ts);
x2 = 10*cos(2*pi*fc2*t*Ts);
x3 = 10*cos(2*pi*fc3*t*Ts);
x = x1+x2 + x3 + 10*rand(1, 99);
%subplot(331);
%plot(x);
y1 = x.*hamming(99)';
y2 = x.*hanning(99)';
y3 = x.*blackman(99)';
p = abs(fftshift(fft(x, 1000)));
z1 = abs(fftshift(fft(y1, 1000)));
z2 = abs(fftshift(fft(y2, 1000)));
z3 = abs((fft(y3, 1000)));

b1 = 20*log10(z1/z1(164));
b2 = 20*log10(z2/z2(164));
p1 = 20*log10(p/p(164));

hold on;
%plot(z1)
%plot(b1)
%plot(b2)
 L=64;
    wvtool(blackman(L))
 
    wvtool(hamming(L))
     
    wvtool(hann(L))
 
hold on;
plot(b1, 'r');
plot(b2, 'g');
plot(p1, 'b');
hold off