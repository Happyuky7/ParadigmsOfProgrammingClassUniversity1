# Ejercicio 1.

# Julia Lang:
# Define una funcion de manera que la evaluación de la expresion (a + f(b)) * (c + f(b)) cuando se realiza
# de izquierda a  derecha tenga un resultado diferente del obtenido al ecalar de derecha a izquierda.

# Julia Lang:
# Define a function such that the evaluation of the expression (a + f(b)) * (c + f(b)) when performed
# from left to right has a different result from the one obtained when scaling from right to left.

global count = 1

# Function that changes the value of count in each evaluation.
function f(b)
    
    global count
    count += 1
    return b^count 

end

# Funtion to eval expression "(a + f(b)) * (c + f(b))".
function eval(a, b, c)
    return (a + f(b)) * (c + f(b))
end

# Check if input is a number in Int or Float64 format.
function number(x)
    try
        parse(Int, x)
        return parse(Int, x)
    catch
        try
            parse(Float64, x)
            return parse(Float64, x)
        catch
            return nothing
        end
    end
end

while true

    # Value a:
    print("Ingrese el valor de a: ")
    input_a = readline()
    if number(input_a) === nothing
        error("Invalid input for a (Int or Float64)")
    end
    a = number(input_a)

    # Value b:
    print("Ingrese el valor de b: ")
    input_b = readline()
    if number(input_b) === nothing
        error("Invalid input for b (Int or Float64)")
    end
    b = number(input_b)

    # Value c:
    print("Ingrese el valor de c: ")
    input_c = readline()
    if number(input_c) === nothing
        error("Invalid input for c (Int or Float64)")
    end
    c = number(input_c)

    # Start evaluation
    println()
    println("Evaluando...")
    println()
    println()

    # Evaluate from left to right
    result1 = eval(a, b, c)
    println("Resultado (izquierda a derecha): ", result1)


    global count = 1

    # Evaluate from right to left
    result2 = eval(c, b, a)
    println("Resultado (derecha a izquierda): ", result2)


    # Check if user continue other calculation or exit.
    print("Desea ingresar nuevos valores? (y/n): ")
    new = readline()
    if lowercase(new) == "y" || lowercase(new) == "yes"
        println("Continuando...")
        println()
        println()
        continue
    else 
        println()
        println()
        println("Hasta luego!")
        break
    end

end