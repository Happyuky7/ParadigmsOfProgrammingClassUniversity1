using System;

namespace managers
{
    public class Estudiantes
    {
        public string Id { get; set; }
        public string Nombre { get; set; }
        public int Edad { get; set; }

        public string Year { get; set; }

        public Estudiantes(string id, string nombre, int edad)
        {
            this.Id = id;
            Nombre = nombre;
            Edad = edad;
        }

        public void MostrarInformacion()
        {
            Console.WriteLine($"ID: {Id}, Nombre: {Nombre}, Edad: {Edad}");
        }

        public void addInfo(string year)
        {
            Console.WriteLine($"ID: {Id}, Nombre: {Nombre}, Edad: {Edad}, Year: {year}");
        }
    }
}