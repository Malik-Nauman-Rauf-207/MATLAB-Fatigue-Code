function[Material_Parameters] = NASGRO_Param(Name)
switch Name
    case 'Al-2024-T6'
       Smax_Sgo = 0.30;
       Alpha = 1.5;
       K1c = 1251*31622.7766017; % in Pa*sqrt(m) Plane Strain
       YS = 315*10^6; % Tensile Yield Strength in Pa
       Ak = 1.0; Bk = 1.0;
       DK0 = 101*31622.7766017;% in Pa*sqrt(m)Threshold SIF range at R=0;
       Cth_p = 1.5;% Threshold Coefficient
       p = 0.5;q = 1;
       C = 0.298e-11;% Paris Crack Growth Rate Constant
       n = 3.2;% Paris Exponent for NASGRO Equations
       Material_Parameters = [Smax_Sgo,Alpha,K1c,YS,Ak,Bk,DK0,Cth_p,p,q,C,n,Kc];
       table(Material_Parameters')

    case 'Al-7075-T6'
       Smax_Sgo = 0.30;
       Alpha = 1.9;
       K1c = 938*31622.7766017; % in Pa*sqrt(m) Plane Strain
       YS = 434*10^6; % Tensile Yield Strength in Pa
       Ak = 1; Bk = 1;
       Kc = 49.9*10^3;% in psi*sqrt(in)Plane Stress
       DK0 = 104*31622.7766017;% in Pa*sqrt(m)Threshold SIF range at R=0;
       Cth_p = 2.0;% Threshold Coefficient
       p = 0.5;q = 1;
       C = 0.153e-10;% Paris Crack Growth Rate Constant
       n = 2.947;% Paris Exponent for NASGRO Equations
       Material_Parameters = [Smax_Sgo,Alpha,K1c,YS,Ak,Bk,DK0,Cth_p,p,q,C,n,Kc];
       table(Material_Parameters')
       
    case 'Al-7075-T73'
       Smax_Sgo = 0.30;
       Alpha = 1.9;
       K1c = 973*31622.7766017; % in Pa*sqrt(m) Plane Strain
       YS = 386*10^6; % Tensile Yield Strength in Pa
       Ak = 1.0; Bk = 1.0;
       DK0 = 104*31622.7766017;% in Pa*sqrt(m)Threshold SIF range at R=0;
       Cth_p = 2.0;% Threshold Coefficient
       p = 0.5;q = 1.0;
       C = 0.289e-11;% Paris Crack Growth Rate Constant
       n = 3.321;% Paris Exponent for NASGRO Equations
       Material_Parameters = [Smax_Sgo,Alpha,K1c,YS,Ak,Bk,DK0,Cth_p,p,q,C,n,Kc];
       table(Material_Parameters')

    case 'Ti-6Al-4V'
       Smax_Sgo = 0.30;
       Alpha = 2.5;
       K1c = 1737*31622.7766017; % in Pa*sqrt(m) Plane Strain
       YS = 790*10^6; % Tensile Yield Strength in Pa
       Ak = 1.0; Bk = 0.5;
       DK0 = 122*31622.7766017;% in Pa*sqrt(m)Threshold SIF range at R=0;
       Cth_p = 1.8;% Threshold Coefficient
       p = 0.25;q = 0.75;
       C = 0.147e-11;% Paris Crack Growth Rate Constant
       n = 3.01;% Paris Exponent for NASGRO Equations
       Material_Parameters = [Smax_Sgo,Alpha,K1c,YS,Ak,Bk,DK0,Cth_p,p,q,C,n];
       table(Material_Parameters')
    
    case 'Steel-4130'
       Smax_Sgo = 0.30;
       Alpha = 2.5;
       K1c = 110*10^6; % in Pa*sqrt(m)Plane Strain
       YS = 360*10^6; % Tensile Yield Strength in Pa
       Ak = 1.0; Bk = 0.5;
       DK0 = 139*31622776.6017;% in Pa*sqrt(m)Threshold SIF range at R=0;
       Cth_p = 0.115;% Threshold Coefficient
       p = 0.25;q = 0.25;
       C = 0.600e-09;% Paris Crack Growth Rate Constant
       n = 3.11;% Paris Exponent for NASGRO Equations
       Material_Parameters = [Smax_Sgo,Alpha,K1c,YS,Ak,Bk,DK0,Cth_p,p,q,C,n];
       table(Material_Parameters')
       
    case 'Steel-17-4Ph'
       Smax_Sgo = 0.30;
       Alpha = 2.5;
       K1c = 1737*31622.7766017; % in Pa*sqrt(m) Plane Strain
       YS = 1148*10^6; % Tensile Yield Strength in Pa
       Ak = 1.0; Bk = 0.5;
       DK0 = 139*31622.7766017;% in Pa*sqrt(m)Threshold SIF range at R=0;
       Cth_p = 0.8;% Threshold Coefficient
       p = 0.25;q = 0.25;
       C = 0.246e-12;% Paris Crack Growth Rate Constant
       n = 3.11;% Paris Exponent for NASGRO Equations
       Material_Parameters = [Smax_Sgo,Alpha,K1c,YS,Ak,Bk,DK0,Cth_p,p,q,C,n];
       table(Material_Parameters')
       
end

return