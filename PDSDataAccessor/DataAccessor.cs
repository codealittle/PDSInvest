using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDS.DataAccessor
{
    public class DataAccessor
    {
        private PackageDefinitionEntities mPackageDefinitionEntities = new PackageDefinitionEntities();

        public DataAccessor()
        {
        }

        public PDSDataModel.PackageDefinition GetPackageDefinition()
        {
            var packageDefinition = new PDSDataModel.PackageDefinition();

            return null;
        }

        private PDSDataModel.Subscribe CloneSubscribe(Subscribe subscribe)
        {
            var clonedSubscribe = new PDSDataModel.Subscribe
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
