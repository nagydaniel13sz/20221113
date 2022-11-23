using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFurniture
{
    internal class Bed: Furniture
    {
        const double bedFactor = 2.4;
        public override double getPrice()
        {
            return base.getPrice() * bedFactor;
        }
    }
}
