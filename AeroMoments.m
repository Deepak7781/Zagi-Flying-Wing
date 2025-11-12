function Moment = AeroMoments(params, alpha, beta, Va, del_e, del_a, p, q, r)

Cl = params.Cl0 + params.Cl_beta*beta + params.Clp*(params.b/2*Va)*p + params.Clr*(params.b/2*Va)*r +  params.Cl_del_a*del_a;

Cm = params.Cm0 + params.Cm_alpha*alpha  + params.Cmq*(params.c/2*Va)*q + params.Cm_del_e*del_e;

Cn = params.Cn0 + params.Cn_beta*beta + params.Cnp*(params.b/2*Va)*p + params.Cnr*(params.b/2*Va)*r + params.Cn_del_a*del_a;

l = 0.5*params.rho*Va^2*params.S*params.b*Cl;
m = 0.5*params.rho*Va^2*params.S*params.c*Cm; 
n = 0.5*params.rho*Va^2*params.S*params.b*Cn; 

Moment = [l;m;n];

end