using System;
#if !SILVERLIGHT
using System.Runtime.Serialization;
#endif
// ����ժҪ: ����ϵͳ������־�����ݽṹ��Ϣ
namespace SMT.SAAS.Platform.Model
{
    /// <summary>
    /// ��Ŀ������ϵ
    /// </summary>
#if !SILVERLIGHT
    [DataContract]
#endif
    public partial class ModuleDepends
    {
        public ModuleDepends()
        { }
        #region Model
        private string _moduleid;
        private string _dependid;
        /// <summary>
        /// ����ĿID
        /// </summary>
#if !SILVERLIGHT
        [DataMember]
#endif
        public string ModuleID
        {
            set { _moduleid = value; }
            get { return _moduleid; }
        }
        /// <summary>
        /// ��������ϵͳID��������Ŀ���ܻ��ж�������
        /// </summary>
#if !SILVERLIGHT
        [DataMember]
#endif
        public string DependID
        {
            set { _dependid = value; }
            get { return _dependid; }
        }
        #endregion Model

    }
}

