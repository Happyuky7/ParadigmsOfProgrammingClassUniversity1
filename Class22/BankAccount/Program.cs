using System;

class BankAccount
{
    private decimal balance;

    public BankAccount(decimal initialBalance)
    {
        if (initialBalance >= 0)
        {
            balance = initialBalance;
        }
        else
        {
            throw new ArgumentException("El saldo inicial no puede ser negativo.");
        }
    }

    public void Deposit(decimal amount)
    {
        if (amount > 0)
        {
            balance += amount;
            Console.WriteLine($"Depositvo exitoso. Nuevo saldo: {balance:C}");
        }
        else
        {
            throw new ArgumentException("El monto del depósito debe ser positivo.");
        }
    }

    public void Withdraw(decimal amount)
    {
        if (amount > 0 && amount <= balance)
        {
            balance -= amount;
            Console.WriteLine($"Retiro exitoso. Nuevo saldo: {balance:C}");
        }
        else
        {
            throw new ArgumentException("Saldo insuficiente o monto inválido para el retiro.");
        }
    }

    public decimal GetBalance()
    {
        return balance;
    }

    public static void Main(string[] args)
    {
        try
        {
            BankAccount account = new BankAccount(1000);
            Console.WriteLine($"Saldo inicial: {account.GetBalance():C}");
            account.Deposit(500);
            account.Withdraw(200);
            Console.WriteLine($"Saldo final: {account.GetBalance():C}");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
        }
    }
}