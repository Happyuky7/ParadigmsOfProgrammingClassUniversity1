# Julia Lang
# Realizar un progrma que calcule la sucesecion de Fibonacci del numero 1 hasta el 1.000.000 (1 millon)
# y imprimir el numero en la consola.

function fibonacci(n)
    a = 0
    b = 1
    for i in 1:n
        a, b = b, a + b
    end
    return a
end

function calcular_fibonacci(n)
    for i in 1:n
        println("Fibonacci iteración (", i, ") el numero es: ", fibonacci(i))
    end
end

calcular_fibonacci(1_000_000)

#calcular_fibonacci(50)

