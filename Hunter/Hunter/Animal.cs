using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hunter
{
    internal class Animal
    {
        const double basePrice = 100000;
        public virtual double getPrice()
        {
            return basePrice;
        }
    }
}
