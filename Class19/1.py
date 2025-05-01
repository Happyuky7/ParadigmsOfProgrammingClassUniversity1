import random
import os

def generate_rut():
    """Generates a random valid Chilean RUT."""
    rut_number = random.randint(1000000, 99999999)
    return format_rut(rut_number)

def calculate_dv(rut_number):
    """Calculates the verification digit (DV) for a given RUT number."""
    reversed_digits = map(int, reversed(str(rut_number)))
    factors = [2, 3, 4, 5, 6, 7, 2, 3]
    weighted_sum = sum(d * f for d, f in zip(reversed_digits, factors))
    dv = 11 - (weighted_sum % 11)
    if dv == 11:
        return '0'
    elif dv == 10:
        return 'K'
    else:
        return str(dv)

def format_rut(rut_number):
    """Formats the RUT number with dots and hyphen."""
    dv = calculate_dv(rut_number)
    return "{:,}-{}".format(rut_number, dv).replace(",", ".")

def generate_rut_list(n):
    """Generates a list of n random valid Chilean RUTs."""
    rut_list = []
    for i in range(n):
        rut = generate_rut()
        print(rut)
        rut_list.append(rut)
    
    # Create file with the RUTs
    with open(os.path.join(os.getcwd(), "ruts.txt"), "w") as file:
        for rut in rut_list:
            file.write(rut + "\n")
    return rut_list


if __name__ == "__main__":
    rut = generate_rut_list(10)
    print(rut)