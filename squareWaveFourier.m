function [ak,k] = squareWaveFourier(T1,T,N)
k = -N:1:N
w=(2*pi)/T;
i = 0;
for counter = k
    i=i+1;
    if counter == 0;
        ak(i) = (2*T1) / T; %a_0 = (2*T1) / T;
    else
        ak(i) = sin(w*counter*T1)/(counter*pi);
    end
end
end

