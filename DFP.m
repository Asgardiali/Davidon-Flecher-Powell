function xmin=DFP(my_f,my_g,x0,tol,kmax)

x=x0';
n=length(x);
H=eye(n);
f=feval(my_f,x);
g=feval(my_g,x);

for k=1:kmax
    s=-H*g';
    f1=f;
    z=norm(s);
    if z==0
        disp('zero gradient'),xmin=x,f1,return
    end
    s=s/z;
    a1=0;    a3=1;    f3=feval(my_f,x+a3*s);
    while(f3>=f1)
        a3=a3/2;    f3=feval(my_f,x+a3*s);
        if a3<tol/2
            disp('no improvement likely'), xmin=x,f1,return
        end
    end
a2=a3/2;    f2=feval(my_f,x+a2*s);
h1=(f2-f1)/a2;  h2=(f3-f2)/(a3-a2); h3=(h2-h1)/a3;
a0=0.5*(a2-h1/h3);  f0=feval(my_f,x+a0*s);
if f0<f3, a=a0;
else a=a3;
end
d=a*s;  x_new=x+d;
f_new=feval(my_f,x_new); g_new=feval(my_g,x_new);
y=(g_new-g)';
A=(d*d')/(d'*y);
B=(H*y)*(H*y)'/(y'*H*y);
H_new=H+A-B;
%disp([k x_new' f_new])
if abs(d)<tol
    disp('converged'),break
end
H=H_new;    f=f_new;
g=g_new;    x=x_new;
end
xmin=x












