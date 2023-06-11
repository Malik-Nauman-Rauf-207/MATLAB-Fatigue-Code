function[K] = ChooseGeometry(V)
switch V
    case 'Circular Hole'
        a = 6;% mm diameter of hole
        d = 10;% mm width of plate
        K = 3*d/(a+d);
    case 'Elliptical Hole'
        a = 4;% mm semi major axis
        b = 3.6;% mm semi minor axis
        K = 1 + 2*(a/b);
    case 'Edge Notch'
        h = 1;% mm notch height
        r = 0.8;% mm radius of notch
        K = 1+2*sqrt(h/r);
end