using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Regions;

namespace PDS.Infrastructure
{
    [Export(typeof(AutoPopulateExportedViewsBehavior))]
    [PartCreationPolicy(CreationPolicy.NonShared)]
    public class AutoPopulateExportedViewsBehavior : RegionBehavior, IPartImportsSatisfiedNotification
    {
        protected override void OnAttach()
        {
            Console.WriteLine("Attatch region:" + Region.Name);
            AddRegisteredViews();
        }

        public void OnImportsSatisfied()
        {
            AddRegisteredViews();
        }

        private void AddRegisteredViews()
        {
            if (Region != null)
            {
                var viewEntries = RegisteredViews.Where(v => v.Metadata.RegionName == Region.Name).OrderBy(v => v.Metadata.ArrangeIndex);
                foreach (var viewEntry in viewEntries)
                {
                    var view = viewEntry.Value;
                    if (!Region.Views.Contains(view))
                    {
                        Region.Add(view);
                    }
                }
            }
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1819:PropertiesShouldNotReturnArrays", Justification = "MEF injected values"), ImportMany(AllowRecomposition = true)]
        public Lazy<object, IViewRegionRegistration>[] RegisteredViews
        {
            get;
            set;
        }
    }
}
