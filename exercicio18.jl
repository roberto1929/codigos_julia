# Importar bibliotecas necessárias
using Printf

# Definir constantes
L = 0.35e-6   # Indutância por metro (H/m)
C = 40e-12    # Capacitância por metro (F/m)
G = 75e-6     # Condutância por metro (S/m)
R = 17        # Resistência por metro (Ω/m)
ω = 6e8       # Frequência angular (rad/s)

# Calcular a constante de propagação complexa γ
γ = sqrt((R + im * ω * L) * (G + im * ω * C))

# Calcular a constante de atenuação α
α = real(γ)

# Calcular a constante de fase β
β = imag(γ)

# Calcular o comprimento de onda λ
λ = 2π / β

# Calcular a impedância característica Z₀
Z₀ = sqrt((R + im * ω * L) / (G + im * ω * C))

# Imprimir os resultados formatados
@printf("Constante de propagação (γ): %.3f + %.3fj\n", real(γ), imag(γ))
@printf("Constante de atenuação (α): %.3f Np/m\n", α)
@printf("Constante de fase (β): %.2f rad/m\n", β)
@printf("Comprimento de onda (λ): %.2f m\n", λ)
@printf("Impedância característica (Z₀): %.2f %+.4fj Ω\n", real(Z₀), imag(Z₀))
