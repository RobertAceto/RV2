<<<<<<< HEAD:exampleTwo.m
function y = exampleTwo(T1, T, N)
=======
function y = exampleTwoTwo(T1, T, N)

>>>>>>> 2d17486724dc1bb46c7fc03a5394609e12e09f9c:exampleTwoTwo.m
SWF = squareWaveFourier(T1, T, N);

counter = 1;
temp = 0;
k = -N:N;
for x = -T/2:0.001:T/2
    for y = 1:(N*2+1)
        temp = temp + (SWF(y) * exp((1i)*k(y)*((2*pi)/T)*x));
    end
    
    result(counter) = temp;
    counter = counter + 1;
    temp = 0;
end

y = result;
