% Solve for: Function a2(..).

clear;
syms tr v1 v2 a1 a2
syms MIN_a MIN_v MAX_v


% Function piece 1:
L1 = (a1*a2*tr*tr + 2*a1*tr*v1 - 2*a1*tr*v2 + v1*v1 - 2*v1*v2 + v2*v2)/(2*(a1 - a2));
% Function piece 2:
L2 = v1*tr + v1*v1/(2*a1) - v2*v2/(2*a2);
% Splitting condition:
K = solve('v2/a2 = v1/a1 + tr', a2); % (a2 <= K) for L1, (a2 > K) for L2.

% Substitude a2 with K to find the splitting of function a2:
L_K = simplify(subs(L1, {a2}, {K}));

% Solve for first function piece of a2:
a2_1 = simplify(solve('L = (a1*a2*tr*tr + 2*a1*tr*v1 - 2*a1*tr*v2 + v1*v1 - 2*v1*v2 + v2*v2)/(2*(a1 - a2))', a2));
% Solve for second function piece of a2:
a2_2 = simplify(solve('L = v1*tr + v1*v1/(2*a1) - v2*v2/(2*a2)', a2));

% Substitude a1, v1, v2
a1 = MIN_a;
v1 = MAX_v
v2 = MIN_v;
a2_1_1 = simplify(subs(a2_1));
a2_2_1 = simplify(subs(a2_2));
L_K_1  = simplify(subs(L_K));

% Output the result
fprintf('L <= '); disp(L_K_1);
fprintf('  a2 = ');disp(a2_1_1);
fprintf('L > ');disp(L_K_1);
fprintf('  a2 = ');disp(a2_2_1);
disp('');
