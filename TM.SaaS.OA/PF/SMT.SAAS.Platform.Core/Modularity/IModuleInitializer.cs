
   

namespace SMT.SAAS.Platform.Core.Modularity
{
    /// <summary>
    /// ����һ�����ڽ�ģ���ʼ����Ӧ�ó���ķ���
    /// </summary>
    public interface IModuleInitializer
    {
        /// <summary>
        /// ��ʼ��ָ��ģ��
        /// </summary>
        /// <param name="moduleInfo">
        /// Ҫ��ʼ����ģ�顣
        /// </param>
        void Initialize(ModuleInfo moduleInfo);
    }
}
