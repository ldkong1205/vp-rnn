function m=errorm(t,n)

for i=1:n
    m(i,1)=cos(4*t-(i-1)*pi/2);
end