function[Y] = Crack_Shape_case(V,a)
switch V
     case 'Edge Crack'
        Y = 1.12;
    case 'Center Crack'
        W = 100; % mm width of plate
        Y = sqrt(1/(cos(pi*a/W)));
    case 'Center Hole'
        R = 50;% mm radius of cicle
        y = -0.8194*(((a+R)/R)^(-14.93))+1.049;
        Y = y
        a/R;
    case 'Center Crack 2'
        b = 100; %mm width of the plate
        Y = (1-0.5*(a/b)+0.326*((a/b)^2))*((1-(a/b))^(-1/2))
end