function[Y] = Crack_Shape_2(V,a)
switch V
     case 'Edge Crack'
        Y = 1.12;
    case 'Center Crack'
        W = 100; % mm width of plate
        Y = sqrt(1/(cos(pi*a/W)));
    case 'Center Hole'
        R = 18;% mm radius of cicle
        y = -0.8194*(((a+R)/R)^(-14.93))+1.049;
        Y = y
        a/R;
end