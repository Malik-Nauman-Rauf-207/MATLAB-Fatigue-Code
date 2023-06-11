function[CS,CSt] = K_f_Strain(SelectGeometryDropDown_2,Stress_acting,E_2,K_prime,n_prime,Decimal,Applied_Stress_2)
switch SelectGeometryDropDown_2
case 'Flat Plate'
    K_f = 1.0;
    CS = K_f.*Stress_acting;
    CSt = Calculate_Strain(CS,E_2,K_prime,n_prime);
case 'Circular Hole'
    a = 100;% mm diameter of hole
    d = 500;% mm width of plate
    K_f = 3*d/(a+d);
    CS = Newton_Raphson_Stress(K_f,Stress_acting,E_2,K_prime,n_prime,Decimal,Applied_Stress_2);
    CS = double(CS);
    CSt = Calculate_Strain(CS,E_2,K_prime,n_prime);
case 'Elliptical Hole'
    a = 4;% mm semi major axis
    b = 3;% mm semi minor axis
    K_f = 1 + 2*(a/b);
     CS = Newton_Raphson_Stress(K_f,Stress_acting,E_2,K_prime,n_prime,Decimal,Applied_Stress_2);
    CS = double(CS);
    CSt = Calculate_Strain(CS,E_2,K_prime,n_prime);
case 'Edge Notch'
    h = 0.5;% mm notch height
    r = 0.3;% mm radius of notch
    K_f = 1+2*sqrt(h/r);
    CS = Newton_Raphson_Stress(K_f,Stress_acting,E_2,K_prime,n_prime,Decimal,Applied_Stress_2);
    CS = double(CS);
    CSt = Calculate_Strain(CS,E_2,K_prime,n_prime);
end