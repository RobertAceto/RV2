function [ ak ] = myDFT( x )
N=length(x);
ak=zeros(1,N);
k=0;
n=0;

for i=1:N
    for m=1:N
        ak(i)=ak(i)+x(m)*exp(-j*2*pi*(k/N)*n);
        n=n+1;
    end
    k=k+1;
end

end

