using QuadGK
using Plots
using Profile
using ProfileView

f(x, y) = x^2 + y^2

a, b = 0.0, 1.0
@profile begin

integrate_f(x) = quadgk(y -> f(x, y), a, b)[1]

# Primeiro, calcule a integral fora do perfil
integral, _ = quadgk(integrate_f, a, b)

    integral, _ = quadgk(integrate_f, a, b)
end

# Exibindo o valor da integral
println("A integral dupla do campo escalar é: ", integral)

# Gerando o gráfico da superfície do campo escalar
x = range(a, b, length=50)
y = range(a, b, length=50)

# Criação das grades para plotar a superfície
X = repeat(reshape(x, 1, :), length(y), 1)
Y = repeat(reshape(y, :, 1), 1, length(x))
Z = f.(X, Y)

# Plot da superfície
surface(x, y, Z, xlabel="x", ylabel="y", zlabel="f(x, y)", title="Campo Escalar")

# Visualizando o perfil de execução
ProfileView.view()  # Abre uma janela com o gráfico de perfil
