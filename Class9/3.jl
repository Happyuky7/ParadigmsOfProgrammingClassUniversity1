A = ["A" "B" "C"; "D" "E" "F"]
B = ["G" "H" "I"; "J" "K" "L"]

# Creamis la matriz C mediante el producto elemento a elemento
C = [A[i,j]*B[i,j] for i in 1:size(A,1), j in 1:size(A,2)]

# Mostramos la matriz resultante C.
println("La matriz resultante C es:")
println(C)