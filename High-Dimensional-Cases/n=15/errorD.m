function D=errorD(t,n)

for i=1:n
    a(1,i)=cos(3*t+(i-1)*pi/2);
end

D=ToeplitzMatrix(a,n);