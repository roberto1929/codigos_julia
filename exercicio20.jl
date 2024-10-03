# Importar bibliotecas necessárias
using Printf

# Definir constantes
E0 = 250               # Amplitude do campo elétrico (V/m)
omega = 1.00e6         # Frequência angular (rad/s)
c = 3e8                # Velocidade da luz no vácuo (m/s)
Z0 = 377               # Impedância característica do vácuo (Ω)

# Calcular a frequência (f)
frequencia = omega / (2 * π)

# Calcular o comprimento de onda (λ)
comprimento_de_onda = c / frequencia

# Calcular o período (T)
periodo = 1 / frequencia

# Calcular a amplitude de H (H0)
amplitude_de_H = E0 / Z0

# Imprimir os resultados formatados
@printf("Frequência (f): %.2f kHz\n", frequencia / 1e3)
@printf("Comprimento de onda (λ): %.2f km\n", comprimento_de_onda / 1e3)
@printf("Período (T): %.2f μs\n", periodo / 1e-6)
@printf("Amplitude de H (H0): %.3f A/m\n", amplitude_de_H)
