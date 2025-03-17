e = [1 2;3 4]
f = [5 6;7 8]

hcat_result = [e f] # Combina lado a lado
vcat_result = [e;f] # Combina arriba y abajo

println(hcat_result)
println()
println(vcat_result)

g = [1 2;3 4]
println(g[1, 2]) # 2

h = reshape(1:6, 2, 3) # Matriz de 2x3
println(h)