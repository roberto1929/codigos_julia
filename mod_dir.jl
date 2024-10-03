using LinearAlgebra

function modulo_vetor(vetor)
    return norm(vetor)
end

function direcao_vetor(vetor)
    return atan(vetor[2], vetor[1])
end

vetor = [3, 4]
println("O módulo do vetor é: ", modulo_vetor(vetor))
println("A direção do vetor em radianos é: ", direcao_vetor(vetor))
