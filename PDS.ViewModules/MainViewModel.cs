using Prism.Events;
using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDS.ViewModules
{
    [Export]
    [PartCreationPolicy(CreationPolicy.NonShared)]
    public class MainViewModel : BindableBase
    {
        [ImportingConstructor]
        public MainViewModel(IEventAggregator eventAggregator)
        {
            //eventAggregator.GetEvent<ProductSupporterSelectedEvent>().Subscribe(RefreshProduct);
        }
    }
}
