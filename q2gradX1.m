
function g1=q2gradX1(a1,a2,x)

dq2x=inline('-x/(a1*a2*(1 - (a1^2 + a2^2 - x^2 - y^2)^2/(4*a1^2*a2^2))^(1/2))');
% dq2y=inline('-y/(a1*a2*(1 - (a1^2 + a2^2 - x^2 - y^2)^2/(4*a1^2*a2^2))^(1/2))');
% q2=inline('acos((((x^2)+(y^2)-(a1^2)-(a2^2)))/(2*a1*a2))');

s1='-x(1)/(';
s2=num2str(a1);
s3='*';
s4=num2str(a2);
s5='*(1-(';
s6=num2str(a1^2);
s7='+';
s8=num2str(a2^2);
s9='-x(1)^2-x(2)^2)^2/(4*';
% s6
s10='*';
% s8
s11='))^0.5)';

str=strcat(s1,s2,s3,s4,s5,s6,s7,s8,s9,s6,s10,s8,s11);

fdq2x=inline(str);

g1=feval(fdq2x,x);

end