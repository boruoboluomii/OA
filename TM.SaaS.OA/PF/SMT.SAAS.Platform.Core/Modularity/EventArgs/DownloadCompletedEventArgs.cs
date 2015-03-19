using System;
using System.ComponentModel;
using System.IO;

 
namespace SMT.SAAS.Platform.Core.Modularity
{
    /// <summary>
    /// Ϊ<see cref="IFileDownloader.DownloadCompleted"/> �¼��ṩ�¼�������
    /// </summary>
    public class DownloadCompletedEventArgs : AsyncCompletedEventArgs
    {
        private readonly Stream result;

        /// <summary>
        /// ��ʼ��<see cref="DownloadCompletedEventArgs"/>��ʵ����
        /// </summary>
        /// <param name="result">
        /// ���ص�<see cref="Stream"/>
        /// .</param>
        /// <param name="error">
        /// �첽�����������п��ܲ����Ĵ���
        /// </param>
        /// <param name="canceled">
        /// �����Ƿ�ȡ���첽������
        /// <param name="userState">
        /// ��ѡ���û��ṩ״̬����������ʶ���� MethodNameCompleted �¼�������
        /// </param>
        public DownloadCompletedEventArgs(Stream result, Exception error, bool canceled, object userState)
            : base(error, canceled, userState)
        {
            this.result = result;
        }

        /// <summary>
        /// ��ȡ���ص�<see cref="Stream"/>��
        /// </summary>
        public Stream Result
        {
            get { return this.result; }
        }
    }
}