clear; clc;
% Wind Generator Analysis Script - Group 2
% This script calculates Cp,max, λopt, nominal power, and rotation speed for a wind generator
% Define constants
X = 2; % Group 2
rho = 1.225; % Air density (kg/m^3)
% Calculate parameters
R = 40 + X; % Turbine radius (m)
Z = [0.002 + X/800, 0.027 + X/1000]; % Z parameters
% Z= [0.008, 0.035]; % Panos Z params
C = [0.2 + X/100, 116, X/10, 0, 5, 12 + X/10]; % C parameters
% C = [0.22, 116, 0.4,  0, 5, 12.5]; % Panos C params
Uw_n = 10.5 + X/10; % Nominal wind speed (m/s)
% Display calculated parameters
fprintf('Parameters for Group %d:\n', X);
fprintf('Turbine radius R = %.2f m\n', R);
fprintf('Z parameters = [%.4f, %.4f]\n', Z(1), Z(2));
fprintf('C parameters = [%.2f, %.2f, %.2f, %.2f, %.2f, %.2f]\n', C(1), C(2), C(3), C(4), C(5), C(6));
fprintf('Nominal wind speed = %.2f m/s\n\n', Uw_n);
% Calculate Cp for different lambda values with beta=0.2
lambda_range = 0.1:0.1:20;

Cp_values = zeros(size(lambda_range));
for i = 1:length(lambda_range)
    lambda = lambda_range(i);
    beta = 0; % For maximum Cp
    % Calculate li based on lambda and beta
    li = 1/(lambda + Z(1)*beta) - Z(2)/(beta^3 + 1);
    % Calculate Cp using the formula
    Cp_values(i) = C(1)*(C(2)*li - C(3)*beta - C(4)*(beta^1) - C(5))*exp(-C(6)*li);
end
% Find maximum Cp and corresponding lambda
[Cp_max, idx] = max(Cp_values);
lambda_opt = lambda_range(idx);
% Calculate nominal power
P_n = 0.5 * rho * pi * R^2 * Cp_max * Uw_n^3;
% Calculate nominal rotation speed using the tip speed ratio formula
% ω = λ*v/R
omega_n_rad_s = lambda_opt * Uw_n / R;
omega_n_rpm = omega_n_rad_s * 60 / (2 * pi);
% Display results
fprintf('Results:\n');
fprintf('Maximum power coefficient Cp,max = %.4f\n', Cp_max);
fprintf('Optimal tip speed ratio λopt = %.2f\n', lambda_opt);
fprintf('Nominal wind generator power Pn = %.2f kW (%.2f MW)\n', P_n/1000, P_n/1000000);
fprintf('Nominal rotation speed ωn = %.4f rad/s (%.2f RPM)\n', omega_n_rad_s, omega_n_rpm);
% Create plot of Cp vs lambda
figure;
plot(lambda_range, Cp_values, 'b-', 'LineWidth', 2);
hold on;
plot(lambda_opt, Cp_max, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
grid on;
xlabel('Tip Speed Ratio (λ)');
ylabel('Power Coefficient (Cp)');
title('Power Coefficient vs Tip Speed Ratio');
legend('Cp(λ)', 'Maximum Cp', 'Location', 'best');
text(lambda_opt+1, Cp_max, sprintf('Cp,max = %.4f\nλopt = %.2f', Cp_max, lambda_opt));