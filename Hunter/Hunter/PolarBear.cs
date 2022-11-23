using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hunter
{
    internal class PolarBear: Animal
    {
        const double polarBearFactor = 2.4;

        public override double getPrice()
        {
            return base.getPrice() * polarBearFactor;
        }
    }
}
