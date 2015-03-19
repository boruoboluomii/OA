using System.Collections.Generic;
 
namespace SMT.SAAS.Platform.Core.Modularity
{
    public partial class ModuleManager
    {
        /// <summary>
        /// ����ע���<see cref="IModuleTypeLoader"/> ʵ�������ڼ��س�ʼ��ģ�顣
        /// </summary>
        /// <value>
        /// ģ����ض���<see cref="IModuleTypeLoader"/> 
        /// </value>
        public virtual IEnumerable<IModuleTypeLoader> ModuleTypeLoaders
        {
            get
            {
                if (this.typeLoaders == null)
                {
                    this.typeLoaders = new List<IModuleTypeLoader>()
                                          {
                                              new XapModuleTypeLoader()
                                          };
                }

                return this.typeLoaders;
            }

            set
            {
                this.typeLoaders = value;
            }
        }
    }
}
