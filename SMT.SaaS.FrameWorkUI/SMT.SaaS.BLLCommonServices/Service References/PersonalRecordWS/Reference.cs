﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.269
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SMT.SaaS.BLLCommonServices.PersonalRecordWS {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="T_PF_PERSONALRECORD", Namespace="http://schemas.datacontract.org/2004/07/EngineDataModel")]
    [System.SerializableAttribute()]
    public partial class T_PF_PERSONALRECORD : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CHECKSTATEField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CONFIGINFOField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.Nullable<System.DateTime> CREATEDATEField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ISFORWARDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string ISVIEWField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string MODELCODEField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string MODELDESCRIPTIONField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string MODELIDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string OWNERCOMPANYIDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string OWNERDEPARTMENTIDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string OWNERIDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string OWNERPOSTIDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string PERSONALRECORDIDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string SYSTYPEField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.Nullable<System.DateTime> UPDATEDATEField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string CHECKSTATE {
            get {
                return this.CHECKSTATEField;
            }
            set {
                if ((object.ReferenceEquals(this.CHECKSTATEField, value) != true)) {
                    this.CHECKSTATEField = value;
                    this.RaisePropertyChanged("CHECKSTATE");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string CONFIGINFO {
            get {
                return this.CONFIGINFOField;
            }
            set {
                if ((object.ReferenceEquals(this.CONFIGINFOField, value) != true)) {
                    this.CONFIGINFOField = value;
                    this.RaisePropertyChanged("CONFIGINFO");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.Nullable<System.DateTime> CREATEDATE {
            get {
                return this.CREATEDATEField;
            }
            set {
                if ((this.CREATEDATEField.Equals(value) != true)) {
                    this.CREATEDATEField = value;
                    this.RaisePropertyChanged("CREATEDATE");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string ISFORWARD {
            get {
                return this.ISFORWARDField;
            }
            set {
                if ((object.ReferenceEquals(this.ISFORWARDField, value) != true)) {
                    this.ISFORWARDField = value;
                    this.RaisePropertyChanged("ISFORWARD");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string ISVIEW {
            get {
                return this.ISVIEWField;
            }
            set {
                if ((object.ReferenceEquals(this.ISVIEWField, value) != true)) {
                    this.ISVIEWField = value;
                    this.RaisePropertyChanged("ISVIEW");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string MODELCODE {
            get {
                return this.MODELCODEField;
            }
            set {
                if ((object.ReferenceEquals(this.MODELCODEField, value) != true)) {
                    this.MODELCODEField = value;
                    this.RaisePropertyChanged("MODELCODE");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string MODELDESCRIPTION {
            get {
                return this.MODELDESCRIPTIONField;
            }
            set {
                if ((object.ReferenceEquals(this.MODELDESCRIPTIONField, value) != true)) {
                    this.MODELDESCRIPTIONField = value;
                    this.RaisePropertyChanged("MODELDESCRIPTION");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string MODELID {
            get {
                return this.MODELIDField;
            }
            set {
                if ((object.ReferenceEquals(this.MODELIDField, value) != true)) {
                    this.MODELIDField = value;
                    this.RaisePropertyChanged("MODELID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string OWNERCOMPANYID {
            get {
                return this.OWNERCOMPANYIDField;
            }
            set {
                if ((object.ReferenceEquals(this.OWNERCOMPANYIDField, value) != true)) {
                    this.OWNERCOMPANYIDField = value;
                    this.RaisePropertyChanged("OWNERCOMPANYID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string OWNERDEPARTMENTID {
            get {
                return this.OWNERDEPARTMENTIDField;
            }
            set {
                if ((object.ReferenceEquals(this.OWNERDEPARTMENTIDField, value) != true)) {
                    this.OWNERDEPARTMENTIDField = value;
                    this.RaisePropertyChanged("OWNERDEPARTMENTID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string OWNERID {
            get {
                return this.OWNERIDField;
            }
            set {
                if ((object.ReferenceEquals(this.OWNERIDField, value) != true)) {
                    this.OWNERIDField = value;
                    this.RaisePropertyChanged("OWNERID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string OWNERPOSTID {
            get {
                return this.OWNERPOSTIDField;
            }
            set {
                if ((object.ReferenceEquals(this.OWNERPOSTIDField, value) != true)) {
                    this.OWNERPOSTIDField = value;
                    this.RaisePropertyChanged("OWNERPOSTID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string PERSONALRECORDID {
            get {
                return this.PERSONALRECORDIDField;
            }
            set {
                if ((object.ReferenceEquals(this.PERSONALRECORDIDField, value) != true)) {
                    this.PERSONALRECORDIDField = value;
                    this.RaisePropertyChanged("PERSONALRECORDID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string SYSTYPE {
            get {
                return this.SYSTYPEField;
            }
            set {
                if ((object.ReferenceEquals(this.SYSTYPEField, value) != true)) {
                    this.SYSTYPEField = value;
                    this.RaisePropertyChanged("SYSTYPE");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.Nullable<System.DateTime> UPDATEDATE {
            get {
                return this.UPDATEDATEField;
            }
            set {
                if ((this.UPDATEDATEField.Equals(value) != true)) {
                    this.UPDATEDATEField = value;
                    this.RaisePropertyChanged("UPDATEDATE");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="PersonalRecordWS.IPersonalRecordService")]
    public interface IPersonalRecordService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPersonalRecordService/AddPersonalRecord", ReplyAction="http://tempuri.org/IPersonalRecordService/AddPersonalRecordResponse")]
        bool AddPersonalRecord(SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD model);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPersonalRecordService/AddPersonalRecords", ReplyAction="http://tempuri.org/IPersonalRecordService/AddPersonalRecordsResponse")]
        bool AddPersonalRecords(SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD[] models);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPersonalRecordService/UpdatePersonalRecord", ReplyAction="http://tempuri.org/IPersonalRecordService/UpdatePersonalRecordResponse")]
        bool UpdatePersonalRecord(SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD model);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPersonalRecordService/GetPersonalRecord", ReplyAction="http://tempuri.org/IPersonalRecordService/GetPersonalRecordResponse")]
        SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD[] GetPersonalRecord(int pageIndex, string strOrderBy, string checkstate, string filterString, string strCreateID, string BeginDate, string EndDate, ref int pageCount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPersonalRecordService/DeletePersonalRecord", ReplyAction="http://tempuri.org/IPersonalRecordService/DeletePersonalRecordResponse")]
        bool DeletePersonalRecord(string _personalrecordID);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPersonalRecordService/GetPersonalRecordModelByID", ReplyAction="http://tempuri.org/IPersonalRecordService/GetPersonalRecordModelByIDResponse")]
        SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD GetPersonalRecordModelByID(string _personalrecordID);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPersonalRecordService/GetPersonalRecordModelByModelID", ReplyAction="http://tempuri.org/IPersonalRecordService/GetPersonalRecordModelByModelIDResponse" +
            "")]
        SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD GetPersonalRecordModelByModelID(string _sysType, string _modelCode, string _modelID, string _IsForward);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IPersonalRecordService/GetPersonalRecordList", ReplyAction="http://tempuri.org/IPersonalRecordService/GetPersonalRecordListResponse")]
        SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD[] GetPersonalRecordList(int pageIndex, string strOrderBy, string checkstate, string filterString, string strCreateID, string Isforward, string BeginDate, string EndDate, ref int pageCount);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IPersonalRecordServiceChannel : SMT.SaaS.BLLCommonServices.PersonalRecordWS.IPersonalRecordService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class PersonalRecordServiceClient : System.ServiceModel.ClientBase<SMT.SaaS.BLLCommonServices.PersonalRecordWS.IPersonalRecordService>, SMT.SaaS.BLLCommonServices.PersonalRecordWS.IPersonalRecordService {
        
        public PersonalRecordServiceClient() {
        }
        
        public PersonalRecordServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public PersonalRecordServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public PersonalRecordServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public PersonalRecordServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool AddPersonalRecord(SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD model) {
            return base.Channel.AddPersonalRecord(model);
        }
        
        public bool AddPersonalRecords(SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD[] models) {
            return base.Channel.AddPersonalRecords(models);
        }
        
        public bool UpdatePersonalRecord(SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD model) {
            return base.Channel.UpdatePersonalRecord(model);
        }
        
        public SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD[] GetPersonalRecord(int pageIndex, string strOrderBy, string checkstate, string filterString, string strCreateID, string BeginDate, string EndDate, ref int pageCount) {
            return base.Channel.GetPersonalRecord(pageIndex, strOrderBy, checkstate, filterString, strCreateID, BeginDate, EndDate, ref pageCount);
        }
        
        public bool DeletePersonalRecord(string _personalrecordID) {
            return base.Channel.DeletePersonalRecord(_personalrecordID);
        }
        
        public SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD GetPersonalRecordModelByID(string _personalrecordID) {
            return base.Channel.GetPersonalRecordModelByID(_personalrecordID);
        }
        
        public SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD GetPersonalRecordModelByModelID(string _sysType, string _modelCode, string _modelID, string _IsForward) {
            return base.Channel.GetPersonalRecordModelByModelID(_sysType, _modelCode, _modelID, _IsForward);
        }
        
        public SMT.SaaS.BLLCommonServices.PersonalRecordWS.T_PF_PERSONALRECORD[] GetPersonalRecordList(int pageIndex, string strOrderBy, string checkstate, string filterString, string strCreateID, string Isforward, string BeginDate, string EndDate, ref int pageCount) {
            return base.Channel.GetPersonalRecordList(pageIndex, strOrderBy, checkstate, filterString, strCreateID, Isforward, BeginDate, EndDate, ref pageCount);
        }
    }
}
