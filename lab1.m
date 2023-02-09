clear all ;
close all;


fc = 50;
fs = 200;
Ts =1/fs;
t = [1: 1: 99];

x = cos(2*pi*fc*t*Ts);
%plot(x);
y = abs(fft(x));
z = abs(fft(x,500));
z2 = abs(fft(x,120));
A = trapz(t,y);
a = [ones(1, 50),zeros(1,50)];

b = abs(fftshift(fft(a)));
%print A;
subplot(321);
plot(y);
subplot(322);
plot(z);
subplot(323)
plot(x);
subplot(324);
plot(z2);
subplot(325);
plot(a);
subplot(326);
plot(b);