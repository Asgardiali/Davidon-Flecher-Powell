function xmin=Steep_Descent(my_f,my_g,x0,tol,kmax)

iter=1;
x=x0;
disp('  iter        x(1)        x(2)    ');
disp([0 x0]),   k=1;

while (k<kmax)
    f1=feval(my_f,x);   g=feval(my_g,x);   z=norm(g);
    if z==0        
        disp('zero gradient'), x, f1, return
    end
    g=g/z;
    
    a1=0;    a3=1;    f3=feval(my_f,x-a3*g);
    
    while(f3>=f1)
        a3=a3/2;      f3=feval(my_f,x-a3*g);        
        if a3<tol/2
            disp('no improvement likely'), x, f1, return
            
        end
    end
    a2=a3/2;            f2=feval(my_f,x-a2*g);
    h1=(f2-f1)/a2;      h2=(f3-f2)/(a3-a2);
    h3=(h2-h1)/a3;
    a0=0.5*(a2-h1/h3);  f0=feval(my_f,x-a0*g);
    if f0<f3
        a=a0;
    else
        a=a3;
    end
    x=x-a*g;
    disp([k x(1) x(2)]), k=k+1;
end
xmin=x;

