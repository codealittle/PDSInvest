using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDSDataAccessor
{
    public class DataAccessor
    {
        private PackageDefinitionEntities mPackageDefinitionEntities = new PackageDefinitionEntities();

        public DataAccessor()
        {
        }

        public PDSDataStructure.PackageDefinition GetPackageDefinition()
        {
            var packageDefinition = new PDSDataStructure.PackageDefinition();

            return null;
        }

        private PDSDataStructure.Subscribe CloneSubscribe(Subscribe subscribe)
        {
            var clonedSubscribe = new PDSDataStructure.Subscribe
            {
                 Id = subscribe.Id,
                 StationId = subscribe.StationId,
                 PackageId = subscribe.PackageId,
                 Datetime = subscribe.Datetime
            };

            return clonedSubscribe;
        }
    }
}
