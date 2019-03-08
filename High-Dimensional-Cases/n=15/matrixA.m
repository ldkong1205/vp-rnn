function M=matrixA(t,x)
% M=[0.5*cos(t)+2 sin(t); sin(t) 0.5*sin(t)+2];
%construct Toeplitz matrix
n=15;

a(1,1)=5+sin(t);

for j=2:n
    a(1,j)=cos(t)/(j-1);
end  


% a(1,1)=1;
% 
% for j=2:n
%     a(1,j)=j;
% end  


M=ToeplitzMatrix(a,n);

% for i=1:n
%     M(i,i:n)=a(1:n-i+1);
% end
% 
% for i=1:n-1
%     for j=2:n-i+1
%         M(n-i+1,n-j+2-i)=a(j);
%     end
% end