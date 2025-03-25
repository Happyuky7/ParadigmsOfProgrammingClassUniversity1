# Julia Lang
# Realizar un progrma que calcule la sucesecion de Fibonacci del numero 1 hasta el 100.000.000 (100 millones)
# y imprimir el numero en la consola.

"""
Método: Optimización con multiplicación de matrices (O(log n))
El cálculo de Fibonacci usando matrices permite calcular el número de Fibonacci 
en tiempo logarítmico utilizando la propiedad de la matriz de Fibonacci:

[[F(n+1), F(n)], [F(n), F(n-1)]] = [[1, 1], [1, 0]]^n

Este método tiene una complejidad de tiempo O(log n), 
lo que lo hace mucho más rápido cuando n es muy grande.
"""

using LinearAlgebra

function fibonacci(n)

    F = [1 1; 1 0]
    result = [0 0]

    if n == 0
        return 0
    elseif n == 1
        return 1
    else

        for i in 1:n
            result = matriz_a(F, i - 1)
        end
        return result

    end
end

function matriz_a(M, exp)
    result = Matrix{Int}(I, 2, 2)
    base = M

    while exp > 0
        if exp % 2 == 1
            result = result * base
        end
        base = base * base
        exp = div(exp, 2)
    end

    return result
    
end

function calcular_fibonacci(n)
    for i in 1:n
        println("Fibonacci iteración (", i, ") el numero es: ", fibonacci(i))
    end
end

#calcular_fibonacci(100_000_000)
calcular_fibonacci(1_000_000)



