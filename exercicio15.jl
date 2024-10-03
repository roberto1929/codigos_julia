# Importar bibliotecas necessárias
using Printf
@time begin
    
    # Definir constantes
    L = 0.25e-6  # Indutância por metro (H/m)
    C = 100e-12  # Capacitância por metro (F/m)
    f = 600e6    # Frequência (Hz)
    
    # Calcular a impedância característica Z₀
    Z₀ = sqrt(L / C)
    
    # Calcular a velocidade de fase vₚ
    vₚ = 1 / sqrt(L * C)
    
    # Calcular a frequência angular ω
    ω = 2 * π * f
    
    # Calcular a constante de defasamento β
    β = ω / vₚ
    
    # Imprimir os resultados
    @printf("Impedância característica (Z₀): %.2f Ω\n", Z₀)
    @printf("Velocidade de fase (vₚ): %.2e m/s\n", vₚ)
    @printf("Constante de defasamento (β): %.2f rad/m\n", β)
end
