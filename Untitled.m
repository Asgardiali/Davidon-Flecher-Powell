
d1=2;
d2=5;
x1=1;
y1=3;

% f1=inline('[(5*cos(x(1)))+(6*cos(x(1)+x(2)))-5;(5*sin(x(1)))-4+(6*sin(x(1)+x(2)))]');
% g1=inline('[(- 6*sin(x(1)+x(2)))-(5*sin(x(1))),(5*cos(x(1)))+(6*cos(x(1)+x(2)));-6*sin(x(1)+x(2)),6*cos(x(1)+x(2))]');

s1='[(';
s2=num2str(d1);
s3='*cos(x(1)))+(';
s4=num2str(d2);
s5='*cos(x(1)+x(2)))-';
s6=num2str(x1);
s7=';(';
% s2
s8=num2str(d1);
s9='*sin(x(1)))-';
s10=num2str(y1);
s11='+(';
% s4
s12='*sin(x(1)+x(2)))]';

str=strcat(s1,s2,s3,s4,s5,s6,s7,s2,s8,s9,s10,s11,s4,s12);

f1=inline(str);

s1='[(-';
s2=num2str(d2);
s3='*sin(x(1)+x(2)))-(';
s4=num2str(d1);
s5='*sin(x(1))),(';
% s4
s6='*cos(x(1)))+(';
% s2
s7='*cos(x(1)+x(2)));-';
% s2
s8='*sin(x(1)+x(2)),';
% s2
s9='*cos(x(1)+x(2))]';

str1=strcat(s1,s2,s3,s4,s5,s4,s6,s2,s7,s2,s8,s2,s9);

g1=inline(str1);

tol=0.00001;
kmax=1000;
x0=[0.1,0.1];

%xmin=Steep_Descent(f1,g1,x0,tol,kmax)
xmin=DFP(f1,g1,x0,tol,kmax)

