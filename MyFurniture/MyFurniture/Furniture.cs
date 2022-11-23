using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFurniture
{
    internal class Furniture
    {
        const double basePrice = 25000;
        public virtual double getPrice()
        {
            return basePrice;
        }
    }
}
