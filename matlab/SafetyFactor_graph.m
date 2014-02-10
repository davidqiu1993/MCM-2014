clear;
hold on;
for x = 0:1:1500
    %y = SafetyFactor(x);
    y = SafetyFactor_Trans(x, 1);
    plot([x x], [y y]);
end
