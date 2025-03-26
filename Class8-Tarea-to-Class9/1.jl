# Julia Lang
# Problema plantado:
#   Realiza un progrma que calcule la suma de 1^1 + 2^2 + 3^3 + ... + 1000^1000 
#   y muestre solo los ultimos 10 digitos de la suma.

# START CODE!

# Creamos nuestra funcion para calcular la suma de las potencias,
# esta resive como parametro el numero maximo hasta donde se calculara la suma.
# Una vez calculada la suma, se retorna el resultado.
function sum_powers(max::Int)

    # Inicializamos la variable suma con 0,
    # esta variable la trabajaremos con BigInt, producto de que el resultado de la suma,
    # puede ser un numero muy grande que no se pueda representar con un Int64 o Int128.
    sum = BigInt(0)
    
    # Creamos un ciclo for que va desde 1 hasta el numero maximo que se paso en el parametro.
    for i in 1:max
    
        # Calculamos la suma de la potencia de i elevado a i,
        # y la sumamos a la variable sum.
        # Al realizar los calculos con numeros muy grandes, es necesario utilizar la funcion big(), 
        # La cual convierte el numero a BigInt.
        sum += big(i)^big(i)
        # DEBUG: Imprimimos la suma en cada iteracion. (Descomentar para ver el resultado en cada iteracion).
        #println("\n\n Iteracion: $i -> Suma: $sum \n\n")
    end

    # Retornamos el resultado de la suma.
    return sum
end

# Creamos nuestra funcion para obtener los ultimos 10 digitos de un numero,
# esta resive como parametro el numero del cual se obtendran los ultimos 10 digitos.
# -----------------------------------------------------------------------------------------------
# Nota: El parametro n debe ser un BigInt para poder realizar la operacion. (Se definio asi para evitar
# errores al realizar la operacion con numeros muy grandes).
# -----------------------------------------------------------------------------------------------
# Una vez obtenidos los ultimos 10 digitos, se retorna el resultado.
function last_10_digits(n::BigInt)

    # Retornamos el residuo de n dividido entre 10^10,
    # el cual nos dara los ultimos 10 digitos de n.
    return n % 10^10
end

# Realizamos un print del resultado obtenido luego del calculo de la suma de las potencias.
# Para ello, llamamos a la funcion last_10_digits() y 
# le pasamos como parametro el resultado de la funcion sum_powers().
# -----------------------------------------------------------------------------------------------
# Nota: No se realizo que el usuario ingrese el numero maximo hasta donde se calculara la suma,
# ya que el enunciado pide que se calcule hasta 1000.
# -----------------------------------------------------------------------------------------------
println("Los ultimos 10 digitos de la suma de 1^1 + 2^2 + 3^3 + ... + 1000^1000 son: ",
    last_10_digits(sum_powers(1000)))

# Adicional:
# En caso de querer el resultado en notacion cientifica, se puede utilizar la siguiente funcion.
# Esta funcion recibe como parametro un numero BigInt y un entero que indica la cantidad de decimales.
# Una vez calculado el resultado, se retorna el resultado en notacion cientifica.
# -----------------------------------------------------------------------------------------------
# Nota: La funcion to_scientific() no se utilizo en este caso, ya que el enunciado pide que se muestren
# los ultimos 10 digitos de la suma.
# -----------------------------------------------------------------------------------------------
function to_scientific(n::BigInt, decimal::Int=10)

    # Convertimos n a string.
    s = string(n)

    # Obtenemos la longitud de s.
    d = length(s)

    # Si la longitud de s es menor o igual a 10, retornamos s.
    if d <= decimal
        return s
    else
        # En caso contrario, obtenemos los primeros 10 digitos de s.
        coeff = s[1:decimal]

        # Calculamos el exponente.
        exponent = d - decimal

        # Retornamos el resultado en notacion cientifica.
        return coeff * "x10^" * string(exponent)
    end
    
end

# DEBUG: Imprimimos el resultado en notacion cientifica. (Descomentar para ver el resultado en notacion cientifica).
#println("Resultado en notacion cientifica: $(to_scientific(sum_powers(1000), 5))  (Cifras significativas: 5)")

# END CODE!
# Path: Class8-Tarea-to-Class9/1.jl

