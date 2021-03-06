﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace SMT.FBAnalysis.Service
{
    [DataContract]
    public class UploadFileModel
    {
        [DataMember]
        public string FileName { get; set; }

        [DataMember]
        public byte[] File { get; set; }
    }
}
