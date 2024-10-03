# Importar bibliotecas necessárias
using Printf

# Definir constantes
amplitude = 100  # Amplitude do campo elétrico em V/m
omega = 10^8  # Frequência angular em rad/s
beta = 0.5  # Constante de fase em rad/m
theta = 30 * (π / 180)  # Fase inicial em radianos

# Expressão do campo elétrico como fasor
E_y_fasor = amplitude * exp(im * (theta))

# Imprimir o fasor
@printf("O fasor E_y(z) é: %.2f ∠ %.2f rad\n", abs(E_y_fasor), angle(E_y_fasor))
