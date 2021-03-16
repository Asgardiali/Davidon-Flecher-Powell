function x=broy(F, x0, tol, kmax)

xn=[0.4408,0.866,0.2361];%NewtonSys(F, J, x0, tol, maxit);
x0=x0';
xn=xn';

A=[0 0 0;1 2 3;2 3 5];
iter=1;

while(iter<=kmax)
    
    s=xn-x0;
    y=feval(F,xn)-feval(F,x0);
    An=A+(y-A.*s).*s'/norm(s)^2;
    x3=xn-inv(An)*feval(F,xn);
    A=An;
    
    if s<=tol
        x=x3;
        disp('Broyden method has converged');
        return;
    else
        xold=x3;
    end
    iter=iter+1;
end
x=xr;