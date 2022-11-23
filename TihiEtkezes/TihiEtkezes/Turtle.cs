using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TihiEtkezes
{
    internal class Turtle: Food
    {
        static int happiness = 0;
        static int fedLevel = 0;
        protected int Eat(Food&food)
        {
            if (fedLevel < 1001)
            {
                if (happiness < 500)
                {
                    return ++happiness;
                    return ++fedLevel;
                    
                }
                else
                {
                    return ++fedLevel;
                }
                
            }
            return 0;
        }
    }
}
