using Plots

# Definir constantes
V0 = 200  # Amplitude da onda de tensão (V)
omega = 6.28e8  # Frequência angular (rad/s)
beta = π  # Constante de fase (rad/m)
Z0 = 50  # Impedância característica (Ω)
vp = 2e8  # Velocidade de fase (m/s)
t_max = 1e-8  # Tempo máximo para a animação (s)
z_max = 2  # Posição máxima ao longo da linha (m)
frames = 100  # Número de quadros na animação

# Criar grid de posição e tempo
z = range(0, z_max, length=500)
t = range(0, t_max, length=frames)

# Função para calcular a onda de tensão
V_incidente(z, t) = V0 * cos.(omega .* t .- beta .* z)
V_refletida(z, t) = V0 * cos.(omega .* t .+ beta .* z)
V_total(z, t) = V_incidente(z, t) + V_refletida(z, t)

# Criar animação
anim = @animate for time in t
    plot(z, V_total(z, time), ylim=(-2*V0, 2*V0), label="V(z,t)", xlabel="z (m)", ylabel="Tensão (V)",
         title="Propagação de Onda Plana Uniforme", legend=false)
end

# Salvar a animação como GIF
gif(anim, "onda_plana_uniforme.gif", fps=20)
