
X0 = [30; 0; 0; 0; 0; 0; 0; 3; 0; 0; 0; -30];

U = [0; 0; 0.5];

tspan = [0 30];

odeFcn = @(t,X) EqM(params, X, U);

options = odeset('RelTol', 1e-6, 'AbsTol', 1e-8);  
[t,X] = ode45(odeFcn, tspan, X0, options);


figure;
subplot(2,2,1); plot(t, X(:,1:3)); legend('u', 'v', 'w'); title('Body Velocities');
subplot(2,2,2); plot(t, X(:,4:6)); legend('p', 'q', 'r'); title('Angular Rates');
subplot(2,2,3); plot(t, X(:,7:9)); legend('\phi', '\theta', '\psi'); title('Euler Angles (deg)');
subplot(2,2,4); plot(t, X(:,10:12)); legend('x_e', 'y_e', 'z_e'); title('Position');
sgtitle('Zagi Flying Wing Simulation');