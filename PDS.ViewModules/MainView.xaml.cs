﻿using PDS.Infrastructure;
using System;
using System.Collections.Generic;
using System.ComponentModel.Composition;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PDS.ViewModules
{
    /// <summary>
    /// Interaction logic for MainView.xaml
    /// </summary>
    [ViewExport(RegionName = RegionNames.MainViewRegion)]
    [PartCreationPolicy(CreationPolicy.NonShared)]
    public partial class MainView : UserControl
    {
        public MainView()
        {
            InitializeComponent();
        }
    }
}
