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
ylabel('x_N(t)', 'Interpreter', 'Latex');