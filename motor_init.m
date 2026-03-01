% Copyright
% Prof. Dr. Alexander Viehweider, Berliner Hochschule für Technik
% ---------------------------------------------------------------

% Elektrische Parameter der Maschine
% ----------------------------------
R_A = 11.3;
L_A = 0.05;

% Konstanten
% ----------
C_E    = 5.9898;
C_M    = 0.778;
thetaM = 0.1;

% Erregungskreis
% --------------
R_E=1;
T_E=1;

% Elektrische Zeitkonstante
% -------------------------
Ta = L_A/R_A;
disp("Ta");

disp('Stromsollwertglättung Filterkonstante');
Tf = 0.05;
disp(Tf);

disp('Totzeit Leistungselektronik')
Ttot = 0.003;
disp(Ttot);

disp('Elektrische Zeitkonstante');
disp(L_A/R_A);