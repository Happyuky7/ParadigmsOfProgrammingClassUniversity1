function rot3(s::String)
    result = String[]
    for c in s
        if isletter(c)
            new_char = isuppercase(c) ? Char(((Int(c) - Int('a') + 3) % 26) + Int('a')) :
                                    Char(((Int(c) - Int('A') + 3) % 26) + Int('A'))
            push!(result, new_char)
        else
            push!(result, c)
        end
    end
    return join(result)
end

print("Ingrese una palabra para convertir a ROT3: ")
input_string = readline()
convertido = rot3(input_string)

println("Tu frase: $input_string convertida a ROT3: $convertido")
