%% Reikniverkefni 2
% Lidur 1.2 Prófun
clear all; close all; clc;

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

%pause(3);

% Mynd 2: box signal:
figure
stem(n,x2);
grid on
xlabel('time $n$','interpreter','latex');
ylabel('amplitude $x[n]$','interpreter','latex');
title('Box Signal','interpreter','latex');
axis([0 4 0 1.25]);

%pause(3);

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

%pause(6);

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

%pause(6);

%% Lidur 2.2
clear all;close all;clc;
SWF = squareWaveFourier(pi/10, 2*pi, 20);
tt = -(4*(pi/10))/2:0.001:(4*(pi/10))/2;
T1 = pi/10;
T = 4*T1;

SWFone = squareWaveFourier(T1, T, 20);
SWFtwo = squareWaveFourier(T1, 2*T, 30);
SWFthree = squareWaveFourier(T1, 4*T, 40);
SWFfour = squareWaveFourier(T1, 8*T, 50);
eTwoOne = approximation(T1, T, 1);
eTwoTwo = approximation(T1, T, 3);
eTwoThree = approximation(T1, T, 7);
eTwoFour = approximation(T1, T, 19);
eTwoFive = approximation(T1, T, 79);

% Mynd fyrir square wave fourier
figure

subplot(2,2,1);
bar(SWFone, 0.1);
hold on
plot(SWFone, '.');
grid on
title('Square Wave Fourier ($T_1 = \frac{\pi}{10}$, $T=4T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x(t)$', 'Interpreter', 'Latex');
l = legend('$N=20$');
set(l,'Interpreter', 'Latex');

subplot(2,2,2);
bar(SWFtwo, 0.1);
hold on
plot(SWFtwo, '.');
grid on
title('Square Wave Fourier ($T_1 = \frac{\pi}{10}$, $T=8T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x(t)$', 'Interpreter', 'Latex');
l = legend('$N=30$');
set(l,'Interpreter', 'Latex');

subplot(2,2,3);
bar(SWFthree, 0.1);
hold on
plot(SWFthree, '.');
grid on
title('Square Wave Fourier ($T_1 = \frac{\pi}{10}$, $T=16T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x(t)$', 'Interpreter', 'Latex');
l = legend('$N=40$');
set(l,'Interpreter', 'Latex');

subplot(2,2,4);
bar(SWFfour, 0.1);
hold on
plot(SWFfour, '.');
grid on
title('Square Wave Fourier ($T_1 = \frac{\pi}{10}$, $T=32T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x(t)$', 'Interpreter', 'Latex');
l = legend('$N=50$');
set(l,'Interpreter', 'Latex');

%pause(6);

%figure for the approximation og the boxsignal
figure

subplot(2,3,1);
plot(tt, eTwoOne);
grid on
title('Finite series approximation ($T_1 = \frac{\pi}{10}$, $T=4T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x_N(t)$', 'Interpreter', 'Latex');
hold on
plot(tt, rectpuls(tt, T1*2));
l = legend('$N=1$');
set(l,'Interpreter', 'Latex');

subplot(2,3,2);
plot(tt, real(eTwoTwo));
grid on
title('Finite series approximation ($T_1 = \frac{\pi}{10}$, $T=4T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x_N(t)$', 'Interpreter', 'Latex');
hold on
plot(tt, rectpuls(tt, T1*2));
l = legend('$N=3$');
set(l,'Interpreter', 'Latex');

subplot(2,3,3);
plot(tt, real(eTwoThree));
grid on
title('Finite series approximation ($T_1 = \frac{\pi}{10}$, $T=4T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x_N(t)$', 'Interpreter', 'Latex');
hold on
plot(tt, rectpuls(tt, T1*2));
l = legend('$N=7$');
set(l,'Interpreter', 'Latex');

subplot(2,3,4);
plot(tt, real(eTwoFour));
grid on
title('Finite series approximation ($T_1 = \frac{\pi}{10}$, $T=4T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x_N(t)$', 'Interpreter', 'Latex');
hold on
plot(tt, rectpuls(tt, T1*2));
l = legend('$N=19$');
set(l,'Interpreter', 'Latex');

subplot(2,3,5);
plot(tt, real(eTwoFive));
grid on
title('Finite series approximation ($T_1 = \frac{\pi}{10}$, $T=4T_1$)', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x_N(t)$', 'Interpreter', 'Latex');
hold on
plot(tt, rectpuls(tt, T1*2));
l = legend('$N=79$');
set(l,'Interpreter', 'Latex');

subplot(2,3,6);
plot(tt, rectpuls(tt, T1*2),'r');
grid on
title('Boxsignal', 'Interpreter', 'Latex');
xlabel('$k$', 'Interpreter', 'Latex');
ylabel('$x(t)$', 'Interpreter', 'Latex');
axis([-1 1 -0.2 1.2]);

%% Lidur 2.3
%The signal that matlab yields is imaginary but the imaginary parts of the
%values can be disregarded as approximation errors due to their extremely low values. 
%So the signal it self is real. 

%% Lidur 2.4
T1 = pi/10;
T = 4*T1;
N = 10:10:1000;
tt = -(4*(pi/10))/2:0.001:(4*(pi/10))/2;

xt = rectpuls(tt, T1*2);
counter = 1;
for i = 10:30:1000 %Hoppuðum um 30 stök í stað 10
    xNt = approximation(T1, T, i);
    eNt = xt - xNt;
    result(counter) = trapz(tt,power(abs(eNt), 2)); %Heildum eNt
    counter = counter + 1;
end

figure
plot(result);
grid on
title('Error Function', 'Interpreter', 'Latex');
xlabel('$N$', 'Interpreter', 'Latex');
ylabel('$E_N$', 'Interpreter', 'Latex');
