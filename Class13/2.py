def rot3(input_string):
    result = []
    for char in input_string:
        if 'a' <= char <= 'z':
            result.append(chr((ord(char) - ord('a') + 3) % 26 + ord('a')))
        elif 'A' <= char <= 'Z':
            result.append(chr((ord(char) - ord('A') + 3) % 26 + ord('A')))
        else:
            result.append(char)
    return ''.join(result)

# Solicitar al usuario que ingrese una palabra
input_string = input("Ingrese una palabra para convertir a ROT3: ")

# Convertir la palabra usando ROT3
converted_string = rot3(input_string)

# Imprimir el resultado
print(f"Tu frase ingresada: {input_string}")
print(f"Tu frase convertida a ROT3: {converted_string}")
