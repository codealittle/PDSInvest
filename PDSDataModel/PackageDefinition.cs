using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDSDataModel
{
    public class PackageDefinition
    {
        public List<Package> Packages { get; set; }

        public List<Region> Regions { get; set; }

        public PackageDefinition()
        {
            Packages = new List<Package>();
            Regions = new List<Region>();
        }
    }
}
