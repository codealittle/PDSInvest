using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDSDataModel
{
    public class Station
    {
        public Station()
        {
            this.Subscribes = new HashSet<Subscribe>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public int ServiceCenterId { get; set; }

        public virtual ServiceCenter ServiceCenter { get; set; }

        public virtual ICollection<Subscribe> Subscribes { get; set; }
    }
}
