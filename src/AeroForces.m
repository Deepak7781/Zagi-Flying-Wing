function Forces =  AeroForces(params, alpha, beta, Va,  del_e, del_a, p, q, r)

CL = params.CL0 + params.CL_alpha*alpha + params.CLq*(params.c/(2*Va))*q + params.CL_del_e*del_e;

AR = params.b^2 / params.S;
CD = params.CD0 + params.CDp + params.CD_alpha*alpha + CL^2/(pi*params.e*AR) + params.CDq*(params.c/2*Va)*q + params.CD_del_e*del_e;

CY = params.CY0 + params.CY_beta*beta + params.CYp*(params.b/(2*Va))*p + params.CYr*(params.b/(2*Va))*r + params.CY_del_a*del_a;

FL = 0.5 * params.rho * Va^2 * params.S * CL;
FD = 0.5 * params.rho * Va^2 * params.S * CD;
FY = 0.5 * params.rho * Va^2 * params.S * CY;


R = [cos(alpha) 0 -sin(alpha); 0 1 0; sin(alpha) 0 cos(alpha)];  
F_vec = [-FD; FY; -FL];  
F_rot = R * F_vec;  

Fx = F_rot(1);
Fy = F_rot(2);
Fz = F_rot(3);

Forces = [Fx;Fy;Fz];

end

