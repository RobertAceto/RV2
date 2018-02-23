% Reikniverkefni 2 liður 1.2:
% 1.2 Prófun
clear all;
close all;
clc;

n=0:4;
x1=sin((pi/2).*n);
x2=zeros(1,5);
x2(2:4)=ones(1,3);

% Mynd 1: sinusfall:
stem(n,x1);
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('$x[n]=$ sin$(\frac{\pi}{2}n)$','interpreter','latex');
axis([0 4 -1.5 1.5]);

pause(3);

% Mynd 2: box signal:
figure
stem(n,x2);
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Box Signal','interpreter','latex');
axis([0 4 0 1.25]);

pause(3);

[X1DFT]=myDFT(x1);

[X1fft]=fft(x1);

[X2DFT]=myDFT(x2);

[X2fft]=fft(x2);

% Mynd 3: test af sinusfalli
figure

subplot(2,2,1)
stem(n,real(X1DFT))
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Real myDFT $x[n]=$ sin$(\frac{\pi}{2}n)$','interpreter','latex');

subplot(2,2,2)
stem(n,real(X1fft))
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Real fft $x[n]=$ sin$(\frac{\pi}{2}n)$','interpreter','latex');

subplot(2,2,3)
stem(n,imag(X1DFT))
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Imag myDFT $x[n]=$ sin$(\frac{\pi}{2}n)$','interpreter','latex');

subplot(2,2,4)
stem(n,imag(X1fft))
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Imag fft $x[n]=$ sin$(\frac{\pi}{2}n)$','interpreter','latex');

pause(3);

% Mynd 4: test af boxsignali
figure

subplot(2,2,1)
stem(n,real(X2DFT))
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Real DFT Box Signal','interpreter','latex');

subplot(2,2,2)
stem(n,real(X2fft))
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Real fft Box Signal','interpreter','latex');

subplot(2,2,3)
stem(n,imag(X2DFT))
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Imag DFT Box Signal','interpreter','latex');

subplot(2,2,4)
stem(n,imag(X2fft))
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Imag fft Box Signal','interpreter','latex');
