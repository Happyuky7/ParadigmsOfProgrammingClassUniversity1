meses = Set(["Enero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"])

push!(meses, "Febrero")

println(meses)

pop!(meses, "Noviembre")

println(meses)

in("Diciembre", meses)
