# Julia Lang
# Calcular la suma de 1^1 + 2^2 + 3^3 + ... + 1000^1000 y mostrar solo los ultimos 10 digitos.

function suma_potencias()
    suma = BigInt(0)
    for i in 1:1000
        suma += big(i)^big(i)
        println("Suma: ", suma)
        println()
        println()
        println("Cantidad de digitos: ", ndigits(suma))
        println()
        println("Cifra en notacion cientifica: ", to_scientific(suma))
        println()
        println()
    end
    return suma
end

function to_scientific(n::BigInt)
    s = string(n)
    d = length(s)
    if d <= 100
        return s
    else
        coeff = s[1:100]
        exponent = d - 100
        return coeff * "x10^" * string(exponent)
    end
end

function ultimos_10_digitos(n)
    return n % 10^10
end

println("Los ultimos 10 digitos de la suma de 1^1 + 2^2 + 3^3 + ... + 1000^1000 son: ",
    ultimos_10_digitos(suma_potencias()))