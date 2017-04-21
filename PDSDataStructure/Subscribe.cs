using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDSDataStructure
{
    public class Subscribe
    {
        public int Id { get; set; }

        public int StationId { get; set; }

        public int PackageId { get; set; }

        public System.DateTime Datetime { get; set; }

        public virtual Package Package { get; set; }

        public virtual Station Station { get; set; }
    }
}
