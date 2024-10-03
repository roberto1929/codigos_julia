function fatorial(n)
    if n == 0 || n == 1
        return 1
    else
        return n * fatorial(n - 1)
    end
end

numero = 5
println("O fatorial de $numero é: ", fatorial(numero))
