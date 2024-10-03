# Importar bibliotecas necessárias
using Printf

# Definir constantes
A_dB = 2.0           # Atenuação total em dB
L_m = 20.0           # Comprimento total da linha em metros

# (a) Fração da potência de entrada que chega até a saída
P_saida = 10^(-A_dB / 10)

# (b) Fração da potência de entrada que chega até o ponto central da linha
A_dB_por_m = A_dB / L_m
A_dB_meio = A_dB_por_m * (L_m / 2)
P_meio = 10^(-A_dB_meio / 10)

# (c) Coeficiente de atenuação exponencial α
α = 2.0 / (8.69 * L_m)     # Coeficiente de atenuação fornecido

# Imprimir os resultados formatados
@printf("Fração da potência de entrada que chega até a saída: %.2f\n", P_saida)
@printf("Fração da potência de entrada que chega até o ponto central da linha: %.2f\n", P_meio)
@printf("Coeficiente de atenuação exponencial (α): %.3f Np/m\n", α)
