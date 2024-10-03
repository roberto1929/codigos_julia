using Printf

# Constantes
μC_to_C = 1e-6
mm_to_m = 1e-3
ε0 = 8.854e-12  # Permissividade do vácuo em F/m

# (a) Cálculo da carga total dentro da superfície esférica r = 10 mm
function calcular_carga_total(ρv, r1, r2)
    V = (4/3) * π * (r2^3 - r1^3)
    Q = ρv * V
    return Q
end

# (b) Cálculo de Dr em r = 10 mm
function calcular_Dr(Q, r)
    Dr = Q / (4 * π * r^2)
    return Dr
end

# (c) Cálculo de Dr em r = 20 mm
# Reutilizamos a função calcular_Dr com r = 20 mm

# Dados do problema
ρv = 80 * μC_to_C  # Densidade volumétrica de carga em C/m³
r1 = 8 * mm_to_m   # Raio interno em metros
r2 = 10 * mm_to_m  # Raio externo em metros
r3 = 20 * mm_to_m  # Raio para o cálculo de Dr fora da esfera em metros

# (a) Cálculo da carga total dentro da superfície esférica r = 10 mm
Q_total = calcular_carga_total(ρv, r1, r2)
@printf "Carga total dentro da superfície esférica r = 10 mm: %.2f pC\n"  (Q_total * 1e12)

# (b) Cálculo de Dr em r = 10 mm
Dr_10mm = calcular_Dr(Q_total, r2)
@printf "Dr em r = 10 mm: %.2f nC/m²\n" (Dr_10mm * 1e9)

# (c) Cálculo de Dr em r = 20 mm
Dr_20mm = calcular_Dr(Q_total, r3)
@printf "Dr em r = 20 mm: %.2f nC/m²\n" (Dr_20mm * 1e9)
