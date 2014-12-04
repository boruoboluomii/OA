/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2013/9/18 17:24:11                           */
/*==============================================================*/


DROP TABLE IF EXISTS T_SYS_DICTIONARY;

DROP TABLE IF EXISTS T_SYS_ENTITYMENU;

DROP TABLE IF EXISTS T_SYS_PERMISSION;

DROP TABLE IF EXISTS T_SYS_ROLE;

DROP TABLE IF EXISTS T_SYS_ROLEMENUPERMISSION;

DROP TABLE IF EXISTS T_SYS_ROLEMENUPERMISSIONRANGE;

DROP TABLE IF EXISTS T_SYS_USER;

DROP TABLE IF EXISTS T_SYS_USERACTLOG;

DROP TABLE IF EXISTS T_SYS_USERDATALOG;

DROP TABLE IF EXISTS T_SYS_USERLOGINRECORD;

DROP TABLE IF EXISTS T_SYS_USERROLE;

/*==============================================================*/
/* Table: T_SYS_DICTIONARY                                      */
/*==============================================================*/
CREATE TABLE T_SYS_DICTIONARY
(
   DICTIONARYID         VARCHAR(50) NOT NULL COMMENT '�ֵ�ID',
   FATHERID             VARCHAR(50) COMMENT '���ֵ�ID',
   SYSTEMNAME           VARCHAR(100) COMMENT 'ϵͳ������',
   SYSTEMCODE           VARCHAR(100) COMMENT 'ϵͳ���ͱ���',
   DICTIONCATEGORYNAME  VARCHAR(100) COMMENT '�ֵ�������',
   DICTIONCATEGORY      VARCHAR(100) COMMENT '�ֵ����ͱ���',
   DICTIONARYNAME       VARCHAR(100) COMMENT '�ֵ�����',
   DICTIONARYVALUE      VARCHAR(100) COMMENT '�ֵ�ֵ',
   ORDERNUMBER          NUMERIC(8,0) COMMENT '�����',
   SYSTEMNEED           VARCHAR(1) COMMENT 'ϵͳ�����ֵ�:�û������޸�' COMMENT 'ϵͳ�����ֵ�:�û������޸�',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (DICTIONARYID)
);

ALTER TABLE T_SYS_DICTIONARY COMMENT 'ϵͳ�����ֵ�';

/*==============================================================*/
/* Table: T_SYS_ENTITYMENU                                      */
/*==============================================================*/
CREATE TABLE T_SYS_ENTITYMENU
(
   ENTITYMENUID         VARCHAR(50) NOT NULL COMMENT 'ʵ��˵�ID',
   SYSTEMTYPE           VARCHAR(50) NOT NULL COMMENT 'ϵͳ����',
   CHILDSYSTEMNAME      VARCHAR(500) COMMENT '��ϵͳ����',
   ENTITYNAME           VARCHAR(50) COMMENT 'ʵ������',
   ENTITYCODE           VARCHAR(50) COMMENT 'ʵ�����',
   HASSYSTEMMENU        VARCHAR(1) COMMENT '�Ƿ���ϵͳ�˵�',
   SUPERIORID           VARCHAR(50) COMMENT '�����˵�ID',
   MENUCODE             VARCHAR(50) NOT NULL COMMENT '�˵����',
   ORDERNUMBER          INT NOT NULL COMMENT '�˵����',
   MENUNAME             VARCHAR(50) NOT NULL COMMENT '�˵�����',
   MENUICONPATH         VARCHAR(100) COMMENT '�˵�ͼ���ַ',
   URLADDRESS           VARCHAR(500) COMMENT '���ӵ�ַ',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (ENTITYMENUID)
);

ALTER TABLE T_SYS_ENTITYMENU COMMENT 'ϵͳʵ��˵�';

/*==============================================================*/
/* Table: T_SYS_PERMISSION                                      */
/*==============================================================*/
CREATE TABLE T_SYS_PERMISSION
(
   PERMISSIONID         VARCHAR(50) NOT NULL COMMENT 'Ȩ��ID',
   PERMISSIONNAME       VARCHAR(50) NOT NULL COMMENT 'Ȩ������',
   PERMISSIONVALUE      VARCHAR(50) COMMENT 'Ȩ��ֵ',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   ENTITYMENUID         VARCHAR(50) COMMENT 'ʵ��˵�ID',
   ISCOMMOM             VARCHAR(50) COMMENT '�Ƿ񹫹�Ȩ����',
   PERMISSIONCODE       VARCHAR(200) COMMENT 'Ȩ�ޱ���',
   PRIMARY KEY (PERMISSIONID)
);

ALTER TABLE T_SYS_PERMISSION COMMENT '����Ȩ��
��,ɾ,��,��,����,����,����,��ӡ,��������....';

/*==============================================================*/
/* Table: T_SYS_ROLE                                            */
/*==============================================================*/
CREATE TABLE T_SYS_ROLE
(
   ROLEID               VARCHAR(50) NOT NULL COMMENT '��ɫID',
   ROLENAME             VARCHAR(50) COMMENT '��ɫ����',
   SYSTEMTYPE           VARCHAR(1) COMMENT 'ϵͳ����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (ROLEID)
);

ALTER TABLE T_SYS_ROLE COMMENT '��ɫ';

/*==============================================================*/
/* Table: T_SYS_ROLEMENUPERMISSION                              */
/*==============================================================*/
CREATE TABLE T_SYS_ROLEMENUPERMISSION
(
   ROLEMENUPERMID       VARCHAR(50) NOT NULL COMMENT '��ɫ�˵�Ȩ��ID',
   ROLEID               VARCHAR(50) COMMENT '��ɫID',
   ENTITYMENUID         VARCHAR(50) COMMENT 'ʵ��˵�ID',
   PERMISSIONID         VARCHAR(50) COMMENT 'Ȩ��ID',
   DATARANGE            VARCHAR(50) COMMENT '���ݷ�Χ',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   EXTENDVALUE          VARCHAR(50) COMMENT '��չֵ',
   ISCUSTOMERDATARANGE  VARCHAR(32) COMMENT '�Ƿ�ָ����Χ',
   PRIMARY KEY (ROLEMENUPERMID)
);

ALTER TABLE T_SYS_ROLEMENUPERMISSION COMMENT '��ɫ�˵�Ȩ��';

/*==============================================================*/
/* Table: T_SYS_ROLEMENUPERMISSIONRANGE                         */
/*==============================================================*/
CREATE TABLE T_SYS_ROLEMENUPERMISSIONRANGE
(
   ENTITYMENUCUSTOMPERMID VARCHAR(50) NOT NULL COMMENT '�Զ���˵�Ȩ��ID',
   ROLEMENUPERMID       VARCHAR(50) COMMENT '��ɫ�˵�Ȩ��ID',
   ORGTYPE              VARCHAR(32) COMMENT '0 ����;1 ��λ;2 ����;3��˾' COMMENT '0 ����;1 ��λ;2 ����;3��˾',
   ORGID                VARCHAR(32) COMMENT '��Ȩ��֯id',
   ORGNAME              VARCHAR(32) COMMENT '��Ȩ��֯����',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   STARTDATE            DATETIME COMMENT '��ʼʱ��',
   ENDDATE              DATETIME COMMENT 'ʧЧʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   PRIMARY KEY (ENTITYMENUCUSTOMPERMID)
);

ALTER TABLE T_SYS_ROLEMENUPERMISSIONRANGE COMMENT '��ɫ����ҪȨ�޿��Ƶ�ʵ���Ȩ�޹�ϵ
��ɫ��ÿ��ʵ�����ɾ�Ĳ��Ȩ��
��ɫ��ʵ���Ȩ�޷�Χ���ǶԸ�';

/*==============================================================*/
/* Table: T_SYS_USER                                            */
/*==============================================================*/
CREATE TABLE T_SYS_USER
(
   SYSUSERID            VARCHAR(50) NOT NULL COMMENT 'ϵͳ�û�ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   USERNAME             VARCHAR(50) NOT NULL COMMENT 'Ա��ϵͳ�ʺ�',
   PASSWORD             VARCHAR(50) NOT NULL COMMENT '�û�����',
   ISMANGER             INT COMMENT '�Ƿ�Ϊ����Ա',
   STATE                VARCHAR(50) COMMENT '״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (SYSUSERID)
);

ALTER TABLE T_SYS_USER COMMENT 'ϵͳ�û���';

/*==============================================================*/
/* Table: T_SYS_USERACTLOG                                      */
/*==============================================================*/
CREATE TABLE T_SYS_USERACTLOG
(
   LOGID                VARCHAR(50) NOT NULL COMMENT '��־ID',
   CLIENTOS             VARCHAR(200) COMMENT '�ͻ��˲���ϵͳ',
   CLIENTOSLANGUAGE     VARCHAR(200) COMMENT '�ͻ�������',
   CLIENTBROWSER        VARCHAR(200) COMMENT '�ͻ��������',
   CLIENTHOSTADDRESS    VARCHAR(200) COMMENT '�ͻ���IP',
   CLIENTNETRUNTIME     VARCHAR(200) COMMENT '�ͻ���Runtime',
   ENTITYMENU           VARCHAR(500) COMMENT '�������ܲ˵�',
   PERMISSIONID         VARCHAR(32) COMMENT '����Ȩ��',
   LOGTYPE              VARCHAR(2) COMMENT '0,��Ϊ��־
            1,������־' COMMENT '0,��Ϊ��־
            1,������־',
   LOGCONTEXT           VARCHAR(2000) COMMENT '��־����',
   SERVEROS             VARCHAR(50) COMMENT '����˲���ϵͳ',
   SERVERNETRUNTIME     VARCHAR(2000) COMMENT '������Runtime',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   COMPANYNAME          VARCHAR(200) COMMENT '��˾����',
   DEPARTMENTNAME       VARCHAR(200) COMMENT '��������',
   POSTNAME             VARCHAR(200) COMMENT '��λ����',
   EMPLOYEENAME         VARCHAR(200) COMMENT 'Ա������',
   PRIMARY KEY (LOGID)
);

ALTER TABLE T_SYS_USERACTLOG COMMENT '�û���Ϊ��־��';

/*==============================================================*/
/* Table: T_SYS_USERDATALOG                                     */
/*==============================================================*/
CREATE TABLE T_SYS_USERDATALOG
(
   LOGID                VARCHAR(50) NOT NULL COMMENT '��־ID',
   CLIENTOS             VARCHAR(200) COMMENT '�ͻ��˲���ϵͳ',
   CLIENTOSLANGUAGE     VARCHAR(200) COMMENT '�ͻ�������',
   CLIENTBROWSER        VARCHAR(200) COMMENT '�ͻ��������',
   CLIENTHOSTADDRESS    VARCHAR(200) COMMENT '�ͻ���IP',
   CLIENTNETRUNTIME     VARCHAR(200) COMMENT '�ͻ���Runtime',
   ENTITYMENU           VARCHAR(500) COMMENT '�������ܲ˵�',
   LOGTYPE              VARCHAR(2) COMMENT '0,��Ϊ��־
            1,������־' COMMENT '0,��Ϊ��־
            1,������־',
   LOGCONTEXT           VARCHAR(2000) COMMENT '��־����',
   SERVEROS             VARCHAR(50) COMMENT '����˲���ϵͳ',
   SERVERNETRUNTIME     VARCHAR(2000) COMMENT '������Runtime',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   COMPANYNAME          VARCHAR(200) COMMENT '��˾����',
   DEPARTMENTNAME       VARCHAR(200) COMMENT '��������',
   POSTNAME             VARCHAR(200) COMMENT '��λ����',
   EMPLOYEENAME         VARCHAR(200) COMMENT 'Ա������',
   PRIMARY KEY (LOGID)
);

ALTER TABLE T_SYS_USERDATALOG COMMENT '�û����ݷ�����־��';

/*==============================================================*/
/* Table: T_SYS_USERLOGINRECORD                                 */
/*==============================================================*/
CREATE TABLE T_SYS_USERLOGINRECORD
(
   LOGINRECORDID        VARCHAR(50) NOT NULL COMMENT '��¼ϵͳ��¼ID',
   USERNAME             VARCHAR(50) NOT NULL COMMENT 'Ա��ϵͳ�ʺ�',
   EMPLOYEENAME         VARCHAR(200) COMMENT 'Ա������',
   LOGINYEAR            INT COMMENT '��¼���',
   LOGINMONTH           INT COMMENT '��¼�·�',
   LOGINDATE            DATETIME COMMENT '��¼����',
   LOGINTIME            VARCHAR(50) COMMENT '��¼ʱ��',
   LOGINIP              VARCHAR(50) COMMENT '��¼IP',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   COMPANYNAME          VARCHAR(200) COMMENT '��˾����',
   DEPARTMENTNAME       VARCHAR(200) COMMENT '��������',
   POSTNAME             VARCHAR(200) COMMENT '��λ����',
   PRIMARY KEY (LOGINRECORDID)
);

ALTER TABLE T_SYS_USERLOGINRECORD COMMENT '�û���¼ϵͳ��¼��';

/*==============================================================*/
/* Table: T_SYS_USERROLE                                        */
/*==============================================================*/
CREATE TABLE T_SYS_USERROLE
(
   USERROLEID           VARCHAR(50) NOT NULL COMMENT '�û���ɫID',
   ROLEID               VARCHAR(50) COMMENT '��ɫID',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL COMMENT '������˾ID',
   POSTID               VARCHAR(50) NOT NULL COMMENT '��λID',
   EMPLOYEEPOSTID       VARCHAR(50) NOT NULL COMMENT 'Ա����λid',
   SYSUSERID            VARCHAR(50) COMMENT 'ϵͳ�û�ID',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (USERROLEID)
);

ALTER TABLE T_SYS_USERROLE COMMENT '�û���ɫ';

ALTER TABLE T_SYS_DICTIONARY ADD CONSTRAINT FK_REFERENCE_14 FOREIGN KEY (FATHERID)
      REFERENCES T_SYS_DICTIONARY (DICTIONARYID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ENTITYMENU ADD CONSTRAINT FK_REFERENCE_10 FOREIGN KEY (SUPERIORID)
      REFERENCES T_SYS_ENTITYMENU (ENTITYMENUID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_SYS_PERMISSION ADD CONSTRAINT FK_REFERENCE_19 FOREIGN KEY (ENTITYMENUID)
      REFERENCES T_SYS_ENTITYMENU (ENTITYMENUID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ROLEMENUPERMISSION ADD CONSTRAINT FK_REFERENCE_11 FOREIGN KEY (ROLEID)
      REFERENCES T_SYS_ROLE (ROLEID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ROLEMENUPERMISSION ADD CONSTRAINT FK_REFERENCE_15 FOREIGN KEY (ENTITYMENUID)
      REFERENCES T_SYS_ENTITYMENU (ENTITYMENUID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ROLEMENUPERMISSION ADD CONSTRAINT FK_RELATIONSHIP_6 FOREIGN KEY (PERMISSIONID)
      REFERENCES T_SYS_PERMISSION (PERMISSIONID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ROLEMENUPERMISSIONRANGE ADD CONSTRAINT FK_REFERENCE_13 FOREIGN KEY (ROLEMENUPERMID)
      REFERENCES T_SYS_ROLEMENUPERMISSION (ROLEMENUPERMID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_SYS_USERROLE ADD CONSTRAINT FK_REFERENCE_12 FOREIGN KEY (SYSUSERID)
      REFERENCES T_SYS_USER (SYSUSERID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_SYS_USERROLE ADD CONSTRAINT FK_REFERENCE_7 FOREIGN KEY (ROLEID)
      REFERENCES T_SYS_ROLE (ROLEID) ON DELETE RESTRICT ON UPDATE RESTRICT;

