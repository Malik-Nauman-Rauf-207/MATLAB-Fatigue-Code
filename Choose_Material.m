function[Material_Data] = Choose_Material(Name)
switch Name
    case 'Al-2024-T6'
    Den = 2780;    % Density in kg/m3
    T_ult = 415*10^6;   % Tensile Ultimate Strength in Pa
    T_yield = 315*10^6; % Tensile Yield Strength in Pa
    C_yield = 337*10^6; % Compressive Yield Strength in Pa
    E = 72.4*10^9;      % Modulus of Elasticity in Pa
    G = 27*10^9;        % Modulus of Rigidity in Pa
    Pois = 0.33;        % Poisson Ratio
    FS = 124*10^6;       % Fatigue Strength in Pa at 5e008 cycles
    KIC = 35*10^6;       % Fracture Toughness in Pa.m^1/2
    Material_Data = [Den,T_ult,T_yield,FS,C_yield,E,G,Pois,KIC];
    Property = char('Density','S_{Tult}','S_{Ty}','Fatigue S','S_{Cy}','E','G','Poisson','K_{IC}');
    table(Property,Material_Data')
    
    case 'Al-7075-T6'
    Den = 2810;    % Density in kg/m3
    T_ult = 510*10^6;   % Tensile Ultimate Strength in Pa
    T_yield = 434*10^6; % Tensile Yield Strength in Pa
    C_yield = 489*10^6; % Compressive Yield Strength in Pa
    E = 71.7*10^9;      % Modulus of Elasticity in Pa
    G = 26.9*10^9;        % Modulus of Rigidity in Pa
    Pois = 0.33;        % Poisson Ratio
    FS = 159*10^6;       % Fatigue Strength in Pa at 5e008 cycles
    KIC = 25*10^6;       % Fracture Toughness in Pa.m^1/2
    Material_Data = [Den,T_ult,T_yield,FS,C_yield,E,G,Pois,KIC];
    Property = char('Density','S_{Tult}','S_{Ty}','Fatigue S','S_{Cy}','E','G','Poisson','K_{IC}');
    table(Property,Material_Data')
     
    case 'Al-7075-T73'
    Den = 2810;    % Density in kg/m3
    T_ult = 462*10^6;   % Tensile Ultimate Strength in Pa
    T_yield = 386*10^6; % Tensile Yield Strength in Pa
    C_yield = 399*10^6; % Compressive Yield Strength in Pa
    E = 72*10^9;      % Modulus of Elasticity in Pa
    G = 26.9*10^9;        % Modulus of Rigidity in Pa
    Pois = 0.33;        % Poisson Ratio
    FS = 150*10^6;       % Fatigue Strength in Pa at 5e008 cycles
    KIC = 22*10^6;       % Fracture Toughness in Pa.m^1/2
    Material_Data = [Den,T_ult,T_yield,FS,C_yield,E,G,Pois,KIC];
    Property = char('Density','S_{Tult}','S_{Ty}','Fatigue S','S_{Cy}','E','G','Poisson','K_{IC}');
    table(Property,Material_Data')
     
    case 'Ti-6Al-4V'
    Den = 4430;    % Density in kg/m3
    T_ult = 860*10^6;   % Tensile Ultimate Strength in Pa
    T_yield = 790*10^6; % Tensile Yield Strength in Pa
    C_yield = 860*10^6; % Compressive Yield Strength in Pa
    E = 113.8*10^9;      % Modulus of Elasticity in Pa
    G = 45*10^9;        % Modulus of Rigidity in Pa
    Pois = 0.342;        % Poisson Ratio
    FS = 140*10^6;       % Fatigue Strength in Pa at 1e007 cycles
    KIC = 100*10^6;       % Fracture Toughness in Pa.m^1/2
    Material_Data = [Den,T_ult,T_yield,FS,C_yield,E,G,Pois,KIC];
    Property = char('Density','S_{Tult}','S_{Ty}','Fatigue S','S_{Cy}','E','G','Poisson','K_{IC}');
    table(Property,Material_Data')
    
    case 'Steel-4130'
    Den = 7850;    % Density in kg/m3
    T_ult = 570*10^6;   % Tensile Ultimate Strength in Pa
    T_yield = 360*10^6; % Tensile Yield Strength in Pa
    C_yield = 517*10^6; % Compressive Yield Strength in Pa
    E = 205*10^9;      % Modulus of Elasticity in Pa
    G = 80*10^9;        % Modulus of Rigidity in Pa
    Pois = 0.29;        % Poisson Ratio
    KIC = 64.92*10^6;       % Fracture Toughness in Pa.m^1/2
    FS = 0.5*T_ult;       % Endurance Strength of Steel based on shingley criteria.
    Material_Data = [Den,T_ult,T_yield,FS,C_yield,E,G,Pois,KIC];
    Property = char('Density','S_{Tult}','S_{Ty}','Fatigue S','S_{Cy}','E','G','Poisson','K_{IC}');
    table(Property,Material_Data')
     
    case 'Steel-17-4Ph'
    Den = 7810;    % Density in kg/m3
    T_ult = 1207*10^6;   % Tensile Ultimate Strength in Pa
    T_yield = 1148*10^6; % Tensile Yield Strength in Pa
    E = 196*10^9;      % Modulus of Elasticity in Pa
    G = 77.2*10^9;        % Modulus of Rigidity in Pa
    Pois = 0.27;        % Poisson Ratio
    KIC = 67.8*10^6;       % Fracture Toughness in Pa.m^1/2  
    FS = 0.5*T_ult;       % Endurance Strength of Steel based on shingley criteria.
    Material_Data = [Den,T_ult,T_yield,FS,E,G,Pois,KIC];
    Property = char('Density','S_{Tult}','S_{Ty}','Fatigue S','E','G','Poisson','K_{IC}');
    table(Property,Material_Data')
end

return