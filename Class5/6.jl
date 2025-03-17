a = [1, 2, 3]

println(a) # [1, 2, 3]

push!(a, 4)

println(a) # [1, 2, 3, 4]

b = [1 2 3]

println(b) # [1 2 3]

c = [1 2 3; 4 5 6]

println(c) # [1 2 3; 4 5 6]

matriz_ceros = zeros(2, 3) # Matriz de ceros de 2x3
matriz_unos = ones(2, 3) # Matriz de unos de 2x3

println(matriz_ceros)
println()
println(matriz_unos)

d = [n^2 for n in 1:5]

println(d) # [1, 4, 9, 16, 25]