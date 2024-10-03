using ForwardDiff

# Definição das funções que descrevem o campo vetorial
F(x,y) = [cos(x), sin(y)]
F(v) = F(v...)

# Ponto onde queremos calcular o campo vetorial
x0 = [0.5, 0.5]

J = ForwardDiff.jacobian(F, x0)

# Resultado do campo vetorial
println("O jacobiano da função f em (", x0[1], ", ", x0[2], ") é: ", jacobiano)