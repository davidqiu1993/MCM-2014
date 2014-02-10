clear;
hold on;
for x = 0.5:0.01:16
    %y = SafetyFactor(x);
    y = SafetyFactor_Trans(500/x, 1)/2;
    plot([x x], [y y], 'b');
end
for x = 0.5:0.01:8
    %y = SafetyFactor(x);
    y = SafetyFactor_Trans(1000/x, 1);
    plot([x x], [y y], 'r');
end
