using Printf

# Função para calcular H devido a um filamento de corrente
function calculate_H(I, x, y, x0, y0)
    ρ = sqrt((x - x0)^2 + (y - y0)^2)
    a_phi_x = -(y - y0) / ρ
    a_phi_y = (x - x0) / ρ
    H_magnitude = I / (2 * π * ρ)
    H_x = H_magnitude * a_phi_x
    H_y = H_magnitude * a_phi_y
    return H_x, H_y
end

# Dados fornecidos
I = 8.0e-3  # Corrente em Amperes
x = 2.0  # Coordenada x do ponto P em metros
y = 3.0  # Coordenada y do ponto P em metros

# Parte (a) - Filamento no eixo z
H_x_a, H_y_a = calculate_H(I, x, y, 0.0, 0.0)

# Parte (b) - Filamento em x = -1, y = 2
H_x_b, H_y_b = calculate_H(I, x, y, -1.0, 2.0)

# Parte (c) - Ambos os filamentos presentes
H_x_total = H_x_a + H_x_b
H_y_total = H_y_a + H_y_b

# Impressão dos resultados com conversão direta para μA/m
@printf "Parte (a): H = %.2f ax + %.2f ay μA/m\n" (H_x_a * 1e6) (H_y_a * 1e6)
@printf "Parte (b): H = %.2f ax + %.2f ay μA/m\n" (H_x_b * 1e6) (H_y_b * 1e6)
@printf "Parte (c): H = %.2f ax + %.2f ay μA/m\n" (H_x_total * 1e6) (H_y_total * 1e6)
