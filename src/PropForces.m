function propulsion = PropForces(params, del_t, Va)

    T = 0.5*params.rho*params.S_prop*params.C_prop*((params.k_motor*del_t)^2 - Va^2);

    propulsion = [T; 0; 0];

end