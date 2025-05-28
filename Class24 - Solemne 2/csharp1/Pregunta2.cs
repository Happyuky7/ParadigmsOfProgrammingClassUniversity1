/*
--------------------------------------------------------------------------------------------------------------

Pregunta 2:

--------------------------------------------------------------------------------------------------------------

Define qué son clases y objetos en la programación orientada a objetos (POO). 

Definición:
- Las clases son plantillas o moldes que definen la estructura y el comportamiento de los objetos.
- Los objetos son instancias de estas clases, que contienen datos y pueden realizar acciones definidas por los métodos de la clase.

--------------------------------------------------------------------------------------------------------------

Explica su importancia y proporciona un ejemplo en C#, donde se cree una 
clase Perro con atributos (Nombre, Raza, Edad) y 
un método Ladrar() que imprima un mensaje indicando que el perro está ladrando.

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
    public void Ladrar()
    {
        Console.WriteLine($"{Nombre} está ladrando.");
    }
}



public class Program
{
    public static void Main(string[] args)
    {
        // Create instance of class Perro
        Perro perro1 = new Perro("Rex", "Pastor Alemán", 5);

        Console.WriteLine("-------------------------------------------------");
        Console.WriteLine("Llamando al método Ladrar:");

        // Call method Ladrar
        perro1.Ladrar();

        Console.WriteLine("-------------------------------------------------");
    }
}