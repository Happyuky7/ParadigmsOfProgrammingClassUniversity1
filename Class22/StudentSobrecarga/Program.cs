using System;

class Student
{
    private string Name;
    private int ID;

    public Student(string name, int id)
    {
        this.Name = name;
        this.ID = id;
    }

    // Sobrecarga del operador +
    public static Student operator +(Student s1, Student s2)
    {
        if (s1 == null || s2 == null)
        {
            throw new System.ArgumentNullException("Both students must be non-null");
        }
        return new Student(s1.Name + s2.Name, s1.ID + s2.ID);
    }

    public static bool operator ==(Student s1, Student s2)
    {
        if (ReferenceEquals(s1, null))
            return ReferenceEquals(s2, null);
        return s1.Equals(s2);
    }

    // Sobrecarga del operador !=
    public static bool operator !=(Student s1, Student s2)
    {
        return !(s1 == s2);
    }

    // Sobrecarga Equals() para comparación logica
    public override bool Equals(object obj)
    {
        if (obj is Student other)
        {
            return this.Name == other.Name && this.ID == other.ID;
        }
        return false;
    }

    // Sobrecarga GetHashCode()
    public override int GetHashCode()
    {
        return HashCode.Combine(Name, ID);
    }

}

class Program
{
    static void Main(string[] args)
    {
        Student s1 = new Student("Juan", 123);
        Student s2 = new Student("Maria", 456);
        Student s3 = new Student("Juan", 123);

        Console.WriteLine($"s1 == s2: {s1 == s2}"); // false
        Console.WriteLine($"s1 == s3: {s1 == s3}"); // true
        Console.WriteLine($"s1.Equals(s3): {s1.Equals(s3)}"); // false
        Console.Write()
    }
}