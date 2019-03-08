function T=ToeplitzMatrix(a,n)

% T=zeros(n,n);

for i=1:n
    T(i,i:n)=a(1:n-i+1);
    for j=1:i-1
        T(i,j)=a(i-j+1);
    end
end