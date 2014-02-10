function [alpha] = SafetyFactor_Trans(aved, prec)

aved = aved - 140.724;
accel_alpha = 0;
dev = prec/aved;

for diff_d = 0:prec:aved
    accel_alpha = accel_alpha + dev * SafetyFactor(diff_d);
end

alpha = accel_alpha;

end
