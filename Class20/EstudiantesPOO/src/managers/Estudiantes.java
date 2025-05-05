package managers;

import java.util.List;

public class Estudiantes {

    // Attributes
    public static String rut;
    public static String nombre;
    public static String carrera;
    public static Integer yearIngreso;
    public static List<String> cursosAprobados;

    // Constructor
    public Estudiantes(String rut, String nombre, String carrera, Integer yearIngreso, List<String> cursosAprobados) {
        this.rut = rut;
        this.nombre = nombre;
        this.carrera = carrera;
        this.yearIngreso = yearIngreso;
        this.cursosAprobados = cursosAprobados;
    }

    // Getters
    public String getRut() {
        return rut;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCarrera() {
        return carrera;
    }

    public Integer getYearIngreso() {
        return yearIngreso;
    }

    public List<String> getCursosAprobados() {
        return cursosAprobados;
    }

    // Setters
    public void setRut(String rut) {
        this.rut = rut;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public void setYearIngreso(Integer yearIngreso) {
        this.yearIngreso = yearIngreso;
    }

    public void setCursosAprobados(List<String> cursosAprobados) {
        this.cursosAprobados = cursosAprobados;
    }
}
