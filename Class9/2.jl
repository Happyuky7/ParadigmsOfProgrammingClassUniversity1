# Manejo de punteros

# Crear un puntero a un valor (con Ref)
ptr = Ref(10)
println(ptr[])

# Modificar elvalor de un Ref
ptr[] = 20
println(ptr[])

ptr[] = ptr[] + 1
println(ptr[])