using Printf
using ForwardDiff

# Constantes
epsilon_0 = 8.854e-12  # Permissividade do vácuo em F/m
mu_0 = 4 * pi * 1e-7  # Permeabilidade do vácuo em H/m
c = 3e8  # Velocidade da luz em m/s
eta = sqrt(mu_0 / epsilon_0)  # Impedância do vácuo

# Parte (a) - Antena de automóvel
H_amplitude = 0.15  # Amplitude de H em A/m
omega_a = 3.12 * c  # Frequência angular

# Definir a função H(t)
H(t) = H_amplitude * sin(omega_a * t)

# Calcular a derivada de H(t)
dH_dt(t) = ForwardDiff.derivative(H, t)

# Avaliar a derivada de H(t) no tempo t = 0
dH_dt_amplitude_a = dH_dt(0.0)
J_d_a = epsilon_0 * eta * dH_dt_amplitude_a  # Densidade de corrente de deslocamento

@printf("Parte (a) %.3f A/m^2\n", J_d_a)

# Parte (b) - Transformador
B_amplitude = 0.8  # Amplitude de B em T
omega_b = 1.257e-6 * c  # Frequência angular
k_b = 1.257e-6  # Número de onda

# Amplitude de ∇ x B
nabla_cross_B_amplitude = B_amplitude * k_b

# Densidade de corrente de deslocamento J_d
J_d_b = nabla_cross_B_amplitude / mu_0

@printf("Parte (b) %.3f A/m^2\n", J_d_b)

# Parte (c) - Capacitor de potência a óleo
E_amplitude = 0.9 * 1e6  # Amplitude de E em V/m (convertido de MV/m)
epsilon_r_c = 5  # Permissividade relativa
omega_c = 1.257e-6 * c  # Frequência angular

# Definir a função E(t)
E(t) = E_amplitude * sin(omega_c * t)

# Calcular a derivada de E(t)
dE_dt(t) = ForwardDiff.derivative(E, t)

# Avaliar a derivada de E(t) no tempo t = 0
dE_dt_amplitude_c = dE_dt(0.0)
J_d_c = epsilon_0 * epsilon_r_c * dE_dt_amplitude_c  # Densidade de corrente de deslocamento

@printf("Parte (c) %.4f A/m^2\n", J_d_c)

# Parte (d) - Condutor metálico
sigma = 5.8e7  # Condutividade em S/m
J_amplitude_d = 1e6  # Amplitude de J em A/m^2 (convertido de MA/m^2)
omega_d = 2 * pi * 60  # Frequência angular para 60 Hz

# Definir a função J(t)
J(t) = J_amplitude_d * sin(omega_d * t)

# Calcular o campo elétrico E(t)
E(t) = J(t) / sigma

# Calcular a derivada de E(t)
dE_dt(t) = ForwardDiff.derivative(E, t)

# Avaliar a derivada de E(t) no tempo t = 0
dE_dt_amplitude_d = dE_dt(0.0)
J_d_d = epsilon_0 * dE_dt_amplitude_d  # Densidade de corrente de deslocamento

@printf("Parte (d) %.1f pA/m^2\n", J_d_d * 1e12)  # Convertido para pA/m^2
