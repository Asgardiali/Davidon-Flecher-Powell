function x=shermanMorrison(F, x0, tol, kmax)

y0=F(x0);
A=[2 2 2; 2 0 2; 2 2 -4];
B=inv(A);
xn=x0-B*y0;
yn=F(xn);
out=[0 x0'];
out=[0.5 xn'];

for k=1:kmax
    s=xn-x0;
    d=yn-y0;
    if norm(s)<tol
        disp('Sherman-Morrison method has converged');
        break;
    end
    Bn=B+(s-B*d)*s'*B/(s'*B*d);
    x3=xn-Bn*yn;
    out=[k x3'];
    disp(out)
    x0=xn;
    xn=x3;
    y0=yn;
    yn=F(x3);
    xr=x3;
end

x=xr;