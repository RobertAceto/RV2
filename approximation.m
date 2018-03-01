function [result] = approximation(T1, T, N)
SWF = squareWaveFourier(T1, T, N);
%result = zeros(length(-T/2:0.001:T/2));
counter = 1;
temp = 0;
k = -N:N;
for x = -T/2:0.001:T/2 %Ytri loopa: keyrir yfir lotuna T
    for y = 1:(N*2+1) %Innri loopa: summar yfir öll stök í k
        temp = temp + (SWF(y) * exp((1i)*k(y)*((2*pi)/T)*x)); %'1i' stendur fyrir imaginary
    end
    result(counter) = temp;
    counter = counter + 1;
    temp = 0;
end

end
