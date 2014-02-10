% Proof: Continuity of piecewise function L.

clear;
syms tr v1 v2 a1 a2


% Function piece 1:
L1 = (a1*a2*tr*tr + 2*a1*tr*v1 - 2*a1*tr*v2 + v1*v1 - 2*v1*v2 + v2*v2)/(2*(a1 - a2));
% Function piece 2:
L2 = v1*tr + v1*v1/(2*a1) - v2*v2/(2*a2);
% Splitting condition:
K = solve('v2/a2 = v1/a1 + tr', a2); % (a2 <= K) for L1, (a2 > K) for L2.

% Substitude a2 with K:
L1_1 = subs(L1, {a2}, {K});
L2_1 = subs(L2, {a2}, {K});

% Compare the difference of the two values at point K:
if simplify(L1_1 - L2_1) == 0
    disp('*** RESULT::Proved.');
else
    disp('*** RESULT::Failed.');
end
