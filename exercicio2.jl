using LinearAlgebra

# Constante eletrostática
const k = 8.9875517923e9  # N m^2/C^2

# Posições das cargas
pos_A = [1, 0, 0]
pos_B = [-1, 0, 0]
pos_C = [0, 1, 0]
pos_D = [0, -1, 0]

# Cargas em nanoCoulombs (nC)
q_A = 50e-9
q_B = 50e-9 
q_C = 50e-9
q_D = 50e-9

# Vetor posição de A para as outras cargas
r_BA = pos_B - pos_A
r_CA = pos_C - pos_A
r_DA = pos_D - pos_A

# Distâncias entre as cargas
dist_BA = norm(r_BA)
dist_CA = norm(r_CA)
dist_DA = norm(r_DA)

# Vetor força sobre A devido a B
F_BA = k * q_A * q_B / dist_BA^2 * (r_BA / dist_BA)

# Vetor força sobre A devido a C
F_CA = k * q_A * q_C / dist_CA^2 * (r_CA / dist_CA)

# Vetor força sobre A devido a D
F_DA = k * q_A * q_D / dist_DA^2 * (r_DA / dist_DA)

# Força total sobre A
F_total_A = F_BA + F_CA + F_DA

# Componente x da força total sobre A em microNewtons (μN)
F_total = F_total_A[1] * -1e6  # Convertendo de Newtons para microNewtons

println("Força total na carga em A na direção x:")
println(round(F_total, digits = 1), "ax μN")
