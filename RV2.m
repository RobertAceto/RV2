%% Reikniverkefni 2 liður 1.2:
% 1.2 Prófun
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

%% Lidur 2.2
SWF = squareWaveFourier(pi/10, 2*pi, 20);
T1 = pi/10;
T = 4*T1;

SWFone = squareWaveFourier(T1, T, 20);
SWFtwo = squareWaveFourier(T1, 2*T, 20);
SWFthree = squareWaveFourier(T1, 4*T, 20);
SWFfour = squareWaveFourier(T1, 8*T, 20);
eTwoOne = exampleTwo(T1, T, 1);
eTwoTwo = exampleTwo(T1, T, 3);
eTwoThree = exampleTwo(T1, T, 7);
eTwoFour = exampleTwo(T1, T, 19);
eTwoFive = exampleTwo(T1, T, 79);


subplot(3,4,1);
bar(SWFone, 0.1);
hold on
plot(SWFone, '.');
grid on
title('Square Wave Fourier (T1 = pi/10, T=4*T1, N=20)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x(t)', 'Interpreter', 'Latex');

subplot(3,4,2);
bar(SWFtwo, 0.1);
hold on
plot(SWFtwo, '.');
grid on
title('Square Wave Fourier (T1 = pi/10, T=8*T1, N=20)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x(t)', 'Interpreter', 'Latex');

subplot(3,4,3);
bar(SWFthree, 0.1);
hold on
plot(SWFthree, '.');
grid on
title('Square Wave Fourier (T1 = pi/10, T=16*T1, N=20)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x(t)', 'Interpreter', 'Latex');

subplot(3,4,4);
bar(SWFfour, 0.1);
hold on
plot(SWFfour, '.');
grid on
title('Square Wave Fourier (T1 = pi/10, T=32*T1, N=20)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x(t)', 'Interpreter', 'Latex');

tt = -(4*(pi/10))/2:0.001:(4*(pi/10))/2;

subplot(3,4,5);
plot(tt, eTwoOne);
grid on
title('Finite series approximation (T1 = pi/10, T=4*T1, N=1)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x_N(t)', 'Interpreter', 'Latex');

subplot(3,4,6);
plot(tt, eTwoTwo);
grid on
title('Finite series approximation (T1 = pi/10, T=4*T1, N=3)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x_N(t)', 'Interpreter', 'Latex');

subplot(3,4,7);
plot(tt, eTwoThree);
grid on
title('Finite series approximation (T1 = pi/10, T=4*T1, N=7)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x_N(t)', 'Interpreter', 'Latex');

subplot(3,4,9);
plot(tt, eTwoFour);
grid on
title('Finite series approximation (T1 = pi/10, T=4*T1, N=19)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x_N(t)', 'Interpreter', 'Latex');

subplot(3,4,10);

plot(tt, eTwoFive);
grid on
title('Finite series approximation (T1 = pi/10, T=4*T1, N=79)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x_N(t)', 'Interpreter', 'Latex');

subplot(3,4,10);
plot(tt, eTwoFive);
grid on
title('Finite series approximation (T1 = pi/10, T=4*T1, N=79)', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x_N(t)', 'Interpreter', 'Latex');

subplot(3,4,11);
plot(tt, rectpuls(tt, T1*2));
axis([-1 1 -0.5 1.5]);
grid on
title('Sampled aperiodic rectangle', 'Interpreter', 'Latex');
xlabel('k', 'Interpreter', 'Latex');
ylabel('x(t)', 'Interpreter', 'Latex');

%% Lidur 2.4
N = 10:10:1000;
t = -T/2:0,001:T/2;
dk = squareWaveFourier(T1, T, 20);
y = square(x);

for t=1:length(t)
    e_N(i) = y(i)-dk(i);
end

E_N = trapz(N,(abs(e_N)).^2);

plot(x,E_N)
