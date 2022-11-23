using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFurniture
{
    internal class Chair: Furniture
    {
        const double chairFactor = 1.2;
        public override double getPrice()
        {
            return base.getPrice() * chairFactor;
        }
    }
}
