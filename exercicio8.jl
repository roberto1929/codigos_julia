using Printf
using Profile
using ProfileView

@profile begin
# Dados fornecidos
I = 8.0  # Corrente em Amperes
x = 0.3  # Coordenada x do ponto P2 em metros
y = 0.4  # Coordenada y do ponto P2 em metros

# Ângulos para o eixo x
α_1x = deg2rad(-90.0)
α_2x = atan(y / x)  # tan⁻¹(y/x) em radianos

# Ângulos para o eixo y
α_1y = -atan(x / y)  # -tan⁻¹(x/y) em radianos
α_2y = deg2rad(90.0)

# Cálculo do campo magnético para o eixo x
H_x = (I / (4 * π * x)) * (sin(α_2x) - sin(α_1x))

# Cálculo do campo magnético para o eixo y
H_y = (I / (4 * π * y)) * (sin(α_2y) - sin(α_1y))

# Soma dos campos magnéticos
H_total = H_x + H_y

# Impressão dos resultados
@printf("Campo magnético devido ao eixo x (H_x): %.2f/π A/m\n", π * H_x)
@printf("Campo magnético devido ao eixo y (H_y): %.2f/π A/m\n", π * H_y)
@printf("Campo magnético total (H_total): %.2f/π A/m\n", π * H_total)

# Também mostrando os valores sem a função de π
@printf("\nCampo magnético devido ao eixo x (H_x): %.2f A/m\n", H_x)
@printf("Campo magnético devido ao eixo y (H_y): %.2f A/m\n", H_y)
@printf("Campo magnético total (H_total): %.2f A/m\n", H_total)
@printf("Campo magnético total em termos de vetor unitário (a_z): -%.2f a_z A/m\n", H_total)
end

# Visualizando o perfil de execução
ProfileView.view()  # Abre uma janela com o gráfico de perfil