meses = Dict("Enero" => 1, "Febrero" => 2, "Marzo" => 3, "Abril" => 4, "Mayo" => 5, "Junio" => 6, "Julio" => 7, "Agosto" => 8, "Septiembre" => 9, "Octubre" => 10, "Noviembre" => 11, "Diciembre" => 12)

println(meses)

for (mes, numero) in meses
    println("El mes de ", mes, " es el número ", numero)
end

println("El mes de Julio es el número ", meses["Julio"])

delete!(meses, "Julio")

println(meses)

# añadir un mes ficticio
meses["Mil"] = 1000

println(meses)

println("El mes de Mil es el número ", meses["Mil"])