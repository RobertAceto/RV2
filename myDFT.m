function [ak] = myDFT(x)
N=length(x);
ak=zeros(1,N);
% Sk�r�um teljara 0
k=0;
n=0;

for i=1:N %Ytri loopa: �kvar�ar st�k � a_k
    for m=1:N %Innri loopa: framkv�mir summu
        ak(i)=ak(i)+x(m)*exp(-j*2*pi*(k/N)*n);
        n=n+1;
    end
    k=k+1;
end

end

