using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDSDataStructure
{
    public class ServiceCenter
    {
        public ServiceCenter()
        {
            this.Stations = new HashSet<Station>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public int RegionId { get; set; }

        public virtual Region Region { get; set; }

        public virtual ICollection<Station> Stations { get; set; }
    }
}
