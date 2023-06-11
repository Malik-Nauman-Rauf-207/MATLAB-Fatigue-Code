function[Strain] = Plastic_Strain(Epsilon_f_prime,Reversals,c)
Strain = (Epsilon_f_prime).*((Reversals).^c);
end