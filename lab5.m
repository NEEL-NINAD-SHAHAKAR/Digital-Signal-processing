clear all ;
close all;


fc = 50;
fc2 = 5000;
%fs = 200;
Tc =1/fc2;
%Ts =1/fs;
t = [1: 1: 500];

x = cos(2*pi*fc*t*Tc);
%stem(x);
y = x(1:10:end);

subplot(511);
stem(y, 'r');
subplot(512);
stem(x, 'g');
Y = fftshift(fft(y,500));
subplot(513);
plot(abs(Y));

F = [zeros(1,18),ones(1, 15),zeros(1,17)];
H = fftshift(fft(ifft(F), 500));
%out = H.* Y;
subplot(514);
plot(abs(H));
out = conv(F, y);
Output = interp1([1:1:99], out, t);
subplot(515);
plot(fftshift(real(Output)));