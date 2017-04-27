using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDSDataModel
{
    public class PackageVersion
    {
        public int Id { get; set; }

        public string Version { get; set; }

        public System.DateTime ReleaseDatetime { get; set; }

        public string SetupName { get; set; }

        public int PackageId { get; set; }

        public virtual Package Package { get; set; }
    }
}
