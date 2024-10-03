using DifferentialEquations
using Printf

# Constantes do problema
v0 = 0.1  # Velocidade inicial em m/s
t1 = 0.1  # Tempo final em segundos para o qual queremos calcular os valores
B = 0.3   # Campo magnético em Tesla
d = 0.07  # Distância entre os trilhos em metros

# Parte (a): Calcular a velocidade em t = 0
v_t0 = v0  # A velocidade inicial é v0 em t = 0

@printf("v(t=0) = %.2f m/s\n", v_t0)

# Parte (b): Resolver a equação diferencial para y(t)
# Definição da equação diferencial dy/dt = v0 * exp(20y)

dydt!(dy, y, p, t) = dy[1] = v0 * exp(20 * y[1])

# Intervalo de tempo para a solução
tspan = (0.0, t1)

# Resolver a equação diferencial usando o pacote DifferentialEquations.jl
prob = ODEProblem(dydt!, [0.0], tspan)
sol = solve(prob)

# Calcular y(t) em t = 0.1 e converter para centímetros
y_t1 = sol(t1)[1]
@printf("y(t=0.1) = %.2f cm\n", y_t1 * 100)

# Parte (c): Calcular a velocidade em função de y
v(y) = v0 * exp(20 * y)

# Calcular a velocidade em y(t = 0.1)
v_t1 = v(y_t1)
@printf("v(t=0.1) = %.3f m/s\n", v_t1)

# Parte (d): Calcular o campo elétrico induzido E e a diferença de potencial V_12
E = v_t1 * B
V_12 = E * d
@printf("V_12(t=0.1) = %.2f mV\n", V_12 * 1000)
