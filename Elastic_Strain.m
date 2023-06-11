function[Strain] = Elastic_Strain(Sigma_f_prime,E,Reversals,b)
Strain = (Sigma_f_prime./E).*((Reversals).^b);
end