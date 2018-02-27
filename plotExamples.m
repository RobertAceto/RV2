SWF = squareWaveFourier(pi/10, 2*pi, 20);
eTwo = exampleTwo(pi/10, 2*pi, 300);

subplot(2,1,1);
bar(SWF, 0.1);
hold on
plot(SWF, '.');
grid on
title('Square Wave Fourier', 'Interpreter', 'Latex');
xlabel('sec', 'Interpreter', 'Latex');
ylabel('Noise amplitude', 'Interpreter', 'Latex');

subplot(2,1,2);
bar(eTwo, 0.1);
hold on
plot(eTwo, '.');
grid on
title('Example Two', 'Interpreter', 'Latex');
xlabel('sec', 'Interpreter', 'Latex');
ylabel('Noise amplitude', 'Interpreter', 'Latex');