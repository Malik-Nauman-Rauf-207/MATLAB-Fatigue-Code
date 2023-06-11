function[CS]=Mean_Stress_Correction(Name,MS,AS,US,YS)
switch Name
    case   'Soderberg'
    CS = AS./(1-(MS./YS));
    case 'Goodman'
     CS = AS./(1-(MS./US));
    case 'Gerber'
    CS = AS./(1-(MS./US).^2);
    case 'Elliptical'
     CS = ((AS.^2)./(1-(MS./YS).^2)).^(1/2);
end