% Copyright
% Prof. Dr. Alexander Viehweider, Berliner Hochschule für Technik
% ---------------------------------------------------------------

Ks = 1/R_A;

Tb1 = Ta;
Kb1 = 1/(2*Ttot*Ks);

Kb1pa = Tb1*Kb1;
Kb1ia = Kb1; 


Tf=0.05;

Ters = 2*Ta+Tf;

Tr = 4*Ters;

Ts2 = 4*Tr;
Ks2 = ((thetaM+thetaA)/C_M)/(2*Tr*Ters);

Ks2pa = Ts2*Ks2;
Ks2ia = Ks2; 


