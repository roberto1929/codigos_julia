using Printf

# Definir constantes
const ε0 = 8.854e-12 # Permissividade do vácuo (F/m)
const μ0 = 4π * 1e-7 # Permeabilidade do vácuo (H/m)

# Definir as propriedades do meio
εr = 5
μr = 3

# Parâmetros de entrada
t = 6e-9 # Tempo em segundos (6 ns)
z = 0.3 # Posição z em metros

# Definir a amplitude do campo elétrico e suas constantes
E0 = 20
ω = 2 * 10^8
β = 2.58

# Calcular o campo elétrico em t e z
E_field = E0 * cos(ω * t - β * z)

# Calcular a densidade de carga superficial ρs
ε = εr * ε0
ρs = ε * E_field

# Calcular a impedância do meio
η = sqrt((μr * μ0) / (εr * ε0))

# Calcular o campo magnético H
H_field = E_field / η

# Calcular a densidade de corrente superficial K
K_surface = -H_field

# Exibir os resultados usando printf
@printf "Densidade de carga superficial (ρs): %.2f nC/m^2\n" ρs * 1e9
@printf "Campo magnético (H): %.2f mA/m\n" H_field * 1e3
@printf "Densidade de corrente superficial (K): %.2f mA/m\n" K_surface * 1e3
