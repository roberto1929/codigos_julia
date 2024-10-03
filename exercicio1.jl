# Constante eletrostática
ke = 8.9875e9  # N·m²/C²

# Cargas em Coulombs
q1 = 1e-9  # 1 nC
q2 = -2e-9  # -2 nC

r1 = [0.0, 0.0, 0.0]  # posição da carga q1
r2 = [1.0, 1.0, 1.0]  # posição da carga q2

r = r2 .- r1

dist = sqrt(sum(r .^ 2))

# Vetor unitário na direção de r
r_vet = r ./ dist

# Força sobre q1 devido a q2
F = ke * (q1 * q2) / dist^2 .* r_vet

# Força sobre q2 devido a q1 é simplesmente a negativa da força sobre q1
F1_on_q2 = F
F2_on_q1 = -F

println("Força sobre q1 devido a q2: ", round.(F1_on_q2, digits=20), " N")
println("Força sobre q2 devido a q1: ", round.(F2_on_q1, digits=20), " N")

