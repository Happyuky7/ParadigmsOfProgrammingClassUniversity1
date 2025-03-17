# Ejercicio 1.

# Julia Lang:
# Define una funcion de manera que la evaluación de la expresion (a + f(b)) * (c + f(b)) cuando se realiza
# de izquierda a  derecha tenga un resultado diferente del obtenido al ecalar de derecha a izquierda.

# Julia Lang:
# Define a function such that the evaluation of the expression (a + f(b)) * (c + f(b)) when performed
# from left to right has a different result from the one obtained when scaling from right to left.

global call_count = 0

function f(x)
    global call_count
    call_count += 1
    if call_count == 1
        return x^2
    else
        return x^2 + 1
    end
end

a = 2.3
b = 2.56
c = 5.3432848324832498324777777

# Evaluación de izquierda a derecha
result1 = (a + f(b)) * (c + f(b))
# Evaluación de derecha a izquierda
result2 = (c + f(b)) * (a + f(b))



if (result1 != result2)
    println("Los resultados son diferentes")
    
    println("Resultado 1: ", result1)
    println("Resultado 2: ", result2)


else
    println("Los resultados son iguales")
    
    println("Resultado 1: ", result1)
    println("Resultado 2: ", result2)

end



