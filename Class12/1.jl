# 
occursin(r"\d+", "Es el año 2025")

replace("Hola mundo", r"mundo" => "Julia")

match(r"\d+", "1234abc")

match(r"[a-zA-Z]+", "1234abc")

split("rojo,verde,azul", r",")

occursin(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$","ejemplo@mail.com")

# Validar una dirrecion IP
println("Validar IPv4")
occursin(r"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.)", "127.0.0.112")
#occursin(r"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", "127.0.0.112")

#Cambiar formato de una fecha de / a -

println("Cambiar formato de una fecha de / a -")
replace("01/01/2025", r"^[0-9_-]+\/[0-9_-]+\/[0-9_-]+" => "01-01-2025")