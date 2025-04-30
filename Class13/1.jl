# Julia Lang
# Desarrolle un programa que acceote un string de entrada y 
# permite cada letra 3 posiciones adeltante. 
# Imprimir String ingresado y String resuelto.
# cada = 3 (ROT 3)
# Ejemplo:
# A => D
# B => E
# C => F
# D => G
# Z => c

function rot3(s::String)
    a = ""
    for i in s
        replace(i, r"a" => "d")
        replace(i, r"b" => "e")
        replace(i, r"c" => "f")
        replace(i, r"d" => "g")
        replace(i, r"e" => "h")
        replace(i, r"f" => "i")
        replace(i, r"g" => "j")
        replace(i, r"h" => "k")
        replace(i, r"i" => "l")
        replace(i, r"j" => "m")
        replace(i, r"k" => "n")
    end
    return a
end

print("Ingrese una palabra para convertir a ROT3: ")
input_sting = "holaquetal"
convertido = rot3(input_sting)

println("Tu frase: $input_sting Convertida a ROT3 $convertido")

