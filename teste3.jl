using Printf

# Constantes
epsilon_0 = 8.854e-12  # Permissividade do vácuo em F/m
mu_0 = 4 * pi * 1e-7  # Permeabilidade do vácuo em H/m
c = 3e8  # Velocidade da luz em m/s

# Parte (b) - Transformador
B_amplitude_b = 0.8  # Amplitude de B em T
omega_b = 1.257e-6 * c  # Frequência angular
k_b = 1.257e-6  # Número de onda

# Amplitude de ∇ x B
nabla_cross_B_amplitude = B_amplitude_b * k_b

# Densidade de corrente de deslocamento J_d
J_d_b = nabla_cross_B_amplitude / mu_0

@printf("Parte (b) - J_d = %.3f A/m^2\n", J_d_b)
