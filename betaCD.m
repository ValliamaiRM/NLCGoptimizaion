function betaCD = betaCD(g,x,xnew,d0)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
%betaCD=-(norm(g(xnew)))^2/(d0'*g(x));
betaCD=(g(xnew)'*g(xnew))/(g(x)'*g(x));
end