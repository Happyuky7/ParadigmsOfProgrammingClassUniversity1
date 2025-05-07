using System;

class Calculadora
{
    public static void Main()
    {
        Console.WriteLine("Calculadora in C#");
        Console.WriteLine("- 1 Sumar");
        Console.WriteLine("- 2 Restar");
        Console.WriteLine("- 3 Multiplicar");
        Console.WriteLine("- 4 Dividir");
        Console.WriteLine("- 5 Salir");
        Console.WriteLine("Seleccione una opción: ");

        int option = Convert.ToInt32(Console.ReadLine());

        if (option == 1)
        {
            Console.WriteLine("Ingrese el primer número: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Ingrese el segundo número: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            int resultado = Sumar(num1, num2);
            Console.WriteLine("El resultado de la suma es: " + resultado);
        }
        else if (option == 2)
        {
            Console.WriteLine("Ingrese el primer número: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Ingrese el segundo número: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            int resultado = Restar(num1, num2);
            Console.WriteLine("El resultado de la resta es: " + resultado);
        }
        else if (option == 3)
        {
            Console.WriteLine("Ingrese el primer número: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Ingrese el segundo número: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            int resultado = Multiplicar(num1, num2);
            Console.WriteLine("El resultado de la multiplicacion es: " + resultado);
        }
        else if (option == 4)
        {
            Console.WriteLine("Ingrese el primer número: ");
            int num1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Ingrese el segundo número: ");
            int num2 = Convert.ToInt32(Console.ReadLine());
            int resultado = Dividir(num1, num2);
            Console.WriteLine("El resultado de la division es: " + resultado);
        }
        else if (option == 5)
        {
            Salir();
    
        }
        else
        {
            Console.WriteLine("Opción no válida. Intente de nuevo.");
            Main();
        }



    }

    public static int Sumar(int num1, int num2)
    {
        return num1 + num2;
    }

    public static int Restar(int num1, int num2)
    {
        return num1 - num2;
    }

    public static int Multiplicar(int num1, int num2) 
    {
        return num1 * num2;
    }

    public static int Dividir(int num1, int num2)
    {
        if (num2 == 0)
        {
            Console.WriteLine("Error: División por cero no permitida.");
            return 0;
        }
        return num1 / num2;
    }

    public static void Salir()
    {
        Console.WriteLine("Saliendo...");
        Environment.Exit(0);
    }

}