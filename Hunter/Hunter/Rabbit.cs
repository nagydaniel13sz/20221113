using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hunter
{
    internal class Rabbit: Animal
    {
        const double rabbitFactor = 0.3;

        public override double getPrice()
        {
            return base.getPrice() * rabbitFactor;
        }
    }
}
