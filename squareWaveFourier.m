function [ak,k] = squareWaveFourier(T1,T,N)
k = -N:1:N; %bilið sem við reiknum yfir
w=(2*pi)/T;
i = 0; %notað til að telja ak stök
for counter = k
    i=i+1;
    if counter == 0;
        ak(i) = (2*T1) / T; %a_0 = (2*T1) / T, núllgildi
    else
        ak(i) = sin(w*counter*T1)/(counter*pi); %öll gildi þ.a. i er ekki == 0
    end
end
end

