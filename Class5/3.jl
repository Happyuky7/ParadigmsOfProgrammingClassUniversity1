c = "Hola" * ", Mundo" # "Hola, Mundo"

nombre = "Julia"
println("Hola, $nombre !") # "Hola, Julia!"

str = "JuliaLang"
sub = str[1:3] # "Jul"
println(sub)

println(length(str)) # 9

println(uppercase(str)) # "JULIALANG"

println(lowercase(str)) # "julialang"

println(occursin("Julia", str)) # true

println(replace(str, "Lang" => "Lenguaje")) # "JuliaLenguaje"