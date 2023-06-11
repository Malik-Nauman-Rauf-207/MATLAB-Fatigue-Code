function[Kth] = Threshold(ai,DK0,f,A0,R,Cth_p)
a0 = 0.0381; % m intrinsic Crack Length
Kth = DK0*((ai/(ai+a0))^0.5)/(((1-f)/((1-A0)*(1-R)))^(1+Cth_p*R));