﻿using System;
using System.Collections.Generic;
using System.IO.IsolatedStorage;
using System.Linq;
using System.ServiceModel;
using System.Windows;
using SMT.Saas.Tools.OrganizationWS;
using SMT.SaaS.LocalData.ViewModel;
using SMT.Saas.Tools.PermissionWS;
using SMT.SaaS.LocalData.Tables;
using SMT.SAAS.Main.CurrentContext;
using System.Reflection;

namespace SMT.SAAS.Main.CurrentContextLoadData.Private
{
    public static class Utility
    {
        /// <summary>
        /// 根据跟定的两个已知对象TSource，TTarget
        /// 将TSource对象中的数据克隆到TTarget中。
        /// TSource与TTarget可以为不同类型，其仅会拷贝具有相同名称和数据类型的属性值。
        /// </summary>
        /// <typeparam name="TSource">数据源类型</typeparam>
        /// <typeparam name="TTarget">数据目标类型</typeparam>
        /// <param name="Source">数据源</param>
        /// <param name="Target">数据目标</param>
        /// <returns>已包含赋值数据的结果</returns>
        public static TTarget CloneObject<TTarget>(this object Source, TTarget Target)
        {
            try
            {
                if (Source == null)
                    throw new ArgumentNullException("Source");
                if (Target == null)
                    throw new ArgumentNullException("Target");

                PropertyInfo[] sourcePropertys = Source.GetType().GetProperties();
                PropertyInfo[] targetPropertys = Target.GetType().GetProperties();
                foreach (PropertyInfo sourcePro in sourcePropertys)
                {
                    var targetPro = targetPropertys.Where<PropertyInfo>(delegate(PropertyInfo proInfo)
                    {
                        return proInfo.Name.ToLower() == sourcePro.Name.ToLower() &&
                            proInfo.PropertyType == sourcePro.PropertyType;
                    }).FirstOrDefault<PropertyInfo>();
                    if (targetPro != null)
                        targetPro.SetValue(Target, sourcePro.GetValue(Source, null), null);
                }
                return Target;
            }
            catch (Exception ex)
            {
                throw new Exception("对象克隆异常", ex);
            }
        }
    }
}
