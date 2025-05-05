import managers.Estudiantes;

import java.util.List;

public class Main {

    public static void main(String[] args) {

        System.out.println("\n Start Coding \n");

        // Create an instance of Estudiantes
        Estudiantes estudiante = new Estudiantes("12345678-9", "Juan Perez", "Ingeniería", 2020, List.of("Matemáticas", "Programación"));

        // Print
        System.out.println("RUT: " + estudiante.getRut());
        System.out.println("Nombre: " + estudiante.getNombre());
        System.out.println("Carrera: " + estudiante.getCarrera());
        System.out.println("Year de Ingreso: " + estudiante.getYearIngreso());
        System.out.println("Cursos Aprobados: " + estudiante.getCursosAprobados());

        System.out.println("\n\n");

        // Change rut estudiante
        estudiante.setRut("98765432-1");
        // Print Change
        System.out.println("Change Estudiante 1 RUT: " + estudiante.getRut());

        System.out.println("\n\n");


        Estudiantes estudiante2 = new Estudiantes("12345678-K", "Maria Lopez", "Arquitectura", 2019, List.of("Dibujo", "Historia"));

        // Print
        System.out.println("RUT: " + estudiante2.getRut());
        System.out.println("Nombre: " + estudiante2.getNombre());
        System.out.println("Carrera: " + estudiante2.getCarrera());
        System.out.println("Year de Ingreso: " + estudiante2.getYearIngreso());
        System.out.println("Cursos Aprobados: " + estudiante2.getCursosAprobados());

        System.out.println("\n\n");

        System.out.println("\n End Coding \n");


    }

}