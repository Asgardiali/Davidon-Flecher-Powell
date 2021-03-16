function f1=q2fcn(a1,a2,x)

%q2=inline('acos((((x(1)^2)+(x(2)^2)-(a1^2)-(a2^2)))/(2*a1*a2))');


s1='acos((((x(1)^2)+(x(2)^2)-(';
s2=num2str(a1^2);
s3=')-(';
s4=num2str(a2^2);
s5=')))/(2*';
s6=num2str(a1);
s7='*';
s8=num2str(a2);
s9='))';

str=strcat(s1,s2,s3,s4,s5,s6,s7,s8,s9);

q2=inline(str);

f1=feval(q2,x);

end