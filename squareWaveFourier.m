function [ak,k] = squareWaveFourier(T1,T,N)
k = -N:1:N; %bili� sem vi� reiknum yfir
w=(2*pi)/T;
i = 0; %nota� til a� telja ak st�k
for counter = k
    i=i+1;
    if counter == 0;
        ak(i) = (2*T1) / T; %a_0 = (2*T1) / T, n�llgildi
    else
        ak(i) = sin(w*counter*T1)/(counter*pi); %�ll gildi �.a. i er ekki == 0
    end
end
end

