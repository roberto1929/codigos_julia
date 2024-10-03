# Permeabilidade magnética do vácuo (T m/A)
const mu_0 = 4π * 1e-7

# Corrente no fio (Amperes)
I = 5

# Distância do fio (metros)
r = 0.02

# Calculando o campo magnético (Teslas)
B = (mu_0 * I) / (2π * r)

# Arredondando o resultado para duas casas decimais
B_arredondado = round(B, digits=5)

println("O campo magnético a uma distância de ", r, " metros do fio é de ", B_arredondado, " Teslas.")
