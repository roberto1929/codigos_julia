using LinearAlgebra
using Profile
using ProfileView
 
@profile begin
    
# Definindo constantes
ke = 8.99e9  # Constante eletrostática em N m² / C²
q = 2e-6     # Carga em Coulombs (2 μC)

# Posições
A = [4, 3, 5]
P = [8, 12, 2]

# Vetor posição r
r = P .- A
r_magnitude = norm(r)

# Campo elétrico em coordenadas cartesianas
E_cart = ke * q / r_magnitude^3 .* r

# Coordenadas cilíndricas de P
ρ = sqrt(P[1]^2 + P[2]^2)
φ = atan(P[2] / P[1])

# Componentes do campo elétrico em coordenadas cilíndricas
E_ρ = E_cart[1] * cos(φ) + E_cart[2] * sin(φ)
E_φ = -E_cart[1] * sin(φ) + E_cart[2] * cos(φ)
E_z = E_cart[3]

println("Componente Eρ: ", round(E_ρ,digits = 1), " aρ")
println("Componente Eφ: ", round(E_φ,digits = 1), " aφ ")
println("Componente Ez: ", round(E_z,digits = 1), " az")

end

# Visualizando o perfil de execução
ProfileView.view()  # Abre uma janela com o gráfico de perfil