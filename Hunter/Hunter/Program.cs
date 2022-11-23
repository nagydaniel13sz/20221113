using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hunter
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Animal[] allat = new Animal[3];

            allat[0] = new Rabbit();
            allat[1] = new PolarBear();
            allat[2] = new Squirrel();

            for (int i = 0; i < allat.Length; i++)
            {
                Console.WriteLine(allat[i].GetType() + " prémjének értéke");
                Console.WriteLine(allat[i].getPrice());
                Console.WriteLine();
            }
            Console.ReadKey();
        }
    }
}
