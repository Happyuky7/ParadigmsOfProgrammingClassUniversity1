# Julia Lang
# Realizar un progrma que calcule la sucesecion de Fibonacci del numero 1 hasta el 1.000.000 (1 millon)
# y imprimir el numero en la consola.

function fibonacci(n)
    if n == 0
        return 0
    elseif n == 1
        return 1
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
end

function calcular_fibonacci(n)
    for i in 1:n
        println("Fibonacci iteración (", i, ") el numero es: ", fibonacci(i))
    end
end

calcular_fibonacci(1_000_000)

# Nota poco eficiente se muere el programa a partir de 40 iteraciones.
