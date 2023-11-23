function betaLS = betaLS(g,x,xnew,d0)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
betaLS=-g(xnew)'*(g(xnew)-g(x))/(d0'*g(x));
end