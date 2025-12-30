params = struct();

params.g = 9.81;
params.mass = 1.56; % Mass - kg
params.Ixx = 0.1147; % Moment of Inertia - kg-m^2
params.Iyy = 0.0576; % Moment of Inertia - kg-m^2
params.Izz = 0.1712; % Moment of Inertia - kg-m^2
params.Ixz = 0.0015; % Moment of Inertia - kg-m^2

params.S = 0.2589; % Planform Area - m^2
params.b = 1.4224; % Wing span - m
params.c = 0.3302; % mean arodynamic chord - m 
params.rho = 1.2682; % Density - kg/m^3

% Motor parameters

params.S_prop = 0.0314; % Area of propeller - m^2
params.k_motor = 20;
params.k_Tp = 0;
params.k_omega = 0;
params.e = 0.9;

% Aerodynamic Parameters

% Longitudinal coefiicients

params.CL0 = 0.09167; % 
params.CD0 = 0.01631; % Zero lift drag
params.Cm0 = -0.02338;
params.CL_alpha = 3.5016;
params.CD_alpha = 0.2108;
params.Cm_alpha = -0.5675;
params.CLq = 2.8932;
params.CDq = 0;
params.Cmq = -1.399;
params.CL_del_e = 0.2724;
params.CD_del_e = 0.3045;
params.Cm_del_e = -0.3254;
params.C_prop = 1.0;
params.M = 50;
params.alpha0 = 0.4712;
params.epsilon = 0.1592;
params.CDp = 0.0254;

% Lateral Coefficients

params.CY0 = 0;
params.Cl0 = 0;
params.Cn0 = 0;
params.CY_beta = -0.07359;
params.Cl_beta = -0.02854;
params.Cn_beta = -.0004;
params.CYp = 0;
params.Clp = -0.3209;
params.Cnp = -0.01297;
params.CYr = 0;
params.Clr = 0.03066;
params.Cnr = -0.00434;
params.CY_del_a = 0;
params.Cl_del_a = 0.1682;
params.Cn_del_a = -0.00328;

save('params.mat');

myBus = Simulink.Bus.createObject(params);