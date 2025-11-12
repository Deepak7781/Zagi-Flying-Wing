function moments = PropMoments(params, del_t)

    torque = -params.k_Tp*((params.k_omega*del_t)^2);

    moments = [torque; 0; 0];

end