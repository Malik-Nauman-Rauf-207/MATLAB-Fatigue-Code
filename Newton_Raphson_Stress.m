function[Root] = Newton_Raphson_Stress(Kf,S,E,K_prime,n_prime,n,x0)
syms x;
f=(((Kf.*S).^2)./E)-x.*((x./E)+((x./K_prime).^(1./n_prime)));
g=diff(f); %The Derivative of the Function
epsilon = 5*10^-(n+1);
for i=1:10000
     f0=vpa(subs(f,x,x0)) %Calculating the value of function at x0
     f0_der=vpa(subs(g,x,x0)) %Calculating the value of function derivative at x0
  y=x0-f0./f0_der; % The Formula
err=abs(y-x0);
if err<epsilon %checking the amount of error at each iteration
break
end
x0=y;
end
y = y - rem(y,10^-n); %Displaying upto required decimal places
Root = y