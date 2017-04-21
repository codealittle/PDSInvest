using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDSDataStructure
{
    public class Package
    {
        public Package()
        {
            this.PackageVersions = new HashSet<PackageVersion>();
            this.Subscribes = new HashSet<Subscribe>();
        }

        public int Id { get; set; }

        public string Name { get; set; }

        public string PartNumber { get; set; }

        public string Description { get; set; }

        public bool IsVersionControlled { get; set; }

        public virtual ICollection<PackageVersion> PackageVersions { get; set; }

        public virtual ICollection<Subscribe> Subscribes { get; set; }
    }
}
