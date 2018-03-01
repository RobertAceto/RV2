clear
clc

T1 = pi/10;
T = 4*T1;
N = 10:10:1000;
tt = -(4*(pi/10))/2:0.001:(4*(pi/10))/2;

xt = rectpuls(tt, T1*2);
counter = 1;
for i = 10:10:1000
    xNt = exampleTwo(T1, T, i);
    eNt = xt - xNt;
    
    result(counter) = trapz(power(abs(eNt), 2))*0.001;
    counter = counter + 1;
end

plot(result);