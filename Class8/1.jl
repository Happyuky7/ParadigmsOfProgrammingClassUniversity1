# Julia Lang
# Realizar un programa que calcule la sucesecion de Fibonacci del numero 1 hasta el 100
# y Graficar el resultado.

import Plots
import FreeType, FileIO

Plots.gr()

x = []
y = []

function fibonacci(n)
    a = 0
    b = 1
    for _ in 1:n
        a, b = b, a + b
    end
    return a
end

function calcular_fibonacci(n)
    for i in 1:n
        push!(x, i)
        push!(y, fibonacci(i))
        println("Fibonacci de ", i, " es ", fibonacci(i))
    end

end

calcular_fibonacci(100)

Plots.plot(x, y, linewidth=1, title="Fibonacci de 1 hasta 100")



