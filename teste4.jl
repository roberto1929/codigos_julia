using Plots

# Definir constantes
V0 = 1.0             # Amplitude da onda de tensão (V)
ω = 6e8              # Frequência angular (rad/s)
β = 2.25             # Constante de fase (rad/m)
Z0 = 93.6 - im*3.64  # Impedância característica (Ω)

# Definir uma função para calcular a corrente instantânea real
function corrente(z, t, V0, β, ω, Z0)
    return -2 * V0 / abs(Z0) * sin(β * z) * sin(ω * t)
end

# Gerar dados para visualização
z = 0:0.01:10  # Posição ao longo da linha de transmissão (m)
t = 0:0.01:2   # Tempo (s)

# Criar uma grade para z e t
Z = repeat(z', length(t), 1)
T = repeat(t, 1, length(z))

# Calcular a corrente ao longo da linha e no tempo
I = corrente.(Z, T, V0, β, ω, Z0)

# Plotar a corrente ao longo da linha de transmissão
Plots.surface(z, t, I, xlabel="Posição (m)", ylabel="Tempo (s)", zlabel="Corrente (A)", title="Padrão de Onda Estacionária para a Corrente", legend=false)