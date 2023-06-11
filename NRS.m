function[Root] = NRS(Sigma_f_prime,Epsilon_f_prime,b,c,E,Epsilon,Sigma_max,n,x0)
syms x;
f = (Sigma_max*Epsilon)-((Sigma_f_prime^2)/E)*((x)^(2*b))-(Sigma_f_prime*Epsilon_f_prime)*((x)^(b+c));
g=diff(f); %The Derivative of the Function
epsilon = 5*10^-(n+1);
for i=1:10000
     f0=vpa(subs(f,x,x0)); %Calculating the value of function at x0
     f0_der=vpa(subs(g,x,x0)); %Calculating the value of function derivative at x0
  y=x0-f0(1,1)/f0_der(1,1); % The Formula
err=abs(y-x0);
if err<epsilon %checking the amount of error at each iteration
break
end
x0=y;
end
Root = y
y = y - rem(y,10^-n); %Displaying upto required decimal places
