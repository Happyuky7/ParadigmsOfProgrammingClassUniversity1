using System;
using System.Collections.Generic;

namespace managers
{
    public class Notas
    {
        public string Id { get; set; }
        public string Asignatura { get; set; }
        public List<double> NotasList { get; set; } = new List<double>();

        public Notas(string id, string asignatura, List<double> notas)
        {
            Id = id;
            Asignatura = asignatura;
            NotasList = notas;
        }


        public void MostrarInformacion()
        {
            Console.WriteLine($"ID: {Id}, Asignatura: {Asignatura}, Notas : {string.Join(", ", NotasList)}");
        }

        public void CalcularNotaFinal(double nota1, double nota2, double nota3)
        {
            Nota = (nota1 + nota2 + nota3) / 3;
            Console.WriteLine($"La nota final es: {Nota}");
        }
    }
}