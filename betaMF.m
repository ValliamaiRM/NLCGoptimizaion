function betaMF = betaMF(g,x,xnew,d0,c1,c2)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
%if ((d0'*g(xnew))/(d0'*g(x))<=c2)
    %betaMF=0
%elseif ((d0'*g(xnew))/(d0'*g(x))>c2)
    temp=min(betaLS(g,x,xnew,d0),betaCD(g,x,xnew,d0));
    betaMF=max(0,temp);
%elseif (((d0'*g(xnew))/(d0'*(g(xnew)-g(x))))>=c1)
   % betaMF=c1*norm(g(xnew))^2/(d0'*g(x))   ;
%end
