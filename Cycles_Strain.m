function[Cycles] = Cycles_Strain(R_2,Mean_Correction,sigma_f_prime,epsilon_f_prime,bbb,ccc,E_2,Corrected_St,Decimal,IRG,Mean,Max)
if R_2 == -1
Reversal = NRL(sigma_f_prime,epsilon_f_prime,bbb,ccc,E_2,Corrected_St,Decimal,IRG);
Reversal = double(Reversal);
Cycles = Reversal/2;
elseif R_2 ~= -1
    switch Mean_Correction
        case 'Morrow'
        Reversal = NRM(sigma_f_prime,epsilon_f_prime,bbb,ccc,E_2,Corrected_St,Mean,Decimal,IRG);
        Reversal = double(Reversal);
        Cycles = Reversal/2;
        case 'SWT'
        Reversal = NRS(sigma_f_prime,epsilon_f_prime,bbb,ccc,E_2,Corrected_St,Max,Decimal,IRG);
        Reversal = double(Reversal);
        Cycles = Reversal/2;
    end
end