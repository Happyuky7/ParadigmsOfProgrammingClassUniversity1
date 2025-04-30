# 1) Reemplace un patron de una cadena (replace)

a = "Hello World"
replace(a, "Hello" => "Hola")

# 2) Extraer numeros de una cadena (match) abc123

b = "Hello World 2025"
e = match(r"[a-zA-Z]+", b) # (Para Letras) # r"\d+" (Para numeros)
println(e)


# 3) Dividir una cadena con un patron (split)
c = "Hola Mundo"
split(c)
 
# 4) Validar un correo electronico
d = "mail@domain.com"
function validated_email(email)

    if contains(email, "@") == true
        println("Validate in email @")
    end

    if contains(email, ".com") || contains(email, ".net")
        println("Validate extension domain")
    end
end
validated_email(d)
println("El correo: ", d, " es: ", )