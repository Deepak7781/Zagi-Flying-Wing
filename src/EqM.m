function dx = Eqm(params,X,U)
    
    % extract states

    u = X(1);
    v = X(2);
    w = X(3);

    p = X(4);
    q = X(5);
    r = X(6);

    phi = X(7);
    theta = X(8);
    psi = X(9);

    x_e  = X(10);
    y_e = X(11);
    z_e = X(12);

    omega = [p; q; r];
    V_b = [u; v; w]

    % Extarct control inputs

    del_e = U(1);
    del_a = U(2);
    del_t = U(3);

    % Calculate intermediate values
    
    Va = sqrt(u^2 + v^2 + w^2);
    alpha = atan2(w,u);
    beta = asin(v/Va);

    I = [params.Ixx 0 params.Ixz; 0 params.Iyy 0; params.Ixz 0 params.Izz];
    
    F_b = AeroForces(params, alpha, beta, Va, del_e, del_a, p, q, r) + GravityForces(params, phi, theta, psi) + PropForces(parmas, del_t, Va);

    dVdx = 1/params.mass*(F_b) - cross(omega,V_b);

    M_b = AeroMoments(params, alpha, beta, Va, del_e, del_A, p, q ,r) + PropMoments(params, del_t);

    dwdx = inv(I)*((M_b) - (cross(omega, I*omega)));
    
    R_euler = [1 tan(theta) tan(theta)*cos(phi); 0 cos(phi) -sin(phi); 0 sec(theta)*sin(phi); sec(theta)*cos(phi)];
    deulerdx = R_euler * omega;


    R_psi = [cos(psi) sin(psi) 0; -sin(psi) cos(psi) 0; 0 0 1];
    R_theta = [cos(theta) 0 -sin(theta); 0 1 0; sin(theta) 0 cos(theta)];
    R_phi = [1 0 0; 0 cos(phi) sin(phi); 0 -sin(phi) cos(phi)];


    R = transpose(R_phi)*transpose(R_theta)*transpose(R_psi);
    dposdx = R*V_b;

    dx = [dVdx; dwdx; deulerdx; dposdx];

end