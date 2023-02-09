clc;
close all;
 
N=53;

fp=15;
fs = 40;
delta_f=5;

n=(1:1:N);

fc=fp+(delta_f/2);

w = [ones(1,15),zeros(1, N-15)];
%w2 = fft(w);
hD= 2*fc*sinc(2*pi*fc*n/fs);
h2 = conv(w,hD);
h3 = abs(fft(h2));
hold on;
plot(w);
%plot(hD);
plot(h2);
plot(fftshift(h3));
%plot(fftshift(abs(w2)));