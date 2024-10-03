using Unitful
using PhysicalConstants.CODATA2018

q1 = 3e-6u"μC"
q2 = -5e-6u"μC"

r = 0.1u"m"

const k =  1 / (4π * ε_0)

F = k * abs(q1 * q2) / r^2

F_newtons = ustrip(F)

println("A força entre as cargas é: ", F_newtons, " N")
