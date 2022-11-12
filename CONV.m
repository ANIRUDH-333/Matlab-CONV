function a = CONV1(x,y,type)
format short g
m = length(x);
n = length(y);
% Making the length of the vectors same for ease of computation
X=[x,zeros(1,n)]; 
Y=[y,zeros(1,m)]; 
% Convolution in time domain = Multiplication in frequency domain
final = real(ifft(fft(Y).*fft(X)));
final = final(1:end-1);
% f -> "full" in the actual function
if type == 'f'
a = final(1:m+n-1);
end
% s -> "same" in the actual function
if type == 's'
    if m==n && rem(m,2)==0
        start = floor(m/2);
        a = final(1+start:start+m);
    elseif m==n && rem(m,2)~=0
        start = floor(m/2);
        a = final(1+start:end-start);
    else
        start = ceil((length(final)-m)/2)+1;
        a = final(start:start+m-1);
    end
end
% v -> "valid" in the actual function
if type == 'v'
    if m == n
    a = final(m);
    end
end
end

