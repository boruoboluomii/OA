

namespace SMT.SAAS.Platform.Core.Modularity
{
    /// <summary>
    /// ����<see cref="ModuleInfo"/>״̬�������ڼ���ģ����ʼ����ʱ����ʡ�
    /// </summary>
    public enum ModuleState
    {
        /// <summary>
        /// <see cref="ModuleInfo"/>��ʼ״̬��<see cref="ModuleInfo"/>�Ѷ��壬��û�м��أ���ʼ����������
        /// </summary>
        NotStarted,

        /// <summary>
        /// ������ǰģ��ĳ�������ʹ��<see cref="IModuleTypeLoader"/>���м��ء�
        /// <see cref="IModuleTypeLoader"/>. 
        /// </summary>
        LoadingTypes,

        /// <summary>
        /// ������ģ��ĳ����Ѿ����ڡ�
        /// ��˼����<see cref="IModule"/> ���Խ���ʵ�������ʼ����
        /// </summary>
        ReadyForInitialization,

        /// <summary>
        /// ģ������ʹ��<see cref="IModuleInitializer"/>��ʼ����
        /// </summary>
        Initializing,

        /// <summary>
        /// ģ���Ѿ���ʼ��������ʹ�á�
        /// </summary>
        Initialized
    }
}
