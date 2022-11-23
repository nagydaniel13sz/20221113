using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFurniture
{
    internal class Table: Furniture
    {
        const double tableFactor = 0.3;
        public override double getPrice()
        {
            return base.getPrice() * tableFactor;
        }
    }
}
