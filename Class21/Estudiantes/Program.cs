using System;
using System.Collections.Generic;
using managers;

public class Program
{
    public static void Main(string[] args)
    {
        Estudiantes.MostrarInformacion();
        Estudiantes estudiante1 = new Estudiantes("01", "Juan", 20);
        estudiante1.MostrarInformacion();
        estudiante1.addInfo("2023");

        Estudiantes estudiante2 = new Estudiantes("02", "Maria", 22);
        estudiante2.MostrarInformacion();

        Notas notas1 = new Notas("01", "Matematicas", new List<double> { 85, 90, 78 });
        notas1.MostrarInformacion();
        List<double> notasjuan = notas1.NotasList;
        notas1.CalcularNotaFinal(notasjuan[0], notasjuan[1], notasjuan[2]);

        Notas notas2 = new Notas("02", "Historia", new List<double> { 88, 92, 80 });
        notas2.MostrarInformacion();
        List<double> notasmaria = notas2.NotasList;
        notas2.CalcularNotaFinal(notasmaria[0], notasmaria[1], notasmaria[2]);


    }
}
