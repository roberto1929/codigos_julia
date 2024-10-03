function soma_1_a_100()
    soma = 0
    for i in 1:100
        soma += i
    end
    return soma
end

println("A soma dos números de 1 a 100 é: ", soma_1_a_100())
