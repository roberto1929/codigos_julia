# Importar bibliotecas necessárias
using Plots

# Definir constantes

V0 = 1.0       # Amplitude da onda
omega = 2.0    # Frequência angular (rad/s)
beta = 1.0     # Constante de fase (rad/m)

# Definir a função que calcula a tensão total

function V_total(z, t)
    return 2 * V0 * cos(beta * z) * cos(omega * t)
end


# Definir os vetores de posição (z) e tempo (t)
z = LinRange(-10, 10, 200)   # 200 pontos de -10 a 10
t = LinRange(0, 2π, 200)     # 200 pontos de 0 a 2π

# Calcular a tensão total para cada combinação de z e t
V = [V_total(zi, ti) for zi in z, ti in t]

# Plot da tensão total em 3D
surface(z, t, V, xlabel="Posição (z)", ylabel="Tempo (t)",
 zlabel="Tensão (V)", title="Tensão Total (V(z,t))")
 


