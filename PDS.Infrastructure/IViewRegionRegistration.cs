﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PDS.Infrastructure
{
    public interface IViewRegionRegistration
    {
        string RegionName { get; }
        int ArrangeIndex { get; }
    }
}
