clc;
clear all;


L=64;
t=[0:1:64];

y1 = rectwin(L);
% plot(y1)
% title('Combine Windows')
% hold on

y2 = hann(L);
% plot(y2)

y3 = hamming(L);
% plot(y3)
% 
% hold off


z1 = fft(y1,2*L);
plot(z1)
title('Combine Windows')

hold on

z2 = fft(y2,2*L);
plot(z2)

z3 = fft(y3,2*L);
plot(z3)

hold off
% 
% M = 40;
% n = -M / 2: M / 2;
% window =hamming(length(n));
% figure;
% plot (n, window);
% 
% L = length (window); 
% NFFT = 1024;
% X1 = fftshift (fft (window, NFFT) / length (window));
% Freq = (-NFFT / 2: NFFT / 2-1) / NFFT;     % Frequency vector
% 
% figure; 
% plot (Freq, X1 (1: length (Freq)) / max (X1), 'r' );
% 
% Y1 = X1 (1: length (Freq)) / max (X1);
% mag_dB =  10*log10(Y1);
% plot(Freq,mag_dB)
hold on;
wvtool(hann(L))
wvtool(hamming(L))
wvtool(blackman(L))
wvtool(rect(L))
hold off;
