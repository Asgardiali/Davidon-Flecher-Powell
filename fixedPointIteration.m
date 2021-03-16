f=inline('(-0.1*x(1)^3)+(0.1*x(2))+0.5');
g=inline('(0.1*x(1))+(0.1*x(2)^3)+0.1');
kmax=100;
tol=0.00001;
x0=[0.6 0.6];
xmin=DFP(f,g,x0,tol,kmax)
%xmin=Steep_Descent(f,g,x0,tol,kmax)
