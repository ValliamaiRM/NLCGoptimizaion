function alpha = alphavalue(f,g,d,x0,c1,c2,alp0,amax,mu)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
j=0;
while((f(x0+alp0*d')>f(x0)+c1*alp0*d'*g(x0))&&(j<amax)&& ( abs(d'*g(x0+alp0*d'))>-c2*(d'*g(x0)) ))
    alp0=alp0*mu;
    j=j+1;
end
alpha=alp0;
end