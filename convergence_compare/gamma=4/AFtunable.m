function y=AFtunable(E)

r=0.5;
y= sign(E).*( (abs(E)).^r+abs(E)+(abs(E)).^(1/r));
    