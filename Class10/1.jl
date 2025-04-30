# Crear un arreglo de 100 posiciones tipo INT64.

a = []

function g_num(n)
    for i in range(0, n)
        push!(a, i)
    end 
    
    return a
end

#g_num(100)
println("Los numeros de la lista son: ", g_num(100))

# Imprimir los numeros de las posiciones 31 a 44.

b = []

function get_range1(initial::Int64, final1::Int64)

    for i in range(0, 100)

        if i >= initial
            if i == final1+1
                break
            else
                push!(b, a[i])
                println(a[i])
            end
        end 
    end

    return b
end

println("Los numeros de 31 al 44 son: ")
println(get_range1(32, 45))


# Acceda al elemento posicion 14

println("El elemento numero 14 es: ", a[15])

# Sume 10 a cada elemento.
function sum_10_element()

    c = []
    for i in a
        a[i] += 10
        push!(c, a[i])
    end

    return c    
end
println("Sumar 10 a cada elemento: ", sum_10_element())

# Imprimir Grafico.
import Plots
import FreeType, FileIO

Plots.gr()

function grafico()

    x = []
    y = []

    for i in a
        push!(x, i)
        push
    end

    Plots.plot(x, a, linewidth=1, title="Grafico de los numeros de la lista")

end 

# Suma 2 posiciones aleatorias. Utilice una variable Global y una Local.

global d = 0

function suma_aleatoria()
    
    num1, num2 = rand(0, 100)

    suma = a[num1] + a[num2]

    return suma
end

println("La suma de 2 numeros aleatorios es: ", suma_aleatoria())