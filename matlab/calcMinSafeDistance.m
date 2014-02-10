function [L] = calcMinSafeDistance(a2, MIN_a, MIN_v, MAX_v, tr)

    % v2/a2 >= v1/a1 + tr:
    %   L = (a1*a2*tr^2 + 2*a1*tr*v1 - 2*a1*tr*v2 + v1^2 - 2*v1*v2 + v2^2)/(2*(a1 - a2))
    %
    % v2/a2 < v1/a1 + tr:
    %   L = v2*tr + v1^2/(2*a1) - v2^2/(2*a2)
    %
    %   tr = {ref}          = tr    (param)
    %   a1 = MIN(a)         = MIN_a (param)
    %   a2 = [0..MAX(a)]    = a2    (param)
    %   v1 = MAX(v)         = MAX_v (param)
    %   v2 = MIN(v)         = MIN_v (param)

    a1 = MIN_a;
    v1 = MIN_v;
    v2 = MAX_v;
    
    if(v2/a2 >= v1/a1 + tr)
        L = (a1*a2*tr^2 + 2*a1*tr*v1 - 2*a1*tr*v2 + v1^2 - 2*v1*v2 + v2^2)/(2*(a1 - a2));
    else
        L = v2*tr + v2^2/(2*a2) - v1^2/(2*a1);
    end
end
