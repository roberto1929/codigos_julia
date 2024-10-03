using Printf
@time begin
# Definir constantes
beta = 0.07  # Constante de defasamento (rad/m)
c = 3e8  # Velocidade da luz (m/s)
t = 31e-9  # Tempo (s)
z = 3  # Posição z (m)
Hx_amplitude = 2  # Amplitude de Hx
Hy_amplitude = -3  # Amplitude de Hy
theta_Hx = -40 * (π / 180)  # Fase de Hx em radianos
theta_Hy = 20 * (π / 180)  # Fase de Hy em radianos

# (a) Calcular ω
omega = beta * c

# (b) Calcular Hx em P(1, 2, 3) em t = 31 ns
omega_t = omega * t
Hx = Hx_amplitude * cos(omega_t - beta * z + theta_Hx)
Hy = Hy_amplitude * cos(omega_t - beta * z + theta_Hy)
Hx_at_P = Hx

# (c) Calcular |H| em t = 0 na origem
Hx_origin = Hx_amplitude * cos(theta_Hx)
Hy_origin = Hy_amplitude * cos(theta_Hy)
H_magnitude_origin = sqrt(Hx_origin^2 + Hy_origin^2)

# Imprimir os resultados
@printf("(a) ω: %.2e rad/s\n", omega)
@printf("(b) Hx em P(1, 2, 3) em t = 31 ns: %.3f A/m\n", Hx_at_P)
@printf("(c) |H| em t = 0 na origem: %.2f A/m\n", H_magnitude_origin)
end