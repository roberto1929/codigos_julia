@time begin
using QuadGK

# Função para calcular a integral interna
function integrando_interno(x, y)
    return -24 / (x^2 + y^2 + 9)^(3/2)
end

# Função para calcular a integral externa
function integrando_externo(y)
    resultado, _ = quadgk(x -> integrando_interno(x, y), -Inf, Inf)
    return resultado
end

# Cálculo da integral externa no intervalo -2 a 2
H_y, _ = quadgk(integrando_externo, -2, 2)

# Multiplicando pelo fator constante
H_y *= 1 / (4 * π)

println("H em P(0, 0, 3) = ", round(H_y, digits = 3), " A/m na direção y")
end