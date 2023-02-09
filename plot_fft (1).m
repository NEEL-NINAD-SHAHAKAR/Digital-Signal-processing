len=50;
n=(0:1:len);
fc=100;
Ts=0.004;
fsmin=200;
x=cos(2*pi*fc*Ts*n);
plot(abs(fft(x,4*len)));
