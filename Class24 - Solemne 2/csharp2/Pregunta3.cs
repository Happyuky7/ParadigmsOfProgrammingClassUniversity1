/*
--------------------------------------------------------------------------------------------------------------

Pregunta 3:

--------------------------------------------------------------------------------------------------------------

Explica la diferencia entre sobreescritura y sobrecarga en POO. 

Explicación:
- Sobrecarga: Es la capacidad de definir múltiples métodos con el mismo nombre pero diferentes parámetros en la misma clase. Permite que un método realice diferentes tareas según los argumentos que recibe.
- Sobreescritura: Es la capacidad de redefinir un método en una clase derivada que ya ha sido definido en la clase base. Permite modificar el comportamiento de un método heredado.

--------------------------------------------------------------------------------------------------------------

Proporciona ejemplos en C# donde se muestre cómo se implementan ambas técnicas en la clase Perro.

Para la sobrecarga, define múltiples versiones del método Ladrar().
Para la sobreescritura, crea una clase PerroGuardian que herede de Perro y redefina el método Ladrar().

--------------------------------------------------------------------------------------------------------------
*/

using System;

public class Perro 
{
    // Attributes
    public string Nombre { get; set; }
    public string Raza { get; set; }
    public int Edad { get; set; }

    // Constructor
    public Perro(string nombre, string raza, int edad)
    {
        Nombre = nombre;
        Raza = raza;
        Edad = edad;
    }

    // Methods

    // Method ladrar
    public virtual void Ladrar()
    {
        Console.WriteLine($"{Nombre} está ladrando.");
    }

    // Sobrecarga of method Ladrar
    public void Ladrar(string mensaje)
    {
        Console.WriteLine($"{Nombre} dice: {mensaje}");
    }
}


public class PerroGuardian : Perro
{
    // Constructor
    public PerroGuardian(string nombre, string raza, int edad) : base(nombre, raza, edad)
    {
    }

    // Sobreescritura of method Ladrar
    public override void Ladrar()
    {
        Console.WriteLine($"{Nombre} está ladrando fuertemente para proteger la casa.");
    }

}


public class Program
{
    public static void Main(string[] args)
    {
        // Create instance of class Perro
        Perro perro1 = new Perro("Rex", "Pastor Alemán", 5);
        Perro perro2 = new Perro("Luna", "Bulldog", 2);
        Perro perro3 = new Perro("Firulais", "Beagle", 4);
        Perro perro4 = new Perro("Max", "Labrador", 3);

        Console.WriteLine("-------------------------------------------------");
        Console.WriteLine("Llamando al método Ladrar:");

        // Call method Ladrar
        perro1.Ladrar();
        perro2.Ladrar();
        perro3.Ladrar();
        perro4.Ladrar();

        Console.WriteLine("-------------------------------------------------");
        Console.WriteLine("Sobrecarga del método Ladrar:");

        // Call sobrecarga of method Ladrar
        perro1.Ladrar("¡Guau!");
        perro2.Ladrar("¡Guau! ¡Guau!");
        perro3.Ladrar("¡Guau! ¡Guau! ¡Guau!");
        perro4.Ladrar("¡Guau! ¡Guau! ¡Guau! ¡Guau!");

        Console.WriteLine("-------------------------------------------------");
        Console.WriteLine("Sobreescritura del método Ladrar:");

        // Call sobreescritura of method Ladrar
        PerroGuardian perroGuardian = new PerroGuardian("Thor", "Rottweiler", 4);
        perroGuardian.Ladrar();
        
        Console.WriteLine("-------------------------------------------------");
        
    }
}