disp ('Al-2024-T6, Al-7075-T6, Al-7075-T73, Ti-6Al-4V, Steel-4130, Steel-17-4Ph')
[Data] = Choose_Material(input('Choose material from above list: '));
Yield = Data(3);
Ultimate = Data(2);
Endurance = Data(4);
[Para] = NASGRo_Param(input('Choose Material for NASGRO: '));

% User Entered Norm Stress amplitude in percent of material yield stress
Stress_Amplitude = Yield.*input('Enter the stress in percent of yield stress: ');
% Stress Ratio
R = input('Enter Stress Ratio: ');
% Calcualte amplitude ratio A from R
A = (1-R)/(1+R);
% A = Sa/Sm;
Mean_Stress = A*Stress_Amplitude;
disp('Edge Crack, Center Crack');
ai = Crack_Initial(input('Enter Geometry of crack: '));
