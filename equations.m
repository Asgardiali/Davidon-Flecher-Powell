% Denkelemleri bu þekilde oluþturmamýn nedeni matlab exe dönüþümü
% yapýldýðýnda sembol deðiþkenleri iþleme almýyor ve hata veriyor. Bu
% nedenle inline fonksiyonu içerisine girilen string tipindeki
% fonksiyonlarý deðiþken hale getirip iþleme almak için böyle bir yöntem
% buldum. Kullanýcýnýn girdiði deðerlere göre fonksiyonlar þekilleniyor.

function [F,J]=equations(ax,az,r,bx,by,bz,t,cx,cy,cz,rc)

    s1='((x(1)-';
    s2=num2str(ax);
    s3=')^2)+((x(3)-';
    s4=num2str(az);
    s5=')^2)-';
    s6=num2str(r^2);
    s25=';';

    str1=strcat(s1,s2,s3,s4,s5,s6,s25);

    s7='((x(1)-';
    s8=num2str(bx);
    s9=')^2)+((x(2)-';
    s10=num2str(by);
    s11=')^2)-';
    s12=num2str(t);
    s13='*((x(3)-';
    s14=num2str(bz);
    s15='))';
    s26=';';


    str2=strcat(s7,s8,s9,s10,s11,s12,s13,s14,s15,s26);

    s16='((x(1)-';
    s17=num2str(cx);
    s18=')^2)+((x(2)-';
    s19=num2str(cy);
    s20=')^2)+';
    s21='((x(3)-';
    s22=num2str(cz);
    s23=')^2)-';
    s24=num2str(rc^2);

    str3=strcat(s16,s17,s18,s19,s20,s21,s22,s23,s24,s26);

    s27='[';
    s28=']';

    str4=strcat(s27,str3,str1,str2,s28);

    F=inline(str4);


    s29='2*(x(1)-';
    % s2;
    s30='),0,2*(x(3)-';
    % s4;
    s31=')';

    s32='2*(x(1)-';
    % s8;
    s33='),2*(x(2)-';
    % s10;
    s34='),-';
    % s12;

    s35='[2*(x(1)-';
    % s17;
    s36='),2*(x(2)-';
    % s19;
    s37='),2*(x(3)-';
    % s22;
    s38=')';
    s39=']';

    str5=strcat(s35,s17,s36,s19,s37,s22,s38,s26,s29,s2,s30,s4,s31,s26,...
        s32,s8,s33,s10,s34,s12,s39);

    J=inline(str5);

end