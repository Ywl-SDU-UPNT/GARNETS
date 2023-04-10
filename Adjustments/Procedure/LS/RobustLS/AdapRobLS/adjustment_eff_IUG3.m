function eff = adjustment_eff_IUG1(k1,k2,sig,u)

% K2 = k2*sig/sig44
% K1 = k1*sig/sig44

%eff1 = erf(K2/sqrt(2));
step=0.001;

eff1=0;
for i=0:step:k2
    eff1 = eff1 + 1/sqrt(2*pi)/sig * exp(-(i-u)^2/2/sig^2)*step;
end

eff2=0;
for i=(k2+0.0000001):step:(k1-0.0000001)
    di = (k1-i)/(k1-k2);
    eff2 = eff2 + k2 * di^2 / i / sqrt(2*pi)/sig * exp(-(i-u)^2/2/sig^2)*step;
end
eff = 2 * (eff1 + eff2);
end

% di=(k1-V)/(k1-k2);
% p = k2 / V * di^2; 