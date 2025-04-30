import Plots
import FreeType, FileIO

# 1) Crear un arreglo de 100 posiciones tipo Int64

a = []

function g_100()
    for i in range(1,100)
        push!(a, nothing)
    end
    return a
end

println("100 Slots: ", g_100(), "\n\n")

# 2) Completar con ceros

function array_ceros()
    for i in range(1, 100)
        a[i] = Int64(0)
    end
    return a
end

println("Array de ceros: ", array_ceros(), "\n\n")

# 3) Completar con numeros aleatorios

function random_nums()
    for i in range(1, 100)
        random = rand(Int64)
        a[i] = Int64(random)
    end
    return a
end

println("Los valores random generados para cada Slot son: ", random_nums(),"\n\n")

# 4) Imprimir del 31 al 44

function imprimir_31_to_44()
    for i in range(31, 44)
        println("El numero en la posicion ", i, " es: ", a[i], "\n\n")
    end
end

imprimir_31_to_44()

# 5) Suma 10 a cada posicion

function sum_10_to_position()
    for i in range(1, 100)
        a[i] += 10
    end
    return a
end

println("Los valores de cada poscion con la suma de 10 es: ", sum_10_to_position(), "\n\n")

# 6) Imprimir grafico


function grafico()
    Plots.gr()
    Plots.plot(a, title="Grafico")
end

grafico()
