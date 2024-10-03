function produto_vetorial(v1, v2)
    if length(v1) == 3 && length(v2) == 3
        return [
            v1[2] * v2[3] - v1[3] * v2[2],
            v1[3] * v2[1] - v1[1] * v2[3],
            v1[1] * v2[2] - v1[2] * v2[1]
        ]
    else
        println("Os vetores devem ter 3 componentes para calcular o produto vetorial.")
        return nothing
    end
end

vetor1 = [1, 0, 0]
vetor2 = [0, 1, 0]
println("O produto vetorial dos vetores é: ", produto_vetorial(vetor1, vetor2))
