function [alpha] = SafetyFactor(d)

if(d<155)
    tr    = 1.5;
    MAX_v = 120/3.6;
    MIN_v = 60/3.6;
    MIN_a = 5.14;

    if d <= (MAX_v^2 - MAX_v*MIN_v + 2*MAX_v*MIN_a*tr - MIN_a*MIN_v*tr)/(2*MIN_a) 
        a2 = -(MAX_v^2 - 2*MAX_v*MIN_v + 2*MIN_a*tr*MAX_v + MIN_v^2 - 2*MIN_a*tr*MIN_v - 2*d*MIN_a)/(MIN_a*tr^2 + 2*d);
    else
        a2 = (MIN_a*MIN_v^2)/(MAX_v^2 + 2*MIN_a*tr*MAX_v - 2*d*MIN_a);
    end

    alpha = normcdf(a2, 4, 1);
else
    alpha = 1;
end

end
