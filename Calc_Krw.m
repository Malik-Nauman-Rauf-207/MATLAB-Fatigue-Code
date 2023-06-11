function[Krw] = Calc_Krw(KmaxOL,Del_a,ZOL,Kmax)
Krw = (KmaxOL)*((1-Del_a/ZOL)^(1/2))-Kmax
end