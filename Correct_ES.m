function[Endu] = Correct_ES(ES,S_u)
disp('Axial, Bending')
Condition = input('Enter the Loading COndition: ');
switch Condition
    case 'Axial'
        C_load = 0.85;% Loading factor
    case 'Bending'
        C_load = 1;
end
h = 20; % mm height
b = 10; % mm width of rectangular plane stress specimen
de = 0.808*sqrt(h*b);
if de>=2.79 && de<=51
    C_size = 1.24*(de^-0.107);% Size factor
elseif de>51&&de<=254
    C_size = 1.51*(de^-0.157);
end
a = 4.51; % MPa
b = -0.265;
C_surf = a*((S_u*10^-6)^b) % Surface factor for Machined specimen
C_temp = 1; % Temperature factor for less than 450 C
C_relia = 0.868; % Reliability factor for 95 % reliability
Endu = C_load*C_size*C_surf*C_temp*C_relia*ES;