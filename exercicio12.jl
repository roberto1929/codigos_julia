using Printf
@time begin
# Constantes
epsilon_0 = 8.854e-12  # Permissividade do vácuo em F/m
mu_0 = 4 * pi * 1e-7  # Permeabilidade do vácuo em H/m
c = 3e8  # Velocidade da luz em m/s
eta = sqrt(mu_0 / epsilon_0)  # Impedância do vácuo

# Parte (a) - Antena de automóvel
H_amplitude = 0.15  # Amplitude de H em A/m
omega_a = 3.12 * c  # Frequência angular

dH_dt_amplitude_a = H_amplitude * omega_a  # Derivada de H em relação ao tempo
J_d_a = epsilon_0 * eta * dH_dt_amplitude_a  # Densidade de corrente de deslocamento

@printf("Parte (a) - J_d = %.3f A/m^2\n", J_d_a)

# Parte (b) - Transformador
B_amplitude = 0.8  # Amplitude de B em T
omega_b = 1.257e-6 * c  # Frequência angular

dB_dt_amplitude_b = B_amplitude * omega_b  # Derivada de B em relação ao tempo

# Usamos a relação de Maxwell-Faraday para encontrar a relação correta para J_d
J_d_b = epsilon_0 * dB_dt_amplitude_b

@printf("Parte (b) - J_d = %.15f A/m^2\n", J_d_b)

# Parte (c) - Capacitor de potência a óleo
E_amplitude = 0.9 * 1e6  # Amplitude de E em V/m (convertido de MV/m)
epsilon_r_c = 5  # Permissividade relativa
omega_c = 1.257e-6 * c  # Frequência angular

dE_dt_amplitude_c = E_amplitude * omega_c  # Derivada de E em relação ao tempo
J_d_c = epsilon_0 * epsilon_r_c * dE_dt_amplitude_c  # Densidade de corrente de deslocamento

@printf("Parte (c) - J_d = %.4f A/m^2\n", J_d_c)

# Parte (d) - Condutor metálico
sigma = 5.8e7  # Condutividade em S/m
J_amplitude_d = 1e6  # Amplitude de J em A/m^2 (convertido de MA/m^2)
omega_d = 2 * pi * 60  # Frequência angular para 60 Hz

E_amplitude_d = J_amplitude_d / sigma  # Campo elétrico
dE_dt_amplitude_d = E_amplitude_d * omega_d  # Derivada de E em relação ao tempo
J_d_d = epsilon_0 * dE_dt_amplitude_d  # Densidade de corrente de deslocamento

@printf("Parte (d) - J_d = %.1f pA/m^2\n", J_d_d * 1e12)  # Convertido para pA/m^2
end