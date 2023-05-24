using System;

namespace Woodrock_Animal_Rescue
{
    class Program
    {
        static void Main(string[] args)
        {
            var abstractanimal = new AbstractAnimal();
            Console.WriteLine($"Hello World! {abstractanimal.ReturnMessage()}");
        }
    }
}
