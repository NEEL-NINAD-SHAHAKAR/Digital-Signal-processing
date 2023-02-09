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
subplot(611);
stem(y, 'r');
subplot(612);
stem(x, 'g');
Y = (fft(y));
subplot(613);
plot(abs(Y));

F = [ones(1,50)];
Out =abs(F.*Y);
subplot(614);
plot(Out);
Out1 = [Out, zeros(1,450)];
ReSig = ifft(Out1);
subplot(615);

plot(real(ReSig));
%plot(x);
subplot(616);
plot(imag(ReSig));
%plot();
%subplot(313);
%plot(fftshift(y,500));