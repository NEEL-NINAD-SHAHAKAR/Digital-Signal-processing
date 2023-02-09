clear all ;
close all;


fc = 50;
fs = 200;
Ts =1/fs;
t = [1: 1: 99];

x = cos(2*pi*fc*t*Ts);
%subplot(331);
%plot(x);
y1 = x.*hamming(99)';
y2 = x.*hanning(99)';
y3 = x.*blackman(99)';
p = abs(fft(x, 1000));
z1 = abs(fft(y1, 1000));
z2 = abs(fft(y2, 1000));
z3 = abs(fft(y3, 1000));

b1 = 20*log10(z1/z1(250));
b2 = 20*log10(z2/z2(250));
p1 = 20*log10(p/p(250));
%b3 = 20*log10(z3);
%a = [ones(1, 50),zeros(1,50)];

%b = abs(fftshift(fft(a)));
%subplot(332);
%plot(y1);
%subplot(333);
%plot(y2);
%subplot(334);
%plot(y3);
%subplot(335);
%plot(z1);
%subplot(336);
%plot(z2);
%subplot(337);
%plot(z3);
hold on;
%subplot(338);
%plot(z1);
plot(b1, 'r');
plot(b2, 'g');
plot(p1, 'b');
hold off