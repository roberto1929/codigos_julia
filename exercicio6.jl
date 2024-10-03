using QuadGK
using Profile
using ProfileView

@profile begin
# Definir os limites de integração
x_min, x_max = 0, 2
y_min, y_max = 0, 3
z_min, z_max = 0, 5

# Calcular a integral do divergente de D com respeito a y
integral_y, _ = quadgk(y -> 8 * y, y_min, y_max)

# Calcular a integral com respeito a z (para z, a função é constante 1)
integral_z, _ = quadgk(z -> 1, z_min, z_max)

# Calcular a integral com respeito a x (para x, a função também é constante 1)
integral_x, _ = quadgk(x -> 1, x_min, x_max)

# Calcular a carga total multiplicando as integrais
carga_total = integral_y * integral_z * integral_x

# Imprimir a carga total em nC
println("Carga total dentro do paralelepípedo: ", carga_total * 1e9, " nC")  # Convertendo para nC
end

# Visualizando o perfil de execução
ProfileView.view()  # Abre uma janela com o gráfico de perfil