% Selection of material and Importing required properties
disp ('Al-2024-T6, Al-7075-T6, Al-7075-T73, Ti-6Al-4V, Steel-4130, Steel-17-4Ph')
[Data] = Choose_Material(input('Choose material from above list: '));
Yield = Data(3);
Ultimate = Data(2);
Endurance = Data(4);
% User Entered Norm Stress amplitude in percent of material yield stress
Stress_Amplitude = Yield.*input('Enter the stress in percent of yield stress: ');
% Stress Ratio
R = input('Enter Stress Ratio: ');
% Calcualte amplitude ratio A from R
A = (1-R)/(1+R);
% A = Sa/Sm;
Mean_Stress = Stress_Amplitude/A;
% Endurance strength Correction
% Endurance = Correct_ES(Endurance,Ultimate);
% Mean Stress Correction
if R~=-1
    disp('Sodenberg, Goodman, ASME, Gerber')
    Model = input('Choose model from above: ');
    Cor_Stress = Mean_Stress_Correction(Model,Mean_Stress,Stress_Amplitude,Ultimate,Yield);
else
    Cor_Stress = Stress_Amplitude;
end
% Choosing Geometry
disp('Geometries are as follows: Edge Notch, Elliptical Hole, Circular Hole')
K = ChooseGeometry(input('Enter the Geometry Name: '));
Cor_Stress = K*Cor_Stress;
if Cor_Stress>Yield
    disp('Stress is greater than yield, specimen fails')
end
% Employing Basquin Law Sf = a((Nf)^b)
b = (1/6)*log10(Endurance/Ultimate);
a = Ultimate;
N_failure = (Cor_Stress/a)^(1/b);
% Plotting SN Curve
Stress = linspace(Endurance,Ultimate,50);
N_life = (Stress./a).^(1./b);
xq = Endurance:10:Ultimate;
vq = interpn(Stress,N_life,xq,'spline');
semilogx(N_life,Stress,'-o',vq,xq,'lineWidth',1)
grid minor

xlabel 'Number of cycles to Failure (N_{f})'
ylabel 'Stress Amplitude'
title 'Wohler Curve'