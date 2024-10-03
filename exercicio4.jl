using LinearAlgebra
@time begin
    
# Constante de permissividade do vácuo em C^2 / (N m^2)
const epsilon_0 = 8.854187817e-12
const k = 1 / (4 * π * epsilon_0)

# Dados do problema
q1 = -1e-9  # carga em C (na origem)

# Distâncias
r1 = norm([3, 1, 1])  # distância da origem até P(3, 1, 1)
r2 = norm([3 - 2, 1, 1])  # distância de (2, 0, 0) até P(3, 1, 1)

# Componentes do campo elétrico
E1x = k * q1 * 3 / r1^3
E2x_q2 = k / (3 * sqrt(3))

# Resolver para q2
q2 = - E1x / E2x_q2

println("A carga que deve ser inserida em (2, 0, 0) para fazer E_x zero em (3, 1, 1) é: ", round.(q2, digits=15), " C")

end