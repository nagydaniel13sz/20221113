using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFurniture
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Furniture[] butorok = new Furniture[3];

            butorok[0] = new Table();
            butorok[1] = new Bed();
            butorok[2] = new Chair();

            for (int i = 0; i < butorok.Length; i++)
            {
                Console.WriteLine(butorok[i].GetType()+" Butor tulajdonsagai");
                Console.WriteLine("ERTEK: "+butorok[i].getPrice());
                Console.WriteLine();
            }
            Console.ReadKey();
        }
    }
}
