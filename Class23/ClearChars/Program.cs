using System;

public class ClearChars 
{
    private string _word;

    public ClearChars(string word)
    {
        _word = word;
    }



}


public class Program
{

    public static void Main(string[] args)
    {
        Console.WriteLine("Enter a word:");
        string input = Console.ReadLine();
        ClearChars clearChars = new ClearChars(input);
        Console.WriteLine($"The word is: {input}");
    }
}