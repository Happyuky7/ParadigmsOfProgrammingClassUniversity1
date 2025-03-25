# Julia Lang
# Si enumeramos todos los numeros naturales menores que 10, que son multiplos de 3 o 5, 
# obtenemos 3, 5, 6 y 9. La suma de estos multiplos es 23.
# Evalua la suma de todos los multiplos de 3 o 5 menores que 1000.

function multiplos_3_O_5_menores_a_1000(i)
    if i % 3 == 0 || i % 5 == 0
        println("Multiplo de 3 o 5: ", i)
        return i
    end
    return 0
end

function suma_multiplos_3_O_5_menores_a_1000()
    suma = 0
    for i in 1:999
        suma += multiplos_3_O_5_menores_a_1000(i)
        println("Suma: ", suma)
    end
    return suma
end

println("La suma de todos los numeros multiplos de 3 o 5 menores que 1000 es: ",
 suma_multiplos_3_O_5_menores_a_1000())