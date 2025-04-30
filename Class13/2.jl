function rot3(s::String)
    result = ""
    for c in s
        if isletter(c)
            base = isuppercase(c) ? 'A' : 'a'
            new_c = Char(base + (c - base + 3) % 26)
            result *= new_c
        else
            result *= c
        end
    end
    return result
end

println("Ingrese una palabra para convertir a ROT3:")
input_string = "readline"
converted_string = rot3(input_string)

println("Tu frase ingresada: $input_string")
println("Tu frase convertida a ROT3: $converted_string")
