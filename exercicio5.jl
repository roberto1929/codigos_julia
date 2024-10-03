@time begin
   
# Definindo constantes
ρ = 0.08  # Raio do cilindro em metros
ρS = z -> 5e-20 * abs(z)  # Densidade superficial de carga em nC/m²

# Integrando sobre a superfície cilíndrica
integral_φ = 2pi
integral_z = 2 * (1/20)  # Integração de e^(-20|z|) de -∞ a ∞

# Calculando a carga total
Q_total = 0.4 * integral_φ * integral_z  # Em nC
println("Carga total presente: ", round(Q_total, digits = 2), " nC")

# Limites da integração
z_min = 0.01  # 1 cm em metros
z_max = 0.05  # 5 cm em metros
φ_min = π/6  # 30 graus em radianos
φ_max = π/2  # 90 graus em radianos

# Integração numérica usando quadgk
using QuadGK

integral_φ, _ = quadgk(x -> 1, φ_min, φ_max)
integral_z, _ = quadgk(z -> exp(-20 * z), z_min, z_max)

# Calculando a carga envolvida
Q_enc = 0.4 * integral_φ * integral_z  # Em nC

# Convertendo para pC (1 nC = 1000 pC)
Q_enc_pC = Q_enc * 1000
println("Fluxo elétrico que deixa a superfície: ", round(Q_enc_pC, digits = 2), " pC")
 
end