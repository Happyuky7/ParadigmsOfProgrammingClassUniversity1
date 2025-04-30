# 4. Convierte un número binario a decimal usando parse en Julia

a = bitstring(1034)
b = xor(a)

println("El numero binario $a a decimal es: ", parse(Float64, "$b"))