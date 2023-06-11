function[Strain] = Calculate_Strain(CS,E,K_prime,n_prime)
Strain = CS./E + (CS./K_prime).^(1./n_prime);
end