function [l,m,n] = AeroMoments(params, alpha, beta, del_e, del_a, p, q, r)

Cl = params.Cl0 + params.Cl_beta*beta + params.Clp*(params.b/2*V)*p + params.Clr*(params.b/2*V)*r +  params.Cl_del_a*del_a;

Cm = params.Cm0 + params.Cm_alpha*alpha  + params.Cmq*(params.c/2*V)*q + params.Cm_del_e*del_e;

Cn = params.Cn0 + params.Cn_beta*beta + params.Cnp*(params.b/2*V)*p + params.Cnr*(params.b/2*V)*r + params.Cn_del_a*del_a;

l = 0.5*params.rho*V^2*S*params.b*Cl; % Placeholder for lift moment calculation
m = 0.5*params.rho*V^2*S*params.c*Cm; % Placeholder for pitching moment calculation
n = 0.5*params.rho*V^2*S*params.b*Cn; % Placeholder for yawing moment calculation



end