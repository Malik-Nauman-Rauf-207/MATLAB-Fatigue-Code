function[Reversals] = Transition(epsilon_f_prime,E,sigma_f_prime,b,c)
Reversals = ((epsilon_f_prime*E)/(sigma_f_prime))^(1/(b-c));
end