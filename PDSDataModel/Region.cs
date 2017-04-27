using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDSDataModel
{
    public class Region
    {
        public Region()
        {
            this.ServiceCenters = new HashSet<ServiceCenter>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string Code { get; set; }

        public virtual ICollection<ServiceCenter> ServiceCenters { get; set; }
    }
}
