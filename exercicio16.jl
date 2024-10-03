# Importar bibliotecas necessárias
using Printf

# Definir constantes
R = 0.2                # Resistência por metro (Ω/m)
L = 0.25e-6            # Indutância por metro (H/m)
G = 10e-6              # Condutância por metro (S/m)
C = 100e-12            # Capacitância por metro (F/m)
ω = 500e6              # Frequência angular (rad/s)

# Calcular a constante de atenuação α
α = (R / 2) * sqrt(C / L) + (G / 2) * sqrt(L / C)

# Calcular a constante de fase β
β = ω * sqrt(L * C)

# Calcular o comprimento de onda λ
λ = 2π / β

# Calcular a velocidade de fase vₚ
vₚ = ω / β

# Calcular a impedância característica Z₀
Z₀ = sqrt((R + im * ω * L) / (G + im * ω * C))

# Imprimir os resultados formatados
@printf("Constante de atenuação (α): %.2f mNp/m\n", α * 1e3) # Convertendo para mNp/m
@printf("Constante de fase (β): %.2f rad/m\n", β)
@printf("Comprimento de onda (λ): %.2f m\n", λ)
@printf("Velocidade de fase (vₚ): %.2e m/s\n", vₚ)
@printf("Impedância característica (Z₀): %.2f %+.4fj Ω\n", real(Z₀), imag(Z₀))
