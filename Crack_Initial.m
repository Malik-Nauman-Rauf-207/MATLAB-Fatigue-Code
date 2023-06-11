function[a] = Crack_Initial(c)
switch c
    case 'Edge Crack'
        a = 2.540*10^-3;% m from NASGRO
    case 'Center Crack'
        a = 1.270*10^-3;% m from NASGRO
end