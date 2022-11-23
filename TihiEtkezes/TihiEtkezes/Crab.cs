using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TihiEtkezes
{
    internal class Crab: Food
    {
        const uint meret = 5;
        const int szorzas = 10;
        public override int Value(int i)
        {
            return base.Value(i) * szorzas;
        }
    }
}
