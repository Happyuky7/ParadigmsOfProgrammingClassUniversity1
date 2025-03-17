function saluda(nombre, saludo="Hola")
    println("$saludo, $nombre !")
end

saluda("Julia") # Usamos el valor por defecto
saluda("Julia", "Hi") # Sobreescribimos el valor por defecto