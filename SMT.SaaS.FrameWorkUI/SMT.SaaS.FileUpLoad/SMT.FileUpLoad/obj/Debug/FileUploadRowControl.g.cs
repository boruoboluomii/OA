﻿#pragma checksum "F:\MyWorkSpace\OA\SMT.SaaS.FrameWorkUI\SMT.SaaS.FileUpLoad\SMT.FileUpLoad\FileUploadRowControl.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "70EE5C751108B700EB50238F0DFCFBB2"
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.34011
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Automation.Peers;
using System.Windows.Automation.Provider;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Resources;
using System.Windows.Shapes;
using System.Windows.Threading;


namespace SMT.FileUpLoad {
    
    
    public partial class FileUploadRowControl : System.Windows.Controls.UserControl {
        
        internal System.Windows.Controls.Border LayoutRoot;
        
        internal System.Windows.VisualStateGroup StatusGroup;
        
        internal System.Windows.VisualState Pending;
        
        internal System.Windows.VisualState Resizing;
        
        internal System.Windows.VisualState Error;
        
        internal System.Windows.VisualState Complete;
        
        internal System.Windows.VisualState Uploading;
        
        internal System.Windows.Controls.Image imagePreview;
        
        internal System.Windows.Controls.TextBlock TbName;
        
        internal System.Windows.Controls.ProgressBar PercentageProgress;
        
        internal System.Windows.Controls.Button removeButton;
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Windows.Application.LoadComponent(this, new System.Uri("/SMT.FileUpLoad;component/FileUploadRowControl.xaml", System.UriKind.Relative));
            this.LayoutRoot = ((System.Windows.Controls.Border)(this.FindName("LayoutRoot")));
            this.StatusGroup = ((System.Windows.VisualStateGroup)(this.FindName("StatusGroup")));
            this.Pending = ((System.Windows.VisualState)(this.FindName("Pending")));
            this.Resizing = ((System.Windows.VisualState)(this.FindName("Resizing")));
            this.Error = ((System.Windows.VisualState)(this.FindName("Error")));
            this.Complete = ((System.Windows.VisualState)(this.FindName("Complete")));
            this.Uploading = ((System.Windows.VisualState)(this.FindName("Uploading")));
            this.imagePreview = ((System.Windows.Controls.Image)(this.FindName("imagePreview")));
            this.TbName = ((System.Windows.Controls.TextBlock)(this.FindName("TbName")));
            this.PercentageProgress = ((System.Windows.Controls.ProgressBar)(this.FindName("PercentageProgress")));
            this.removeButton = ((System.Windows.Controls.Button)(this.FindName("removeButton")));
        }
    }
}

