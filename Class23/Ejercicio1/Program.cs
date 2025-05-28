/*
Ejercicio 1:

- Crear una clase Automovil.
- Agregar dos metodos.
- Agregar una sobrecarga (Matema)
*/

using System;

public class Automovil
{

    // Atributos
    public int Id { get; set; }
    public string Brand { get; set; }
    public string Model { get; set; }
    
    public int Year { get; set; }

    public string Color { get; set; }

    // Constructor
    public Automovil(int Id, string brand, string model, int year, string color)
    {
        this.Id = Id;
        Brand = brand;
        Model = model;
        Year = year;
        Color = color;
    }

    // Metodos
    public void getInfo()
    {
        Console.WriteLine($"Id: {Id}, Brand: {Brand}, Model: {Model}, Year: {Year}");
    }

    public void setColor(string color)
    {
        Color = color;
        Console.WriteLine($"The color of the car is: {color}");
    }

    public int setVelocity(int velocity)
    {
        return velocity;
    }

    public int setVelocity(int velocity, int acceleration)
    {
        return velocity + acceleration;
    }

    public void getColor()
    {
        Console.WriteLine($"The color of the car is: {Color}");
    }
    
    public static bool Compare(Automovil a, Automovil b)
    {
        if (a.Id != b.Id)
        {
            if (a.Model == b.Model)
            {
                return true;
            }
            else
            {
                return false;
            }
        } 
        return false; // Return false when IDs are the same
    }

}

public class Program
{
    public static void Main(string[] args)
    {
        Automovil car1 = new Automovil(1, "Toyota", "Corolla", 2020, "Red");
        Automovil car3 = new Automovil(3, "Toyota", "Corolla", 2020, "Red");
        Automovil car2 = new Automovil(2, "Toyota", "Subaru", 2020, "Red");

        // Comparar dos objetos
        Console.WriteLine("Comparing two objects:");
        Console.WriteLine($"Car 1: {car1.Brand} {car1.Model}");
        Console.WriteLine($"Car 2: {car2.Brand} {car2.Model}");
        Console.WriteLine($"Are they the same? {Automovil.Compare(car1, car2)}");
        
        
        Console.WriteLine($"Compare Car 1 and Car 3: \u001b[32m{Automovil.Compare(car1, car3)}\u001b[0m.");

        /*Console.WriteLine("Car Information:");
        car.getInfo();
        Console.WriteLine($"Color: {car.Color}");
        car.setColor("Blue");
        Console.WriteLine($"New Color: {car.Color}");
        car.getColor();
        Console.WriteLine($"Velocity: {car.setVelocity(60)}");
        Console.WriteLine($"Velocity with acceleration: {car.setVelocity(60, 20)}");

        // Sobrecarga de metodos
        Console.WriteLine($"Velocity: {car.setVelocity(60)}");
        Console.WriteLine($"Velocity with acceleration: {car.setVelocity(60, 20)}");
        Console.WriteLine($"Velocity with acceleration: {car.setVelocity(60, 20)}");
        Console.WriteLine($"Velocity with acceleration: {car.setVelocity(60, 20)}");
        Console.WriteLine($"Velocity with acceleration: {car.setVelocity(60, 20)}");*/
    }
}