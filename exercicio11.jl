using Printf
@time begin
# Importar biblioteca para formatação de saída

# Importar biblioteca para cálculos vetoriais
using LinearAlgebra

# Dados do problema
v0 = 0.1  # Velocidade inicial em m/s
t0 = 0.0  # Tempo inicial em segundos
t1 = 0.1  # Tempo em que queremos calcular os valores, em segundos
B = [0, 0, 0.3]  # Campo magnético em Tesla, representado como um vetor
d = 0.07  # Distância entre os trilhos em metros

# Parte (a): Calcular a velocidade em t = 0
v_t0 = v0 * exp(20 * t0)
# A velocidade inicial não depende de y, então apenas multiplicamos pelo fator exponencial
@printf("v(t=0) = %.2f m/s\n", v_t0)

# Parte (b): Função para calcular y em função de t
function y(t)
    # Integração da equação diferencial dada: dy/dt = 0.1 * exp(20y)
    return -log(1 - 2 * t) / 20
end

# Calcular y em t = 0.1
y_t1 = y(t1)
# Convertendo de metros para centímetros
@printf("y(t=%g) = %.2f cm\n", t1 ,y_t1 * 100)

# Parte (c): Função para calcular a velocidade em função de y
function v(y)
    # A velocidade é dada pela equação v(y) = v0 * exp(20y)
    return v0 * exp(20 * y)
end

# Calcular a velocidade em y(t = 0.1)
v_t1 = v(y_t1)
@printf("v(t=0.1) = %.3f m/s\n", v_t1)

# Parte (d): Calcular o campo elétrico induzido E
# A velocidade é na direção y, representada como um vetor
v_vec = [0, v_t1, 0]  # v = v(t) * ay

# Calcular o produto vetorial E = v × B
E = cross(v_vec, B)

# A componente x do campo elétrico é relevante para o cálculo da diferença de potencial
V_12 = E[1] * d  # E[1] é a componente x de E

# Convertendo de volts para milivolts
@printf("V_12(t=0.1) = -%.2f mV\n", V_12 * 1000)
end