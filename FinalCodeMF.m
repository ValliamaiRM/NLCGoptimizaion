syms x1 x2
format short
f=(1.5-x1*(1-x2))^2 + (2.25-x1*(1-x2^2))^2 +(2.625-x1*(1-x2^3))^2;
f1=inline(f);
f2=@(x)f1(x(:,1),x(:,2));
g=gradient(f);
g1=inline(g);
g2=@(x) g1(x(:,1),x(:,2));
x0=[1 0.8];
maxiter=500;
tol=1e-6;
iter=1;
X=[];
alpha0=0.1;
c1=0.01;
c2=0.6;
amax=100;
mu=0.9;
d=-g2(x0);
if norm(d)==0
disp('change x0');
d=-g2(x0);
end
while norm(g2(x0))>tol && iter<maxiter
X=[X x0];
alpha=alphavalue(f2,g2,d,x0,c1,c2,alpha0,amax,mu);
xnew=x0+alpha*d';
beta=betaMF(g2,x0,xnew,d,c1,c2);
%beta=betaLS(g2,x0,xnew,d);
%beta=0
d=-g2(xnew)+beta*d;
x0=xnew;
iter =iter+1;
%disp(d)
%disp(beta)
end
fprintf('optimal Solution x=[%f,%f]\n',x0(1),x0(2));
fprintf('optimal value f(x)=%f\n',f2(x0));