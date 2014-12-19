/*==============================================================*/
/* Table: FLOW_CONSULTATION_T                                   */
/*==============================================================*/
CREATE TABLE FLOW_CONSULTATION_T
(
   CONSULTATIONID       VARCHAR(50) NOT NULL,
   FLOWRECORDDETAILID   VARCHAR(50),
   CONSULTATIONUSERID   VARCHAR(50),
   CONSULTATIONUSERNAME VARCHAR(200),
   CONSULTATIONCONTENT  VARCHAR(200),
   CONSULTATIONDATE     DATETIME,
   REPLYUSERID          VARCHAR(50),
   REPLYUSERNAME        VARCHAR(200),
   REPLYCONTENT         VARCHAR(200),
   REPLYDATE            DATETIME,
   FLAG                 VARCHAR(50) COMMENT '0δ�ظ���1�ظ�',
   PRIMARY KEY (CONSULTATIONID)
);

ALTER TABLE FLOW_CONSULTATION_T COMMENT '��ѯ';

/*==============================================================*/
/* Table: FLOW_EXCEPTIONLOG                                     */
/*==============================================================*/
CREATE TABLE FLOW_EXCEPTIONLOG
(
   ID                   VARCHAR(50) NOT NULL COMMENT '����ID',
   FORMID               VARCHAR(50) COMMENT 'ҵ��ID',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   STATE                VARCHAR(50) DEFAULT 'δ����' COMMENT '״̬:δ����;�Ѵ���',
   CREATEDATE           DATETIME  COMMENT '��������',
   CREATENAME           VARCHAR(50) COMMENT '������',
   UPDATEDATE           DATETIME COMMENT '��������',
   UPDATENAME           VARCHAR(50) COMMENT '������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   SUBMITINFO           VARCHAR(2000) COMMENT '�ύ��Ϣ',
   LOGINFO              TEXT COMMENT '�쳣��־��Ϣ',
   MODELNAME            VARCHAR(50) COMMENT 'ģ������',
   OWNERID              VARCHAR(50) COMMENT '�����ID',
   OWNERNAME            VARCHAR(50) COMMENT '���������',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '����˹�˾ID',
   OWNERCOMPANYNAME     VARCHAR(50) COMMENT '����˹�˾����',
   OWNERDEPARMENTID     VARCHAR(50) COMMENT '����˲���ID',
   OWNERDEPARMENTNAME   VARCHAR(50) COMMENT '����˲�������',
   OWNERPOSTID          VARCHAR(50) COMMENT '����˸�λID',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '����˸�λ����',
   AUDITSTATE           VARCHAR(50) COMMENT '���״̬;���ͨ��,��˲�ͨ��',
   PRIMARY KEY (ID)
);

ALTER TABLE FLOW_EXCEPTIONLOG COMMENT '�쳣��¼��־';

/*==============================================================*/
/* Index: INDEX_LOG                                             */
/*==============================================================*/
CREATE INDEX INDEX_LOG ON FLOW_EXCEPTIONLOG
(
   CREATEDATE
);

/*==============================================================*/
/* Table: FLOW_FLOWCATEGORY                                     */
/*==============================================================*/
CREATE TABLE FLOW_FLOWCATEGORY
(
   FLOWCATEGORYID       VARCHAR(50) NOT NULL COMMENT '���̷���ID',
   FLOWCATEGORYDESC     VARCHAR(50) NOT NULL COMMENT '���̷�������',
   COMPANYID            VARCHAR(50) COMMENT '������˾',
   PRIMARY KEY (FLOWCATEGORYID)
);

ALTER TABLE FLOW_FLOWCATEGORY COMMENT '���̷����';

/*==============================================================*/
/* Table: FLOW_FLOWDEFINE_AUDIT_T                               */
/*==============================================================*/
CREATE TABLE FLOW_FLOWDEFINE_AUDIT_T
(
   FLOWDEFINEID         VARCHAR(50) NOT NULL COMMENT '���̶���ID',
   FLOWCODE             VARCHAR(50) NOT NULL COMMENT '���̴���',
   DESCRIPTION          VARCHAR(50) NOT NULL COMMENT '��������',
   XOML                 TEXT NOT NULL COMMENT 'ģ���ļ�',
   RULES                TEXT COMMENT 'ģ�͹���',
   LAYOUT               TEXT NOT NULL COMMENT 'ģ�Ͳ���',
   FLOWTYPE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '�������� -- 0:��������, 1:��������',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   EDITUSERID           VARCHAR(50) COMMENT '�޸���ID',
   EDITUSERNAME         VARCHAR(50) COMMENT '�޸����û���',
   EDITDATE             DATETIME COMMENT '�޸�ʱ��',
   WFLAYOUT             TEXT COMMENT '���̶����ļ�',
   OWNERID              VARCHAR(50),
   SYSTEMCODE           VARCHAR(50) COMMENT 'ҵ��ϵͳ:OA,HR,TM��',
   MODELCODETYPE        VARCHAR(50) COMMENT 'ģ�����ͣ���ֻ���ģ������',
   MODELCODETYPENAME    VARCHAR(100) COMMENT 'ģ���������ƣ���ֻ���������������',
   FLOWCODE1            VARCHAR(50),
   EDITSTATE            VARCHAR(1),
   CHECKSTATES          VARCHAR(1),
   BUSINESSOBJECT       VARCHAR(50) COMMENT 'ҵ����󣺸������뱨����',
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(100),
   OWNERPOSTNAME        VARCHAR(100),
   OWNERNAME            VARCHAR(100),
   OWNERCOMPANYID       VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(100),
   HISTORYSTATE         NUMERIC(38,0) COMMENT '�������Ƿ����ù���0��δ���ã�1�����ù�
            ��ϰ汾���������б�����ʾ״̬����
            �汾��=0 and ��ʷ״̬=0��״̬Ϊ�޸��С�
            �汾��=0 and ��ʷ״̬=1��״̬Ϊ������
            �����ͨ��ʱ��versionid=0�����ݵ�HISTORYSTATE����Ϊ1',
   VERSIONNO            NUMERIC(38,0) COMMENT '�汾�ţ�Ĭ��Ϊ0��ÿ�½�һ����flocode��ͬ�����̰汾��+1
            �����б��ȡ����ʱֻȡ�汾��Ϊ0�����ݡ�',
   MODELCODE            VARCHAR(50),
   COMPANYID            VARCHAR(50),
   DEPARTMENTID         VARCHAR(50),
   COMPANYNAME          VARCHAR(100),
   DEPARTMENTNAME       VARCHAR(100),
   REASON               VARCHAR(1000),
   CONTENT              VARCHAR(2000),
   PRIMARY KEY (FLOWDEFINEID)
);

ALTER TABLE FLOW_FLOWDEFINE_AUDIT_T COMMENT '���̶�����˱�:�������ʱ�������ű����ͨ��������ͬ����
Flow_FlowDefine_T���������Ҫ';

/*==============================================================*/
/* Table: FLOW_FLOWDEFINE_T                                     */
/*==============================================================*/
CREATE TABLE FLOW_FLOWDEFINE_T
(
   FLOWDEFINEID         VARCHAR(50) NOT NULL COMMENT '���̶���ID',
   FLOWCODE             VARCHAR(50) NOT NULL COMMENT '���̴���',
   DESCRIPTION          VARCHAR(50) NOT NULL COMMENT '��������',
   XOML                 TEXT NOT NULL COMMENT 'ģ���ļ�',
   RULES                TEXT COMMENT 'ģ�͹���',
   LAYOUT               TEXT NOT NULL COMMENT 'ģ�Ͳ���',
   FLOWTYPE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '�������� -- 0:��������, 1:��������',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   EDITUSERID           VARCHAR(50) COMMENT '�޸���ID',
   EDITUSERNAME         VARCHAR(50) COMMENT '�޸����û���',
   EDITDATE             DATETIME COMMENT '�޸�ʱ��',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ҵ��ϵͳ:OA,HR,TM��',
   BUSINESSOBJECT       VARCHAR(50) COMMENT 'ҵ����󣺸������뱨����',
   WFLAYOUT             TEXT COMMENT '���̶����ļ�',
   FLOWCODE1            VARCHAR(50),
   MODELCODETYPE        VARCHAR(50) COMMENT 'ģ�����ͣ�����ֻ
            ���������������',
   MODELCODETYPENAME    VARCHAR(100) COMMENT 'ģ��������
            �ƣ�����ֻ���������������',
   REFFLOWDEFINEID      VARCHAR(50) COMMENT '��Ӧ��˱������ID',
   PRIMARY KEY (FLOWCODE)
);

ALTER TABLE FLOW_FLOWDEFINE_T COMMENT '����ģ�Ͷ����';

/*==============================================================*/
/* Index: IDX_BUSOBJ                                            */
/*==============================================================*/
CREATE INDEX IDX_BUSOBJ ON FLOW_FLOWDEFINE_T
(
   BUSINESSOBJECT
);

/*==============================================================*/
/* Table: FLOW_FLOWDEFINE_T_HISTORY                             */
/*==============================================================*/
CREATE TABLE FLOW_FLOWDEFINE_T_HISTORY
(
   FLOWDEFINEID         VARCHAR(50) NOT NULL,
   FLOWCODE             VARCHAR(200) NOT NULL,
   DESCRIPTION          VARCHAR(100) NOT NULL,
   XOML                 TEXT NOT NULL,
   RULES                TEXT,
   LAYOUT               TEXT NOT NULL,
   FLOWTYPE             VARCHAR(1) NOT NULL DEFAULT '0',
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   EDITUSERID           VARCHAR(50),
   EDITUSERNAME         VARCHAR(50),
   EDITDATE             DATETIME,
   SYSTEMCODE           VARCHAR(50),
   BUSINESSOBJECT       VARCHAR(50),
   WFLAYOUT             TEXT,
   FLOWCODE1            VARCHAR(50),
   MODELCODETYPE        VARCHAR(50) COMMENT 'ģ����
            �ͣ�����ֻ���������������',
   MODELCODETYPENAME    VARCHAR(100) COMMENT 'ģ��
            �������ƣ�����ֻ���������������',
   PRIMARY KEY (FLOWDEFINEID)
);

ALTER TABLE FLOW_FLOWDEFINE_T_HISTORY COMMENT '����ģ����ʷ�����';

/*==============================================================*/
/* Table: FLOW_FLOWRECORDDETAIL_T                               */
/*==============================================================*/
CREATE TABLE FLOW_FLOWRECORDDETAIL_T
(
   FLOWRECORDDETAILID   VARCHAR(50) NOT NULL,
   FLOWRECORDMASTERID   VARCHAR(50) NOT NULL,
   STATECODE            VARCHAR(50) NOT NULL,
   PARENTSTATEID        VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(2000),
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '2' COMMENT '0����ͬ��  1��ͬ��  2��δ����  7����ǩͬ��  8����ǩ��ͬ��',
   FLAG                 VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ����  1��������',
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   EDITUSERID           VARCHAR(50) NOT NULL,
   EDITUSERNAME         VARCHAR(50) NOT NULL,
   EDITCOMPANYID        VARCHAR(50),
   EDITDEPARTMENTID     VARCHAR(50),
   EDITPOSTID           VARCHAR(50),
   EDITDATE             DATETIME,
   AGENTUSERID          VARCHAR(50),
   AGENTERNAME          VARCHAR(50),
   AGENTEDITDATE        DATETIME,
   PRIMARY KEY (FLOWRECORDDETAILID)
);

ALTER TABLE FLOW_FLOWRECORDDETAIL_T COMMENT '����������ϸ��';

/*==============================================================*/
/* Index: FLCORDFGEDID                                          */
/*==============================================================*/
CREATE INDEX FLCORDFGEDID ON FLOW_FLOWRECORDDETAIL_T
(
   FLAG,
   EDITUSERID,
   EDITPOSTID
);

/*==============================================================*/
/* Table: FLOW_FLOWRECORDMASTER_T                               */
/*==============================================================*/
CREATE TABLE FLOW_FLOWRECORDMASTER_T
(
   FLOWRECORDMASTERID   VARCHAR(50) NOT NULL,
   INSTANCEID           VARCHAR(50) NOT NULL,
   FLOWSELECTTYPE       VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:�̶����̣�1����ѡ����',
   MODELCODE            VARCHAR(50) NOT NULL,
   FLOWCODE             VARCHAR(50) NOT NULL,
   FORMID               VARCHAR(50) NOT NULL,
   FLOWTYPE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:�������̣�1����������',
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '1:�����У�2������ͨ����3������ͨ����5����(Ϊ���ֵ䱣��һ��)',
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   EDITUSERID           VARCHAR(50) NOT NULL,
   EDITUSERNAME         VARCHAR(50) NOT NULL,
   EDITDATE             DATETIME,
   ACTIVEROLE           TEXT,
   BUSINESSOBJECT       TEXT,
   KPITIMEXML           TEXT,
   BUSINESSOBJECT2      TEXT,
   MONTH2               NUMERIC(8,0),
   OWNERUSERID          VARCHAR(50) COMMENT '����������ID',
   OWNERUSERNAME        VARCHAR(50) COMMENT '��������������',
   PRIMARY KEY (FLOWRECORDMASTERID)
);

ALTER TABLE FLOW_FLOWRECORDMASTER_T COMMENT '��������ʵ����';

/*==============================================================*/
/* Index: IDX_FLOWRECORDMASTER_MODFOR                           */
/*==============================================================*/
CREATE INDEX IDX_FLOWRECORDMASTER_MODFOR ON FLOW_FLOWRECORDMASTER_T
(
   FORMID
);

/*==============================================================*/
/* Index: IDX_FLOWRE_CHECRE                                     */
/*==============================================================*/
CREATE INDEX IDX_FLOWRE_CHECRE ON FLOW_FLOWRECORDMASTER_T
(
   CHECKSTATE
);

/*==============================================================*/
/* Table: FLOW_FLOWTOCATEGORY                                   */
/*==============================================================*/
CREATE TABLE FLOW_FLOWTOCATEGORY
(
   FLOWCATEGORYID       VARCHAR(50) NOT NULL COMMENT '���̷���ID',
   FLOWCODE             VARCHAR(50) NOT NULL COMMENT '���̴���',
   PRIMARY KEY (FLOWCATEGORYID, FLOWCODE)
);

ALTER TABLE FLOW_FLOWTOCATEGORY COMMENT '����������ϵ��';

/*==============================================================*/
/* Table: FLOW_FREEFLOWEMPLOYEE                                 */
/*==============================================================*/
CREATE TABLE FLOW_FREEFLOWEMPLOYEE
(
   FREEFLOWID           VARCHAR(50) NOT NULL,
   FORMID               VARCHAR(50) NOT NULL,
   SEQUENCE             NUMERIC(8,0) COMMENT '���˳��',
   NEXTEDITUSEID        VARCHAR(50) COMMENT '��һ�����ID',
   EDITUSERNAME         VARCHAR(50) NOT NULL COMMENT '���������',
   NEXTEDITUSERNAME     VARCHAR(50) COMMENT '��һ���������',
   EDITPOSTID           VARCHAR(50) COMMENT '�����������λ����ID',
   EDITCOMPANYID        VARCHAR(50) COMMENT '�����������˾����ID',
   STATE                VARCHAR(2) DEFAULT '0' COMMENT '����״̬��0δ��ˣ�1�����',
   EDITDEPARTMENTID     VARCHAR(50) COMMENT '�����������������ID',
   EDITUSERID           VARCHAR(50) NOT NULL COMMENT '�����ID',
   CREATEDATE           DATETIME NOT NULL  COMMENT '��������',
   ROLENAME             VARCHAR(500) COMMENT '����˵Ľ�ɫ(�����ж����ɫ)',
   DEPARTMENTNAME       VARCHAR(50) COMMENT '�����������������',
   COMPANYNAME          VARCHAR(50) COMMENT '�����������˾����',
   POSTNAME             VARCHAR(50) COMMENT '�����������λ����',
   FLOWRECORDMASTERID   VARCHAR(50) COMMENT '�����������',
   COUNTERSIGNTYPE      VARCHAR(50) DEFAULT '0' COMMENT '��ǩ���ͣ���0������ͨ����Ϊͨ������1��һ��ͨ����Ϊͨ������2��ͨ���ʡ�',
   PASSRATE             NUMERIC(8,0) COMMENT 'ͨ���ʡ�20��ʾͨ����Ϊ20%��',
   BATCH                VARCHAR(50) COMMENT '�Ƿ�ͬһ������ˣ���Ի�ǩ��,��ʱ����Ϊ�����磺20140106101015',
   FLOWTYPE             VARCHAR(50) DEFAULT '1' COMMENT '��1������������2����ѡ���̡�',
   PRIMARY KEY (FREEFLOWID)
);

ALTER TABLE FLOW_FREEFLOWEMPLOYEE COMMENT '����������ѡ����';

/*==============================================================*/
/* Table: FLOW_INSTANCE_STATE                                   */
/*==============================================================*/
CREATE TABLE FLOW_INSTANCE_STATE
(
   INSTANCE_ID          CHAR(36) NOT NULL,
   STATE                LONGBLOB,
   STATUS               NUMERIC(9,0) NOT NULL,
   UNLOCKED             NUMERIC(1,0) NOT NULL,
   BLOCKED              NUMERIC(1,0) NOT NULL,
   INFO                 TEXT,
   MODIFIED             DATETIME NOT NULL,
   OWNER_ID             CHAR(36),
   OWNED_UNTIL          DATETIME,
   NEXT_TIMER           DATETIME,
   FORMID               VARCHAR(50),
   CREATEID             VARCHAR(50) COMMENT '������ID',
   CREATENAME           VARCHAR(50) COMMENT '����������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   EDITID               VARCHAR(50) COMMENT '��һ�������ID',
   EDITNAME             VARCHAR(50) COMMENT '��һ�����������',
   ID                   VARCHAR(50) NOT NULL,
   PRIMARY KEY (ID)
);

ALTER TABLE FLOW_INSTANCE_STATE COMMENT '������˹����еĳ־û�ʵ��';

/*==============================================================*/
/* Index: FLOW_INSTANCE_STATE_IDX01                             */
/*==============================================================*/
CREATE INDEX FLOW_INSTANCE_STATE_IDX01 ON FLOW_INSTANCE_STATE
(
   NEXT_TIMER,
   STATUS,
   UNLOCKED
);

/*==============================================================*/
/* Index: FLOW_INSTANCE_STATE_IDX02                             */
/*==============================================================*/
CREATE INDEX FLOW_INSTANCE_STATE_IDX02 ON FLOW_INSTANCE_STATE
(
   OWNED_UNTIL,
   OWNER_ID
);

/*==============================================================*/
/* Table: FLOW_MODELDEFINE_FLOWCANCLE                           */
/*==============================================================*/
CREATE TABLE FLOW_MODELDEFINE_FLOWCANCLE
(
   MODELDEFINEFLOWCANCLEID VARCHAR(50) NOT NULL COMMENT 'GUID',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   COMPANYNAME          VARCHAR(50) COMMENT '�����ᵥ���������̹�˾����',
   COMPANYID            VARCHAR(50) COMMENT '�����ᵥ���������̹�˾ID',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   PRIMARY KEY (MODELDEFINEFLOWCANCLEID)
);

ALTER TABLE FLOW_MODELDEFINE_FLOWCANCLE COMMENT '��Щ��˾��ģ���п��������ᵥ����������';

/*==============================================================*/
/* Table: FLOW_MODELDEFINE_FREEFLOW                             */
/*==============================================================*/
CREATE TABLE FLOW_MODELDEFINE_FREEFLOW
(
   MODELDEFINEFREEFLOWID VARCHAR(50) NOT NULL COMMENT 'GUID',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   COMPANYNAME          VARCHAR(50) COMMENT '������ѡ���̹�˾����',
   COMPANYID            VARCHAR(50) COMMENT '������ѡ���̹�˾ID',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   PRIMARY KEY (MODELDEFINEFREEFLOWID)
);

ALTER TABLE FLOW_MODELDEFINE_FREEFLOW COMMENT '��Щ��˾��ģ���п���������ѡ����';

/*==============================================================*/
/* Table: FLOW_MODELDEFINE_T                                    */
/*==============================================================*/
CREATE TABLE FLOW_MODELDEFINE_T
(
   MODELDEFINEID        VARCHAR(50) NOT NULL COMMENT 'ģ��ID',
   SYSTEMCODE           VARCHAR(50) NOT NULL COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) NOT NULL COMMENT 'ģ�����',
   PARENTMODELCODE      VARCHAR(50) COMMENT '�ϼ�ģ�����',
   DESCRIPTION          VARCHAR(100) NOT NULL COMMENT 'ģ������',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   EDITUSERID           VARCHAR(50) COMMENT '�޸���ID',
   EDITUSERNAME         VARCHAR(50) COMMENT '�޸����û���',
   EDITDATE             DATETIME COMMENT '�޸�ʱ��',
   SYSTEMNAME           VARCHAR(50),
   PRIMARY KEY (MODELCODE)
);

ALTER TABLE FLOW_MODELDEFINE_T COMMENT 'ģ�鶨���';

/*==============================================================*/
/* Table: FLOW_MODELFLOWRELATION_T                              */
/*==============================================================*/
CREATE TABLE FLOW_MODELFLOWRELATION_T
(
   MODELFLOWRELATIONID  VARCHAR(50) NOT NULL COMMENT '����ID',
   COMPANYID            VARCHAR(50) NOT NULL COMMENT '��˾ID',
   DEPARTMENTID         VARCHAR(50) COMMENT '����ID',
   COMPANYNAME          VARCHAR(50) COMMENT '��˾����',
   DEPARTMENTNAME       VARCHAR(50) COMMENT '��������',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) NOT NULL COMMENT 'ģ�����',
   FLOWCODE             VARCHAR(50) NOT NULL COMMENT '���̴���',
   FLAG                 VARCHAR(1) NOT NULL COMMENT '1����ã�0Ϊ������',
   FLOWTYPE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:�������̣�1����������',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   EDITUSERID           VARCHAR(50) COMMENT '�޸���ID',
   EDITUSERNAME         VARCHAR(50) COMMENT '�޸����û���',
   EDITDATE             DATETIME COMMENT '�޸�ʱ��',
   MODELCODETYPE        VARCHAR(50) COMMENT 'ģ����
            �ͣ�����ֻ���������������',
   MODELCODETYPENAME    VARCHAR(100) COMMENT 'ģ��
            �������ƣ�����ֻ���������������',
   PRIMARY KEY (MODELFLOWRELATIONID)
);

ALTER TABLE FLOW_MODELFLOWRELATION_T COMMENT 'ģ�������̶��������';

/*==============================================================*/
/* Index: IDX_DPCOCMID                                          */
/*==============================================================*/
CREATE INDEX IDX_DPCOCMID ON FLOW_MODELFLOWRELATION_T
(
   DEPARTMENTID,
   MODELCODE,
   COMPANYID
);

/*==============================================================*/
/* Table: FLOW_MODELFLOWRELATION_T140623                        */
/*==============================================================*/
CREATE TABLE FLOW_MODELFLOWRELATION_T140623
(
   MODELFLOWRELATIONID  VARCHAR(50) NOT NULL,
   COMPANYID            VARCHAR(50) NOT NULL,
   DEPARTMENTID         VARCHAR(50),
   COMPANYNAME          VARCHAR(50),
   DEPARTMENTNAME       VARCHAR(50),
   SYSTEMCODE           VARCHAR(50),
   MODELCODE            VARCHAR(50) NOT NULL,
   FLOWCODE             VARCHAR(50) NOT NULL,
   FLAG                 VARCHAR(1) NOT NULL,
   FLOWTYPE             VARCHAR(1) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   EDITUSERID           VARCHAR(50),
   EDITUSERNAME         VARCHAR(50),
   EDITDATE             DATETIME,
   MODELCODETYPE        VARCHAR(50),
   MODELCODETYPENAME    VARCHAR(100)
);

ALTER TABLE FLOW_MODELFLOWRELATION_T140623 COMMENT 'FLOW_MODELFLOWRELATION_T140623';

/*==============================================================*/
/* Table: FLOW_ROLE                                             */
/*==============================================================*/
CREATE TABLE FLOW_ROLE
(
   FLOWROLEID           VARCHAR(50) NOT NULL COMMENT '���̽�ɫID',
   ROLEID               VARCHAR(50) COMMENT '��ɫID',
   ROLENAME             VARCHAR(50) COMMENT '��ɫ����',
   FLOWCODE             VARCHAR(50),
   FLOWNAME             VARCHAR(50) COMMENT '��������',
   REMARK               VARCHAR(50) COMMENT '��ע',
   EDITDATE             DATETIME ,
   PRIMARY KEY (FLOWROLEID)
);

ALTER TABLE FLOW_ROLE COMMENT '���̽�ɫ��һ�������õ���Щ��ɫ';

/*==============================================================*/
/* Table: T_FB_BORROWAPPLYDETAIL                                */
/*==============================================================*/
CREATE TABLE T_FB_BORROWAPPLYDETAIL
(
   BORROWAPPLYDETAILID  VARCHAR(50) NOT NULL,
   SUBJECTID            VARCHAR(50),
   BORROWAPPLYMASTERID  VARCHAR(50),
   CHARGETYPE           INT COMMENT '1�����ˣ� 2������',
   USABLEMONEY          NUMERIC(8,0),
   REMARK               VARCHAR(200),
   BORROWMONEY          NUMERIC(8,0) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   UNREPAYMONEY         NUMERIC(8,0),
   PRIMARY KEY (BORROWAPPLYDETAILID)
);

ALTER TABLE T_FB_BORROWAPPLYDETAIL COMMENT '���������ϸ';

/*==============================================================*/
/* Table: T_FB_BORROWAPPLYMASTER                                */
/*==============================================================*/
CREATE TABLE T_FB_BORROWAPPLYMASTER
(
   BORROWAPPLYMASTERID  VARCHAR(50) NOT NULL,
   EXTENSIONALORDERID   VARCHAR(50),
   BORROWAPPLYMASTERCODE VARCHAR(50) NOT NULL,
   REPAYTYPE            INT NOT NULL COMMENT '1��ͨ���
            2���ý���
            3ר����
            
            ',
   PLANREPAYDATE        DATETIME,
   TOTALMONEY           NUMERIC(8,0) NOT NULL,
   ISREPAIED            INT COMMENT '0: ��δ����
            1 : �ѻ���
            ',
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   RECEIVER             VARCHAR(50),
   BANK                 VARCHAR(50),
   BANKACCOUT           VARCHAR(50),
   PAYTARGET            INT COMMENT '1 : ������
            2 : �����ʺ�',
   REMARK               VARCHAR(2000),
   PAYMENTINFO          VARCHAR(2000) COMMENT '֧����Ϣ(��ӡר��)',
   PRIMARY KEY (BORROWAPPLYMASTERID)
);

ALTER TABLE T_FB_BORROWAPPLYMASTER COMMENT '������뵥';

/*==============================================================*/
/* Table: T_FB_BUDGETACCOUNT                                    */
/*==============================================================*/
CREATE TABLE T_FB_BUDGETACCOUNT
(
   BUDGETACCOUNTID      VARCHAR(50) NOT NULL,
   ACCOUNTOBJECTTYPE    INT COMMENT '1 : ��˾, 2 : ����, 3 : ����',
   BUDGETYEAR           INT,
   BUDGETMONTH          INT,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   BUDGETMONEY          NUMERIC(8,0),
   USABLEMONEY          NUMERIC(8,0),
   ACTUALMONEY          NUMERIC(8,0),
   PAIEDMONEY           NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   REMARK               VARCHAR(1000),
   CNAME                VARCHAR(2000) COMMENT '��˾��',
   DNAME                VARCHAR(2000) COMMENT '������',
   PNAME                VARCHAR(2000) COMMENT '��λ��',
   PRIMARY KEY (BUDGETACCOUNTID)
);

ALTER TABLE T_FB_BUDGETACCOUNT COMMENT 'Ԥ������';

/*==============================================================*/
/* Index: INDEX_BUDGETACCOUNT_1                                 */
/*==============================================================*/
CREATE INDEX INDEX_BUDGETACCOUNT_1 ON T_FB_BUDGETACCOUNT
(
   ACCOUNTOBJECTTYPE,
   BUDGETYEAR,
   BUDGETMONTH,
   OWNERCOMPANYID,
   OWNERDEPARTMENTID,
   SUBJECTID,
   OWNERID
);

/*==============================================================*/
/* Index: INDEX_BUDGETACCOUNT_2                                 */
/*==============================================================*/
CREATE INDEX INDEX_BUDGETACCOUNT_2 ON T_FB_BUDGETACCOUNT
(
   ACCOUNTOBJECTTYPE
);

/*==============================================================*/
/* Table: T_FB_BUDGETCHECK                                      */
/*==============================================================*/
CREATE TABLE T_FB_BUDGETCHECK
(
   BUDGETCHECKID        VARCHAR(50) NOT NULL,
   BUDGETCHECKDATE      DATETIME NOT NULL,
   ACCOUNTOBJECTTYPE    INT COMMENT '1 : ��˾ , 2 : ���� ',
   BUDGETYEAR           INT,
   BUDGETMONTH          INT,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50),
   OWNERID              VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   BUDGETMONEY          NUMERIC(8,0),
   ACTUALMONEY          NUMERIC(8,0),
   USABLEMONEY          NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   YEARBUDGETMONEY      NUMERIC(8,0),
   YEARTOTALBUDGETMONEY NUMERIC(8,0),
   PRIMARY KEY (BUDGETCHECKID)
);

ALTER TABLE T_FB_BUDGETCHECK COMMENT 'Ԥ����㵥';

/*==============================================================*/
/* Table: T_FB_CHARGEAPPLYREPAYDETAIL                           */
/*==============================================================*/
CREATE TABLE T_FB_CHARGEAPPLYREPAYDETAIL
(
   CHARGEAPPLYREPAYDETAILID VARCHAR(50) NOT NULL COMMENT '����',
   CHARGEAPPLYMASTERID  VARCHAR(50) COMMENT '��������ID',
   REPAYTYPE            NUMERIC(38,0) NOT NULL COMMENT '1�ֽ���ͨ���
            2�ֽ𻹱��ý���
            3�ֽ�ר����',
   REMARK               VARCHAR(200) COMMENT 'ժҪ',
   BORROWMONEY          NUMERIC(8,0) COMMENT '������',
   REPAYMONEY           NUMERIC(8,0) NOT NULL COMMENT '������',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) NOT NULL COMMENT '�޸���',
   UPDATEDATE           DATETIME NOT NULL COMMENT '�޸�ʱ��',
   PRIMARY KEY (CHARGEAPPLYREPAYDETAILID)
);

ALTER TABLE T_FB_CHARGEAPPLYREPAYDETAIL COMMENT 'T_FB_CHARGEAPPLYREPAYDETAIL';

/*==============================================================*/
/* Table: T_FB_CHARGEAPPLYDETAIL                                */
/*==============================================================*/
CREATE TABLE T_FB_CHARGEAPPLYDETAIL
(
   CHARGEAPPLYDETAILID  VARCHAR(50) NOT NULL,
   SERIALNUMBER         INT,
   SUBJECTID            VARCHAR(50) NOT NULL,
   CHARGEAPPLYMASTERID  VARCHAR(50),
   BORROWAPPLYDETAILID  VARCHAR(50),
   CHARGETYPE           INT COMMENT '1�����ˣ� 2������',
   USABLEMONEY          NUMERIC(8,0),
   REPAYMONEY           NUMERIC(8,0),
   REMARK               VARCHAR(200),
   CHARGEMONEY          NUMERIC(8,0) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   PRIMARY KEY (CHARGEAPPLYDETAILID)
);

ALTER TABLE T_FB_CHARGEAPPLYDETAIL COMMENT '�������뵥��ϸ';

/*==============================================================*/
/* Table: T_FB_CHARGEAPPLYMASTER                                */
/*==============================================================*/
CREATE TABLE T_FB_CHARGEAPPLYMASTER
(
   CHARGEAPPLYMASTERID  VARCHAR(50) NOT NULL,
   EXTENSIONALORDERID   VARCHAR(50),
   BORROWAPPLYMASTERID  VARCHAR(50),
   CHARGEAPPLYMASTERCODE VARCHAR(50) NOT NULL,
   BUDGETARYMONTH       DATETIME NOT NULL,
   PAYTYPE              INT NOT NULL COMMENT '1���˷��ñ�����2���3��Ԥ���4���ͻ��5����',
   REMARK               VARCHAR(2000),
   TOTALMONEY           NUMERIC(8,0) NOT NULL,
   REPAYMENT            NUMERIC(8,0),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   RECEIVER             VARCHAR(50),
   BANK                 VARCHAR(50),
   BANKACCOUT           VARCHAR(50),
   PAYTARGET            INT COMMENT '1 : ������
            2 : �����ʺ�',
   PAYMENTINFO          VARCHAR(2000) COMMENT '֧����Ϣ(��ӡר��)',
   REPAYTYPE            NUMERIC(38,0) COMMENT '1����ͨ���
            2�屸�ý���',
   ISPAYED              NUMERIC(38,0),
   PRIMARY KEY (CHARGEAPPLYMASTERID)
);

ALTER TABLE T_FB_CHARGEAPPLYMASTER COMMENT '�������뵥';

/*==============================================================*/
/* Index: IDX_CREATEDATESTATUS                                  */
/*==============================================================*/
CREATE INDEX IDX_CREATEDATESTATUS ON T_FB_CHARGEAPPLYMASTER
(
   CREATEDATE,
   CHECKSTATES
);

/*==============================================================*/
/* Table: T_FB_CHARGEBYREPAY                                    */
/*==============================================================*/
CREATE TABLE T_FB_CHARGEBYREPAY
(
   CHARGEBYREPAYID      VARCHAR(50) NOT NULL COMMENT '���ID',
   CHARGEAPPLYMASTERID  VARCHAR(50) COMMENT '�������뵥ID',
   REPAYTYPE            NUMERIC(38,0) NOT NULL COMMENT '1�ֽ���ͨ���
            2�ֽ𻹱��ý���
            3�ֽ�ר����
            
            ',
   PROJECTEDREPAYDATE   DATETIME COMMENT 'Ԥ�ƻ���ʱ��',
   SPECIALBORROWMONEY   NUMERIC(8,0) COMMENT 'ר������',
   SIMPLEBORROWMONEY    NUMERIC(8,0) COMMENT '��ͨ�����',
   BACKUPBORROWMONEY    NUMERIC(8,0) COMMENT '���ý�����',
   TOTALMONEY           NUMERIC(8,0) NOT NULL COMMENT '�ܽ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   EDITSTATES           NUMERIC(38,0) NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          NUMERIC(38,0) NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OWNERID              VARCHAR(50) NOT NULL COMMENT '������',
   OWNERPOSTID          VARCHAR(50) NOT NULL COMMENT '�����˸�λ',
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL COMMENT '�����˲���',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL COMMENT '�����˹�˾',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '��˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '����ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '��λID',
   UPDATEUSERID         VARCHAR(50) NOT NULL COMMENT '�޸���',
   UPDATEDATE           DATETIME NOT NULL COMMENT '�޸�ʱ��',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   OWNERNAME            VARCHAR(50) COMMENT '����������',
   CREATEDEPARTMENTNAME VARCHAR(50) COMMENT '��������',
   CREATECOMPANYNAME    VARCHAR(50) COMMENT '��˾����',
   CREATEPOSTNAME       VARCHAR(50) COMMENT '��λ����',
   OWNERDEPARTMENTNAME  VARCHAR(50) COMMENT '�����˲�������',
   OWNERCOMPANYNAME     VARCHAR(50) COMMENT '�����˹�˾����',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '�����˸�λ����',
   PRIMARY KEY (CHARGEBYREPAYID)
);

ALTER TABLE T_FB_CHARGEBYREPAY COMMENT '���';

/*==============================================================*/
/* Table: T_FB_COMPANYBUDGETAPPLYDETAIL                         */
/*==============================================================*/
CREATE TABLE T_FB_COMPANYBUDGETAPPLYDETAIL
(
   COMPANYBUDGETAPPLYDETAILID VARCHAR(50) NOT NULL,
   COMPANYBUDGETAPPLYMASTERID VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   BUDGETMONEY          NUMERIC(8,0) NOT NULL,
   AUDITBUDGETMONEY     NUMERIC(8,0),
   DISTRIBUTEDMONDEY    NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   LASTBUDGETMONEY      NUMERIC(8,0) COMMENT '���귢��',
   REMARK               VARCHAR(200) COMMENT '��ע',
   PRIMARY KEY (COMPANYBUDGETAPPLYDETAILID)
);

ALTER TABLE T_FB_COMPANYBUDGETAPPLYDETAIL COMMENT '��˾Ԥ��������ϸ';

/*==============================================================*/
/* Table: T_FB_COMPANYBUDGETAPPLYMASTER                         */
/*==============================================================*/
CREATE TABLE T_FB_COMPANYBUDGETAPPLYMASTER
(
   COMPANYBUDGETAPPLYMASTERID VARCHAR(50) NOT NULL,
   COMPANYBUDGETAPPLYMASTERCODE VARCHAR(50),
   BUDGETYEAR           INT,
   REMARK               VARCHAR(2000),
   BUDGETMONEY          NUMERIC(8,0),
   AUDITBUDGETMONEY     NUMERIC(8,0),
   DISTRIBUTEDMONDEY    NUMERIC(8,0),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   COMPANYBUDGETSUMMASTERID VARCHAR(50),
   ISVALID              VARCHAR(10),
   PRIMARY KEY (COMPANYBUDGETAPPLYMASTERID)
);

ALTER TABLE T_FB_COMPANYBUDGETAPPLYMASTER COMMENT '���Ԥ��';

/*==============================================================*/
/* Table: T_FB_COMPANYBUDGETMODDETAIL                           */
/*==============================================================*/
CREATE TABLE T_FB_COMPANYBUDGETMODDETAIL
(
   COMPANYBUDGETMODDETAILID VARCHAR(50) NOT NULL,
   COMPANYBUDGETMODMASTERID VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   USABLEMONEY          NUMERIC(8,0),
   AUDITBUDGETMONEY     NUMERIC(8,0),
   BUDGETMONEY          NUMERIC(8,0) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50),
   REMARK               VARCHAR(200) COMMENT '��ע',
   PRIMARY KEY (COMPANYBUDGETMODDETAILID)
);

ALTER TABLE T_FB_COMPANYBUDGETMODDETAIL COMMENT '��˾Ԥ�������뵥��ϸ';

/*==============================================================*/
/* Table: T_FB_COMPANYBUDGETMODMASTER                           */
/*==============================================================*/
CREATE TABLE T_FB_COMPANYBUDGETMODMASTER
(
   COMPANYBUDGETMODMASTERID VARCHAR(50) NOT NULL,
   COMPANYBUDGETMODMASTERCODE VARCHAR(50),
   BUDGETYEAR           INT,
   REMARK               VARCHAR(2000),
   AUDITBUDGETMONEY     NUMERIC(8,0),
   BUDGETMONEY          NUMERIC(8,0),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   PRIMARY KEY (COMPANYBUDGETMODMASTERID)
);

ALTER TABLE T_FB_COMPANYBUDGETMODMASTER COMMENT '��˾Ԥ�������뵥';

/*==============================================================*/
/* Table: T_FB_COMPANYBUDGETSUMDETAIL                           */
/*==============================================================*/
CREATE TABLE T_FB_COMPANYBUDGETSUMDETAIL
(
   COMPANYBUDGETSUMDETAILID VARCHAR(50) NOT NULL,
   COMPANYBUDGETAPPLYMASTERID VARCHAR(50),
   COMPANYBUDGETSUMMASTERID VARCHAR(50),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CHECKSTATES          NUMERIC(38,0) COMMENT 'Ĭ��Ϊnull,3���',
   PRIMARY KEY (COMPANYBUDGETSUMDETAILID)
);

ALTER TABLE T_FB_COMPANYBUDGETSUMDETAIL COMMENT '���Ԥ�������ϸ';

/*==============================================================*/
/* Table: T_FB_COMPANYBUDGETSUMMASTER                           */
/*==============================================================*/
CREATE TABLE T_FB_COMPANYBUDGETSUMMASTER
(
   COMPANYBUDGETSUMMASTERID VARCHAR(50) NOT NULL,
   COMPANYBUDGETSUMMASTERCODE VARCHAR(50),
   BUDGETYEAR           NUMERIC(38,0),
   REMARK               VARCHAR(2000),
   BUDGETMONEY          NUMERIC(8,0),
   AUDITBUDGETMONEY     NUMERIC(8,0),
   DISTRIBUTEDMONDEY    NUMERIC(8,0),
   EDITSTATES           NUMERIC(38,0) NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          NUMERIC(38,0) NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   SUMSETTINGSMASTERID  VARCHAR(50) COMMENT 'Ԥ�������������ID',
   PARENTID             VARCHAR(50) COMMENT '����ID',
   SUMLEVEL             NUMERIC(8,0) DEFAULT 0 COMMENT '���ܼ���',
   PRIMARY KEY (COMPANYBUDGETSUMMASTERID)
);

ALTER TABLE T_FB_COMPANYBUDGETSUMMASTER COMMENT '���Ԥ�����';

/*==============================================================*/
/* Table: T_FB_COMPANYTRANSFERDETAIL                            */
/*==============================================================*/
CREATE TABLE T_FB_COMPANYTRANSFERDETAIL
(
   COMPANYTRANSFERDETAILID VARCHAR(50) NOT NULL,
   SUBJECTID            VARCHAR(50),
   COMPANYTRANSFERMASTERID VARCHAR(50),
   USABLEMONEY          NUMERIC(8,0),
   TRANSFERMONEY        NUMERIC(8,0) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   PRIMARY KEY (COMPANYTRANSFERDETAILID)
);

ALTER TABLE T_FB_COMPANYTRANSFERDETAIL COMMENT 'Ԥ����������뵥��ϸ';

/*==============================================================*/
/* Table: T_FB_COMPANYTRANSFERMASTER                            */
/*==============================================================*/
CREATE TABLE T_FB_COMPANYTRANSFERMASTER
(
   COMPANYTRANSFERMASTERID VARCHAR(50) NOT NULL,
   COMPANYTRANSFERMASTERCODE VARCHAR(50),
   BUDGETYEAR           INT,
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   REMARK               VARCHAR(2000),
   AUDITTRANSFERMONEY   NUMERIC(8,0),
   TRANSFERMONEY        NUMERIC(8,0),
   TRANSFERFROM         VARCHAR(50),
   TRANSFERTO           VARCHAR(50),
   TRANSFERFROMTYPE     INT COMMENT '1 : ��˾ ; 2: ���� ; 3: ����',
   TRANSFERTOTYPE       INT COMMENT '1 : ��˾ ; 2: ���� ; 3: ����',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   TRANSFERFROMNAME     VARCHAR(100),
   TRANSFERTONAME       VARCHAR(100),
   PRIMARY KEY (COMPANYTRANSFERMASTERID)
);

ALTER TABLE T_FB_COMPANYTRANSFERMASTER COMMENT '��˾Ԥ����������뵥';

/*==============================================================*/
/* Table: T_FB_DEPTBUDGETADDDETAIL                              */
/*==============================================================*/
CREATE TABLE T_FB_DEPTBUDGETADDDETAIL
(
   DEPTBUDGETADDDETAILID VARCHAR(50) NOT NULL,
   DEPTBUDGETADDMASTERID VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   BUDGETMONEY          NUMERIC(8,0) NOT NULL,
   AUDITBUDGETMONEY     NUMERIC(8,0),
   PERSONBUDGETMONEY    NUMERIC(8,0),
   TOTALBUDGETMONEY     NUMERIC(8,0),
   USABLEMONEY          NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   REMARK               VARCHAR(200) COMMENT '��ע',
   PRIMARY KEY (DEPTBUDGETADDDETAILID)
);

ALTER TABLE T_FB_DEPTBUDGETADDDETAIL COMMENT '����Ԥ�㲹����ϸ��';

/*==============================================================*/
/* Table: T_FB_DEPTBUDGETADDMASTER                              */
/*==============================================================*/
CREATE TABLE T_FB_DEPTBUDGETADDMASTER
(
   DEPTBUDGETADDMASTERID VARCHAR(50) NOT NULL,
   DEPTBUDGETADDMASTERCODE VARCHAR(50),
   BUDGETARYMONTH       DATETIME NOT NULL,
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   REMARK               VARCHAR(2000),
   AUDITBUDGETMONEY     NUMERIC(8,0),
   BUDGETCHARGE         NUMERIC(8,0),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   PRIMARY KEY (DEPTBUDGETADDMASTERID)
);

ALTER TABLE T_FB_DEPTBUDGETADDMASTER COMMENT '����Ԥ�㲹�����뵥';

/*==============================================================*/
/* Table: T_FB_DEPTBUDGETAPPLYDETAIL                            */
/*==============================================================*/
CREATE TABLE T_FB_DEPTBUDGETAPPLYDETAIL
(
   DEPTBUDGETAPPLYDETAILID VARCHAR(50) NOT NULL,
   DEPTBUDGETAPPLYMASTERID VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   PERSONBUDGETAPPLYMASTERID VARCHAR(50),
   SERIALNUMBER         NUMERIC(38,0),
   USABLEMONEY          NUMERIC(8,0),
   BUDGETMONEY          NUMERIC(8,0) NOT NULL,
   AUDITBUDGETMONEY     NUMERIC(8,0),
   LASTBUDGEMONEY       NUMERIC(8,0),
   LASTACTUALBUDGETMONEY NUMERIC(8,0),
   BEGINNINGBUDGETBALANCE NUMERIC(8,0),
   YEARBUDGETBALANCE    NUMERIC(8,0),
   PERSONBUDGETMONEY    NUMERIC(8,0),
   TOTALBUDGETMONEY     NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   REMARK               VARCHAR(200) COMMENT '��ע',
   PRIMARY KEY (DEPTBUDGETAPPLYDETAILID)
);

ALTER TABLE T_FB_DEPTBUDGETAPPLYDETAIL COMMENT '����Ԥ��������ϸ';

/*==============================================================*/
/* Table: T_FB_DEPTBUDGETAPPLYMASTER                            */
/*==============================================================*/
CREATE TABLE T_FB_DEPTBUDGETAPPLYMASTER
(
   DEPTBUDGETAPPLYMASTERID VARCHAR(50) NOT NULL,
   DEPTBUDGETAPPLYMASTERCODE VARCHAR(50),
   BUDGETARYMONTH       DATETIME NOT NULL,
   APPLIEDTYPE          INT COMMENT '1 : Ԥ������ 2: ��������',
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   REMARK               VARCHAR(2000),
   BUDGETMONEY          NUMERIC(8,0),
   AUDITBUDGETMONEY     NUMERIC(8,0),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   DEPTBUDGETSUMMASTERID VARCHAR(50),
   ISVALID              VARCHAR(10),
   PRIMARY KEY (DEPTBUDGETAPPLYMASTERID)
);

ALTER TABLE T_FB_DEPTBUDGETAPPLYMASTER COMMENT '����Ԥ������';

/*==============================================================*/
/* Table: T_FB_DEPTBUDGETSUMDETAIL                              */
/*==============================================================*/
CREATE TABLE T_FB_DEPTBUDGETSUMDETAIL
(
   DEPTBUDGETSUMDETAILID VARCHAR(50) NOT NULL,
   DEPTBUDGETSUMMASTERID VARCHAR(50),
   DEPTBUDGETAPPLYMASTERID VARCHAR(50),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CHECKSTATES          NUMERIC(38,0) COMMENT 'Ĭ��Ϊnull,3���',
   PRIMARY KEY (DEPTBUDGETSUMDETAILID)
);

ALTER TABLE T_FB_DEPTBUDGETSUMDETAIL COMMENT '����Ԥ�������ϸ';

/*==============================================================*/
/* Table: T_FB_DEPTBUDGETSUMMASTER                              */
/*==============================================================*/
CREATE TABLE T_FB_DEPTBUDGETSUMMASTER
(
   DEPTBUDGETSUMMASTERID VARCHAR(50) NOT NULL,
   DEPTBUDGETSUMMASTERCODE VARCHAR(50),
   BUDGETARYMONTH       DATETIME NOT NULL,
   APPLIEDTYPE          NUMERIC(38,0) COMMENT '1 : Ԥ������ 2: ��������',
   EDITSTATES           NUMERIC(38,0) NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          NUMERIC(38,0) NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   REMARK               VARCHAR(2000),
   BUDGETMONEY          NUMERIC(8,0),
   AUDITBUDGETMONEY     NUMERIC(8,0),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   SUMSETTINGSMASTERID  VARCHAR(50) COMMENT 'Ԥ�������������ID',
   PARENTID             VARCHAR(50) COMMENT '����ID',
   SUMLEVEL             NUMERIC(8,0) COMMENT '���ܼ���',
   PRIMARY KEY (DEPTBUDGETSUMMASTERID)
);

ALTER TABLE T_FB_DEPTBUDGETSUMMASTER COMMENT '����Ԥ�����';

/*==============================================================*/
/* Table: T_FB_DEPTTRANSFERDETAIL                               */
/*==============================================================*/
CREATE TABLE T_FB_DEPTTRANSFERDETAIL
(
   DEPTTRANSFERDETAILID VARCHAR(50) NOT NULL,
   SUBJECTID            VARCHAR(50),
   DEPTTRANSFERMASTERID VARCHAR(50),
   USABLEMONEY          NUMERIC(8,0),
   AUDITTRANSFERMONEY   NUMERIC(8,0),
   TRANSFERMONEY        NUMERIC(8,0) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   REMARK               VARCHAR(200) COMMENT '��ע',
   PRIMARY KEY (DEPTTRANSFERDETAILID)
);

ALTER TABLE T_FB_DEPTTRANSFERDETAIL COMMENT '����Ԥ����������뵥��ϸ';

/*==============================================================*/
/* Table: T_FB_DEPTTRANSFERMASTER                               */
/*==============================================================*/
CREATE TABLE T_FB_DEPTTRANSFERMASTER
(
   DEPTTRANSFERMASTERID VARCHAR(50) NOT NULL,
   DEPTTRANSFERMASTERCODE VARCHAR(50),
   BUDGETARYMONTH       DATETIME NOT NULL,
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   REMARK               VARCHAR(2000),
   AUDITTRANSFERMONEY   NUMERIC(8,0),
   TRANSFERMONEY        NUMERIC(8,0),
   TRANSFERFROM         VARCHAR(50),
   TRANSFERTO           VARCHAR(50),
   TRANSFERFROMTYPE     INT COMMENT '1 : ��˾ ; 2: ���� ; 3: ����',
   TRANSFERTOTYPE       INT COMMENT '1 : ��˾ ; 2: ���� ; 3: ����',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   TRANSFERFROMNAME     VARCHAR(50),
   TRANSFERTONAME       VARCHAR(50),
   TRANSFERFROMPOSTID   VARCHAR(50),
   TRANSFERTOPOSTID     VARCHAR(50),
   TRANSFERFROMPOSTNAME VARCHAR(50),
   TRANSFERTOPOSTNAME   VARCHAR(50),
   TRANSFERTOCOMPANYID  VARCHAR(50),
   TRANSFERFROMCOMPANYID VARCHAR(50),
   TRANSFERTOCOMPANYNAME VARCHAR(50),
   TRANSFERFROMCOMPANYNAME VARCHAR(50),
   TRANSFERFROMDEPARTMENTID VARCHAR(50),
   TRANSFERTODEPARTMENTID VARCHAR(50),
   TRANSFERFROMDEPARTMENTNAME VARCHAR(50),
   TRANSFERTODEPARTMENTNAME VARCHAR(50),
   PRIMARY KEY (DEPTTRANSFERMASTERID)
);

ALTER TABLE T_FB_DEPTTRANSFERMASTER COMMENT '����Ԥ����������뵥';

/*==============================================================*/
/* Table: T_FB_EXTENSIONORDERDETAIL                             */
/*==============================================================*/
CREATE TABLE T_FB_EXTENSIONORDERDETAIL
(
   EXTENSIONORDERDETAILID VARCHAR(50) NOT NULL,
   EXTENSIONALORDERID   VARCHAR(50),
   SUBJECTID            VARCHAR(50) NOT NULL,
   CHARGETYPE           INT COMMENT '1�����ˣ� 2������',
   USABLEMONEY          NUMERIC(8,0),
   REMARK               VARCHAR(200),
   APPLIEDMONEY         NUMERIC(8,0) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   PRIMARY KEY (EXTENSIONORDERDETAILID)
);

ALTER TABLE T_FB_EXTENSIONORDERDETAIL COMMENT '��չ����ϸ';

/*==============================================================*/
/* Table: T_FB_EXTENSIONALORDER                                 */
/*==============================================================*/
CREATE TABLE T_FB_EXTENSIONALORDER
(
   EXTENSIONALORDERID   VARCHAR(50) NOT NULL,
   EXTENSIONALTYPEID    VARCHAR(50),
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   ORDERID              VARCHAR(50),
   ORDERCODE            VARCHAR(50),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   INNERORDERTYPE       VARCHAR(50),
   INNERORDERID         VARCHAR(50),
   RECEIVER             VARCHAR(50),
   BANK                 VARCHAR(50),
   BANKACCOUT           VARCHAR(50),
   PAYTARGET            INT COMMENT '1 : ������
            2 : �����ʺ�',
   TOTALMONEY           NUMERIC(8,0),
   APPLYTYPE            INT COMMENT '1,���ñ���
            2.���',
   REMARK               VARCHAR(2000),
   INNERORDERCODE       VARCHAR(50) COMMENT '�ڲ����ݱ��',
   PAYMENTINFO          VARCHAR(2000) COMMENT '֧����Ϣ(��ӡר��)',
   PRIMARY KEY (EXTENSIONALORDERID)
);

ALTER TABLE T_FB_EXTENSIONALORDER COMMENT '��չ����';

/*==============================================================*/
/* Table: T_FB_EXTENSIONALTYPE                                  */
/*==============================================================*/
CREATE TABLE T_FB_EXTENSIONALTYPE
(
   EXTENSIONALTYPEID    VARCHAR(50) NOT NULL,
   EXTENSIONALTYPECODE  VARCHAR(50),
   EXTENSIONALTYPENAME  VARCHAR(50),
   REMARK               VARCHAR(2000),
   MODELCODE            VARCHAR(50),
   SYSTEMCODE           VARCHAR(50),
   PRIMARY KEY (EXTENSIONALTYPEID)
);

ALTER TABLE T_FB_EXTENSIONALTYPE COMMENT '��չ��������';

/*==============================================================*/
/* Table: T_FB_ORDERCODE                                        */
/*==============================================================*/
CREATE TABLE T_FB_ORDERCODE
(
   ORDERCODEID          VARCHAR(50),
   TABLENAME            VARCHAR(50) NOT NULL,
   FIELDNAME            VARCHAR(50) NOT NULL,
   PRENAME              VARCHAR(50),
   CURRENTDATE          DATETIME,
   RUNNINGNUMBER        INT,
   REMARK               VARCHAR(250),
   ORDERCODESTYLE       VARCHAR(100),
   UPDATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   CREATECOMPANYID      VARCHAR(50),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   PRIMARY KEY (TABLENAME)
);

ALTER TABLE T_FB_ORDERCODE COMMENT '���ݱ�����ɹ����';

/*==============================================================*/
/* Table: T_FB_PERSONTRANSFERDETAIL                             */
/*==============================================================*/
CREATE TABLE T_FB_PERSONTRANSFERDETAIL
(
   PERSONTRANSFERDETAILID VARCHAR(50) NOT NULL COMMENT '����Ԥ�������ϸID',
   DEPTTRANSFERDETAILID VARCHAR(50) COMMENT 'Ԥ����������뵥��ϸID',
   SUBJECTID            VARCHAR(50) COMMENT '��ĿID',
   BUDGETMONEY          NUMERIC(8,0) COMMENT '�ʽ�Ԥ��',
   LIMITBUDGETMONEY     NUMERIC(8,0) COMMENT '���Ԥ����',
   USABLEMONEY          NUMERIC(8,0) COMMENT '���ý��',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) NOT NULL COMMENT '�޸���',
   UPDATEDATE           DATETIME NOT NULL COMMENT '�޸�ʱ��',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   OWNERNAME            VARCHAR(50) COMMENT '����������',
   OWNERID              VARCHAR(50) NOT NULL COMMENT '������',
   OWNERPOSTID          VARCHAR(50) COMMENT '�����˸�λ',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '�����˸�λ����',
   REMARK               VARCHAR(200) COMMENT 'ժҪ',
   PRIMARY KEY (PERSONTRANSFERDETAILID)
);

ALTER TABLE T_FB_PERSONTRANSFERDETAIL COMMENT '����Ԥ�������ϸ';

/*==============================================================*/
/* Table: T_FB_PERSONACCOUNT                                    */
/*==============================================================*/
CREATE TABLE T_FB_PERSONACCOUNT
(
   PERSONACCOUNTID      VARCHAR(50) NOT NULL,
   NEXTREPAYDATE        DATETIME COMMENT '
            ',
   REMARK               VARCHAR(2000),
   SPECIALBORROWMONEY   NUMERIC(8,0) COMMENT '�ֽ�ר����',
   SIMPLEBORROWMONEY    NUMERIC(8,0) COMMENT '�ֽ���ͨ���',
   BACKUPBORROWMONEY    NUMERIC(8,0) COMMENT '�ֽ𻹱��ý���',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   BORROWMONEY          NUMERIC(8,0) COMMENT '����ܽ��',
   PRIMARY KEY (PERSONACCOUNTID)
);

ALTER TABLE T_FB_PERSONACCOUNT COMMENT '������ϸ����';

/*==============================================================*/
/* Table: T_FB_PERSONBUDGETADDDETAIL                            */
/*==============================================================*/
CREATE TABLE T_FB_PERSONBUDGETADDDETAIL
(
   PERSONBUDGETADDDETAILID VARCHAR(50) NOT NULL,
   SUBJECTID            VARCHAR(50),
   DEPTBUDGETADDDETAILID VARCHAR(50),
   BUDGETMONEY          NUMERIC(8,0),
   LIMITBUDGETMONEY     NUMERIC(8,0),
   USABLEMONEY          NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   PRIMARY KEY (PERSONBUDGETADDDETAILID)
);

ALTER TABLE T_FB_PERSONBUDGETADDDETAIL COMMENT '����Ԥ�㲹����ϸ';

/*==============================================================*/
/* Table: T_FB_PERSONBUDGETAPPLYDETAIL                          */
/*==============================================================*/
CREATE TABLE T_FB_PERSONBUDGETAPPLYDETAIL
(
   PERSONBUDGETAPPLYDETAILID VARCHAR(50) NOT NULL,
   SUBJECTID            VARCHAR(50),
   DEPTBUDGETAPPLYDETAILID VARCHAR(50),
   BUDGETMONEY          NUMERIC(8,0),
   LIMITBUDGETMONEY     NUMERIC(8,0),
   USABLEMONEY          NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   REMARK               VARCHAR(200) COMMENT '��ע',
   PRIMARY KEY (PERSONBUDGETAPPLYDETAILID)
);

ALTER TABLE T_FB_PERSONBUDGETAPPLYDETAIL COMMENT '����Ԥ��������ϸ';

/*==============================================================*/
/* Table: T_FB_PERSONMONEYASSIGNDETAIL                          */
/*==============================================================*/
CREATE TABLE T_FB_PERSONMONEYASSIGNDETAIL
(
   PERSONBUDGETAPPLYDETAILID VARCHAR(50) NOT NULL,
   PERSONMONEYASSIGNMASTERID VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   BUDGETMONEY          NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   REMARK               VARCHAR(200),
   POSTINFO             VARCHAR(200),
   SUGGESTBUDGETMONEY   NUMERIC(8,0) COMMENT '�²���Ȳο�',
   POSTLEVEL            NUMERIC(8,0),
   PRIMARY KEY (PERSONBUDGETAPPLYDETAILID)
);

ALTER TABLE T_FB_PERSONMONEYASSIGNDETAIL COMMENT '���˾����²���ϸ';

/*==============================================================*/
/* Table: T_FB_PERSONMONEYASSIGNMASTER                          */
/*==============================================================*/
CREATE TABLE T_FB_PERSONMONEYASSIGNMASTER
(
   PERSONMONEYASSIGNMASTERID VARCHAR(50) NOT NULL,
   PERSONMONEYASSIGNMASTERCODE VARCHAR(50),
   BUDGETARYMONTH       DATETIME NOT NULL,
   APPLIEDTYPE          NUMERIC(38,0) COMMENT '1 : Ԥ������ 2: ��������',
   EDITSTATES           NUMERIC(38,0) NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          NUMERIC(38,0) NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   REMARK               VARCHAR(2000),
   BUDGETMONEY          NUMERIC(8,0),
   AUDITBUDGETMONEY     NUMERIC(8,0),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   ASSIGNCOMPANYID      VARCHAR(50) COMMENT '�²���˾',
   ASSIGNCOMPANYNAME    VARCHAR(50) COMMENT '�²���˾����',
   PRIMARY KEY (PERSONMONEYASSIGNMASTERID)
);

ALTER TABLE T_FB_PERSONMONEYASSIGNMASTER COMMENT '���˾����²����뵥';

/*==============================================================*/
/* Table: T_FB_REPAYAPPLYDETAIL                                 */
/*==============================================================*/
CREATE TABLE T_FB_REPAYAPPLYDETAIL
(
   REPAYAPPLYDETAILID   VARCHAR(50) NOT NULL,
   SUBJECTID            VARCHAR(50),
   REPAYAPPLYMASTERID   VARCHAR(50),
   BORROWAPPLYDETAILID  VARCHAR(50),
   REMARK               VARCHAR(200),
   CHARGETYPE           INT COMMENT '1�����ˣ� 2������',
   BORROWMONEY          NUMERIC(8,0) NOT NULL,
   REPAYMONEY           NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   REPAYTYPE            NUMERIC(38,0) COMMENT '1�ֽ���ͨ���
            2�ֽ𻹱��ý���
            3�ֽ�ר����',
   PRIMARY KEY (REPAYAPPLYDETAILID)
);

ALTER TABLE T_FB_REPAYAPPLYDETAIL COMMENT '����������ϸ';

/*==============================================================*/
/* Table: T_FB_REPAYAPPLYMASTER                                 */
/*==============================================================*/
CREATE TABLE T_FB_REPAYAPPLYMASTER
(
   REPAYAPPLYMASTERID   VARCHAR(50) NOT NULL,
   EXTENSIONALORDERID   VARCHAR(50),
   BORROWAPPLYMASTERID  VARCHAR(50),
   REPAYAPPLYCODE       VARCHAR(50),
   REPAYTYPE            INT COMMENT '1�ֽ���ͨ���
            2�ֽ𻹱��ý���
            3�ֽ�ר����
            
            ',
   PROJECTEDREPAYDATE   DATETIME,
   BRORROWEDMONEY       NUMERIC(8,0),
   TOTALMONEY           NUMERIC(8,0) NOT NULL,
   REMARK               VARCHAR(2000),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   PAYMENTINFO          VARCHAR(2000) COMMENT '֧����Ϣ(��ӡר��)',
   PRIMARY KEY (REPAYAPPLYMASTERID)
);

ALTER TABLE T_FB_REPAYAPPLYMASTER COMMENT '�������뵥';

/*==============================================================*/
/* Table: T_FB_SUBJECTCOMPANYSET                                */
/*==============================================================*/
CREATE TABLE T_FB_SUBJECTCOMPANYSET
(
   SUBJECTCOMPANYID     VARCHAR(50) NOT NULL,
   SUBJECTID            VARCHAR(50),
   ACTIVED              INT NOT NULL COMMENT '1 : ���� ; 0 : ������',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   PRIMARY KEY (SUBJECTCOMPANYID)
);

ALTER TABLE T_FB_SUBJECTCOMPANYSET COMMENT '��˾��Ŀ����';

/*==============================================================*/
/* Table: T_FB_SUMSETTINGSDETAIL                                */
/*==============================================================*/
CREATE TABLE T_FB_SUMSETTINGSDETAIL
(
   SUMSETTINGSDETAILID  VARCHAR(50) NOT NULL,
   SUMSETTINGSMASTERID  VARCHAR(50) NOT NULL,
   EDITSTATES           NUMERIC(38,0) NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   OWNERID              VARCHAR(50) COMMENT '������',
   OWNERPOSTID          VARCHAR(50) COMMENT '�����˸�λ',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '�����˲���',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '�����˹�˾',
   OWNERNAME            VARCHAR(50) COMMENT '����������',
   OWNERDEPARTMENTNAME  VARCHAR(50) COMMENT '�����˲�������',
   OWNERCOMPANYNAME     VARCHAR(50) COMMENT '�����˹�˾����',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '�����˸�λ����',
   PRIMARY KEY (SUMSETTINGSDETAILID)
);

ALTER TABLE T_FB_SUMSETTINGSDETAIL COMMENT 'Ԥ�����������ϸ';

/*==============================================================*/
/* Table: T_FB_SUMSETTINGSMASTER                                */
/*==============================================================*/
CREATE TABLE T_FB_SUMSETTINGSMASTER
(
   SUMSETTINGSMASTERID  VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL COMMENT '������',
   OWNERPOSTID          VARCHAR(50) NOT NULL COMMENT '�����˸�λ',
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL COMMENT '�����˲���',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL COMMENT '�����˹�˾',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '��˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '����ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '��λID',
   UPDATEUSERID         VARCHAR(50) NOT NULL COMMENT '�޸���',
   UPDATEDATE           DATETIME NOT NULL COMMENT '�޸�ʱ��',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   OWNERNAME            VARCHAR(50) COMMENT '����������',
   CREATEDEPARTMENTNAME VARCHAR(50) COMMENT '��������',
   CREATECOMPANYNAME    VARCHAR(50) COMMENT '��˾����',
   CREATEPOSTNAME       VARCHAR(50) COMMENT '��λ����',
   OWNERDEPARTMENTNAME  VARCHAR(50) COMMENT '�����˲�������',
   OWNERCOMPANYNAME     VARCHAR(50) COMMENT '�����˹�˾����',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '�����˸�λ����',
   REMARK               VARCHAR(2000),
   CHECKSTATES          NUMERIC(38,0) COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   EDITSTATES           NUMERIC(38,0) COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   PRIMARY KEY (SUMSETTINGSMASTERID)
);

ALTER TABLE T_FB_SUMSETTINGSMASTER COMMENT 'Ԥ�������������';

/*==============================================================*/
/* Table: T_FB_SALARYPAYLIST                                    */
/*==============================================================*/
CREATE TABLE T_FB_SALARYPAYLIST
(
   SALARYPAYLISTID      VARCHAR(50) NOT NULL,
   PAYYEAR              NUMERIC(38,0),
   PAYMONTH             NUMERIC(38,0),
   PAYMONEY             NUMERIC(8,0),
   EDITSTATES           NUMERIC(38,0) COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          NUMERIC(38,0) COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   PRIMARY KEY (SALARYPAYLISTID)
);

ALTER TABLE T_FB_SALARYPAYLIST COMMENT '���ʷ����м�¼��';

/*==============================================================*/
/* Table: T_FB_SUBJECT                                          */
/*==============================================================*/
CREATE TABLE T_FB_SUBJECT
(
   SUBJECTID            VARCHAR(50) NOT NULL,
   SUBJECTTYPEID        VARCHAR(50),
   PARENTSUBJECTID      VARCHAR(50),
   SUBJECTNAME          VARCHAR(50) NOT NULL,
   SUBJECTCODE          VARCHAR(50) NOT NULL,
   ACTIVED              INT NOT NULL COMMENT '1 : ���� ; 0 : ������',
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   OWNERNAME            VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   PRIMARY KEY (SUBJECTID)
);

ALTER TABLE T_FB_SUBJECT COMMENT '��Ŀ';

/*==============================================================*/
/* Table: T_FB_SUBJECTCOMPANY                                   */
/*==============================================================*/
CREATE TABLE T_FB_SUBJECTCOMPANY
(
   SUBJECTCOMPANYID     VARCHAR(50) NOT NULL,
   SUBJECTID            VARCHAR(50),
   ACTIVED              INT NOT NULL COMMENT '1 : ���� ; 0 : ������',
   ISMONTHADJUST        INT COMMENT '��Ŀ���Խ��е����������¶�Ԥ��������Ե��������Ŀ
            0: ������ 1: ����',
   ISYEARBUDGET         INT COMMENT '��ʾ�¶�Ԥ�������Ԥ������
            1 : ���� 0: ������',
   CONTROLTYPE          INT COMMENT '1 : ���ܿ���ʹ��; 2 : ���ܿ���ʹ�� ; 3: ������ ; 4: �����',
   ISMONTHLIMIT         INT COMMENT '��ʾ�ڱ���ʱ���ܳ���ʵʱ���
             0 : ������ ; 1:����',
   ISPERSON             INT COMMENT '��ʾ�Ƿ�������ڸ��˷���
            0:  ������ ;  1:  ����',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          NUMERIC(38,0),
   PRIMARY KEY (SUBJECTCOMPANYID)
);

ALTER TABLE T_FB_SUBJECTCOMPANY COMMENT '��˾��Ŀά����';

/*==============================================================*/
/* Table: T_FB_SUBJECTDEPTMENT                                  */
/*==============================================================*/
CREATE TABLE T_FB_SUBJECTDEPTMENT
(
   SUBJECTDEPTMENTID    VARCHAR(50) NOT NULL,
   SUBJECTCOMPANYID     VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   ACTIVED              INT NOT NULL COMMENT '1 : ���� ; 0 : ������',
   LIMITBUDGEMONEY      NUMERIC(8,0),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          NUMERIC(38,0),
   ISPERSON             NUMERIC(38,0),
   PRIMARY KEY (SUBJECTDEPTMENTID)
);

ALTER TABLE T_FB_SUBJECTDEPTMENT COMMENT '���ſ�Ŀά����';

/*==============================================================*/
/* Table: T_FB_SUBJECTPOST                                      */
/*==============================================================*/
CREATE TABLE T_FB_SUBJECTPOST
(
   SUBJECTPOSTID        VARCHAR(50) NOT NULL,
   SUBJECTDEPTMENTID    VARCHAR(50),
   SUBJECTID            VARCHAR(50),
   ACTIVED              INT NOT NULL COMMENT '1 : ���� ; 0 : ������',
   LIMITBUDGEMONEY      NUMERIC(8,0),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          NUMERIC(38,0),
   ISPERSON             NUMERIC(38,0) COMMENT '��ʾ�Ƿ�������ڸ��˷���
            0:  ������ ;  1:  ����',
   PRIMARY KEY (SUBJECTPOSTID)
);

ALTER TABLE T_FB_SUBJECTPOST COMMENT '��λ��Ŀά����';

/*==============================================================*/
/* Table: T_FB_SUBJECTTYPE                                      */
/*==============================================================*/
CREATE TABLE T_FB_SUBJECTTYPE
(
   SUBJECTTYPEID        VARCHAR(50) NOT NULL,
   SUBJECTTYPECODE      VARCHAR(50),
   SUBJECTTYPENAME      VARCHAR(50),
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   PRIMARY KEY (SUBJECTTYPEID)
);

ALTER TABLE T_FB_SUBJECTTYPE COMMENT '��Ŀ���';

/*==============================================================*/
/* Table: T_FB_SYSTEMSETTINGS                                   */
/*==============================================================*/
CREATE TABLE T_FB_SYSTEMSETTINGS
(
   SYSTEMSETTINGSID     VARCHAR(50) NOT NULL,
   SALARYSUBJECTID      VARCHAR(50),
   TRANVERLSUBJECTID    VARCHAR(50),
   UPDATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   CREATECOMPANYID      VARCHAR(50),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   CHECKDATE            DATETIME COMMENT 'ÿ�µĵڼ��죬���㡣',
   ENTERTAINMENTLSUBJECTID VARCHAR(50),
   MONEYASSIGNSUBJECTID VARCHAR(50),
   LASTCHECKDATE        DATETIME,
   PRIMARY KEY (SYSTEMSETTINGSID)
);

ALTER TABLE T_FB_SYSTEMSETTINGS COMMENT 'ϵͳ��������';

/*==============================================================*/
/* Table: T_FB_TEMP                                             */
/*==============================================================*/
CREATE TABLE T_FB_TEMP
(
   SUBJECTCODE          VARCHAR(50) NOT NULL,
   WORKPLANTYPE         VARCHAR(50),
   WORKPLANASIGNTYPE    VARCHAR(50),
   LEVEL1               VARCHAR(50),
   LEVEL2               VARCHAR(50),
   LEVEL3               VARCHAR(50),
   LEVEL4               VARCHAR(50),
   PERANTID             VARCHAR(50)
);

ALTER TABLE T_FB_TEMP COMMENT 'T_FB_TEMP';

/*==============================================================*/
/* Table: T_FB_TRAVELEXPAPPLYDETAIL                             */
/*==============================================================*/
CREATE TABLE T_FB_TRAVELEXPAPPLYDETAIL
(
   TRAVELEXPAPPLYDETAILID VARCHAR(50) NOT NULL,
   TRAVELEXPAPPLYMASTERID VARCHAR(50),
   SERIALNUMBER         INT,
   SUBJECTID            VARCHAR(50) NOT NULL,
   BORROWAPPLYDETAILID  VARCHAR(50),
   MONTH                INT NOT NULL,
   DAY                  INT NOT NULL,
   CHARGETYPE           INT COMMENT '1�����ˣ� 2������',
   USABLEMONEY          NUMERIC(8,0),
   REPAYMONEY           NUMERIC(8,0),
   REMARK               VARCHAR(200),
   TOTALDAY             INT,
   AIRFARE              NUMERIC(8,0),
   CARFARE              NUMERIC(8,0),
   LODGINGEXPENSES      NUMERIC(8,0),
   TRAVELLINGALLOWANCE  NUMERIC(8,0),
   LODGESAVINGEXPENSES  NUMERIC(8,0),
   OTHERCHARGE          NUMERIC(8,0),
   TOTALCHARGE          NUMERIC(8,0) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   AUDITCHARGEMONEY     NUMERIC(8,0),
   PRIMARY KEY (TRAVELEXPAPPLYDETAILID)
);

ALTER TABLE T_FB_TRAVELEXPAPPLYDETAIL COMMENT '���ñ������뵥��ϸ';

/*==============================================================*/
/* Table: T_FB_TRAVELEXPAPPLYMASTER                             */
/*==============================================================*/
CREATE TABLE T_FB_TRAVELEXPAPPLYMASTER
(
   TRAVELEXPAPPLYMASTERID VARCHAR(50) NOT NULL,
   EXTENSIONALORDERID   VARCHAR(50),
   BORROWAPPLYMASTERID  VARCHAR(50),
   TRAVELEXPAPPLYMASTERCODE VARCHAR(50) NOT NULL,
   BUDGETARYMONTH       DATETIME NOT NULL,
   PAYTYPE              INT NOT NULL COMMENT '1���˷��ñ�����2���3��Ԥ���4���ͻ��5����',
   REMARK               VARCHAR(2000),
   TOTALMONEY           NUMERIC(8,0) NOT NULL,
   REPAYMENT            NUMERIC(8,0),
   EDITSTATES           INT NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CHECKSTATES          INT NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   UPDATEUSERID         VARCHAR(50) NOT NULL,
   UPDATEDATE           DATETIME NOT NULL,
   CREATEUSERNAME       VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   CREATEDEPARTMENTNAME VARCHAR(50),
   CREATECOMPANYNAME    VARCHAR(50),
   CREATEPOSTNAME       VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   AUDITCHARGEMONEY     NUMERIC(8,0),
   PRIMARY KEY (TRAVELEXPAPPLYMASTERID)
);

ALTER TABLE T_FB_TRAVELEXPAPPLYMASTER COMMENT '���ñ������뵥';

/*==============================================================*/
/* Table: T_FB_WFBUDGETACCOUNT                                  */
/*==============================================================*/
CREATE TABLE T_FB_WFBUDGETACCOUNT
(
   WFBUDGETACCOUNTID    VARCHAR(50) NOT NULL COMMENT '��ˮ��ID',
   BUDGETACCOUNTID      VARCHAR(50) COMMENT 'Ԥ������ID',
   ACCOUNTOBJECTTYPE    NUMERIC(38,0) COMMENT '1 : ��˾, 2 : ����, 3 : ����',
   BUDGETYEAR           NUMERIC(38,0) COMMENT '��ǰ���',
   BUDGETMONTH          NUMERIC(38,0) COMMENT '��ǰ�·�',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '��˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '����ID',
   OWNERID              VARCHAR(50) COMMENT 'ְԱID',
   OWNERPOSTID          VARCHAR(50) COMMENT '��λID',
   SUBJECTID            VARCHAR(50) COMMENT '��ĿID',
   BUDGETMONEY          NUMERIC(8,0) COMMENT 'Ԥ����',
   USABLEMONEY          NUMERIC(8,0) COMMENT '���ö��',
   ACTUALMONEY          NUMERIC(8,0) COMMENT 'ʵ�ʶ��',
   PAIEDMONEY           NUMERIC(8,0) COMMENT '�ѱ������',
   ORDERDETAILID        VARCHAR(50) COMMENT '������ϸID',
   ORDERTYPE            VARCHAR(50) COMMENT '�������ͣ� ��/�¶�Ԥ��/������',
   ORDERID              VARCHAR(50) COMMENT '��ϸ��¼��ID��',
   ORDERCODE            VARCHAR(50) COMMENT '�������ݱ��',
   OPERATIONMONEY       NUMERIC(8,0) COMMENT '������ֵ',
   TRIGGERBY            VARCHAR(50) COMMENT '�ύ�˻������',
   TRIGGEREVENT         VARCHAR(50) COMMENT '�ύ����˲�ͨ�������ͨ��',
   REMARK               VARCHAR(200) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (WFBUDGETACCOUNTID)
);

ALTER TABLE T_FB_WFBUDGETACCOUNT COMMENT '��ˮ��_Ԥ������';

/*==============================================================*/
/* Table: T_FB_WFPERSONACCOUNT                                  */
/*==============================================================*/
CREATE TABLE T_FB_WFPERSONACCOUNT
(
   WFPERSONACCOUNTID    VARCHAR(50) NOT NULL COMMENT '��ˮ��ID',
   PERSONACCOUNTID      VARCHAR(50) COMMENT '������ϸ����ID',
   BORROWMONEY          NUMERIC(8,0) COMMENT '����ܽ��',
   NEXTREPAYDATE        DATETIME COMMENT '
            ',
   SPECIALBORROWMONEY   NUMERIC(8,0) COMMENT 'ר������',
   SIMPLEBORROWMONEY    NUMERIC(8,0) COMMENT '��ͨ�����',
   BACKUPBORROWMONEY    NUMERIC(8,0) COMMENT '���ý�����',
   OWNERID              VARCHAR(50) COMMENT '������',
   OWNERPOSTID          VARCHAR(50) COMMENT '�����˸�λ',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '�����˲���',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '�����˹�˾',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATECOMPANYID      VARCHAR(50) COMMENT '��˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '����ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '��λID',
   ORDERDETAILID        VARCHAR(50) COMMENT '������ϸID',
   ORDERTYPE            VARCHAR(50) COMMENT '�������ͣ����������',
   ORDERID              VARCHAR(50) COMMENT '��ϸ��¼��ID��',
   ORDERCODE            VARCHAR(50) COMMENT '�������ݱ��',
   OPERATIONMONEY       NUMERIC(8,0) COMMENT '������ֵ',
   TRIGGERBY            VARCHAR(50) COMMENT '�ύ�˻������',
   TRIGGEREVENT         VARCHAR(50) COMMENT '�ύ����˲�ͨ�������ͨ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (WFPERSONACCOUNTID)
);

ALTER TABLE T_FB_WFPERSONACCOUNT COMMENT '��ˮ��_������ϸ����';

/*==============================================================*/
/* Table: T_FB_WFSUBJECTSETTING                                 */
/*==============================================================*/
CREATE TABLE T_FB_WFSUBJECTSETTING
(
   WFSUBJECTSETTINGID   VARCHAR(50) NOT NULL COMMENT '��ˮ��ID',
   SUBJECTID            VARCHAR(50) COMMENT '��ĿID',
   ACTIVED              NUMERIC(38,0) COMMENT '1 : ���� ; 0 : ������',
   ISMONTHADJUST        NUMERIC(38,0) COMMENT '��Ŀ���Խ��е����������¶�Ԥ��������Ե��������Ŀ
            0: ������ 1: ����',
   ISYEARBUDGET         NUMERIC(38,0) COMMENT '��ʾ�¶�Ԥ�������Ԥ������
            0 : ���� 1: ������',
   CONTROLTYPE          NUMERIC(38,0) COMMENT '1 : ���ܿ���ʹ��; 2 : ���ǿ���ʹ�� ; 3: ������ ; 4: �����',
   ISMONTHLIMIT         NUMERIC(38,0) COMMENT '��ʾ�ڱ���ʱ���ܳ���ʵʱ���
             0 : ������ ; 1:����',
   ISPERSON             NUMERIC(38,0) COMMENT '��ʾ�Ƿ�������ڸ��˷���
            0:  ������ ;  1:  ����',
   LIMITBUDGEMONEY      NUMERIC(8,0) COMMENT '���Ԥ����',
   OWNERPOSTID          VARCHAR(50) COMMENT '��Ŀ������λ',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��Ŀ��������',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '��Ŀ������˾',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '��Ŀ������λ����',
   OWNERDEPARTMENTNAME  VARCHAR(50) COMMENT '��Ŀ������������',
   OWNERCOMPANYNAME     VARCHAR(50) COMMENT '��Ŀ������˾����',
   ORDERTYPE            VARCHAR(50) COMMENT '�������ͣ� 1:��˾��Ŀ����, 2:���ſ�Ŀ����,3:��λ��Ŀ����',
   ORDERID              VARCHAR(50) COMMENT '��ص����ñ�����ID',
   TRIGGEREVENT         VARCHAR(50) COMMENT '�ύ����˲�ͨ�������ͨ����ֱ�ӱ���',
   REMARK               VARCHAR(200) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (WFSUBJECTSETTINGID)
);

ALTER TABLE T_FB_WFSUBJECTSETTING COMMENT '��ˮ��_��Ŀ����';

/*==============================================================*/
/* Table: T_HR_ACCESSRECORD                                     */
/*==============================================================*/
CREATE TABLE T_HR_ACCESSRECORD
(
   ACCESSRECORD         VARCHAR(50) NOT NULL,
   EMPLOYEENAME         VARCHAR(2000),
   EMPLOYEEID           VARCHAR(2000),
   EMPLOYEECODE         VARCHAR(50),
   CARDTIME             DATETIME,
   MACHINEID            VARCHAR(50),
   MACHINEAREA          VARCHAR(2000),
   CARDNUMBER           VARCHAR(50),
   OUTSTATE             VARCHAR(50),
   CHECKSTATE           VARCHAR(50),
   REMARK               VARCHAR(2000),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME ,
   OWNERCOMPANYID       VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERID              VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   PRIMARY KEY (ACCESSRECORD)
);

ALTER TABLE T_HR_ACCESSRECORD COMMENT '�Ž���¼��';

/*==============================================================*/
/* Table: T_HR_ADJUSTLEAVE                                      */
/*==============================================================*/
CREATE TABLE T_HR_ADJUSTLEAVE
(
   ADJUSTLEAVEID        VARCHAR(50) NOT NULL COMMENT '��ٵ���ID',
   LEAVERECORDID        VARCHAR(50) COMMENT '��ټ�¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   LEAVETYPESETID       VARCHAR(50) COMMENT '�������ID',
   OFFSEOBJECTTYPE      VARCHAR(50) COMMENT '0 �Ӱ��¼, 1 ��н�ٸ���',
   OFFSETDAYS           NUMERIC(8,0) COMMENT '����ʱ��',
   BEGINTIME            DATETIME COMMENT '��ʼʱ��',
   ENDTIME              DATETIME COMMENT '����ʱ��',
   ADJUSTLEAVEDAYS      NUMERIC(8,0) COMMENT '��������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   PRIMARY KEY (ADJUSTLEAVEID)
);

ALTER TABLE T_HR_ADJUSTLEAVE COMMENT '��¼Ա����ٵ��ݵ����
���ݿɴӼӰ��е���
Ҳ�ɴӵ��ݸ����п۳�';

/*==============================================================*/
/* Table: T_HR_AREAALLOWANCE                                    */
/*==============================================================*/
CREATE TABLE T_HR_AREAALLOWANCE
(
   AREAALLOWANCEID      VARCHAR(50) NOT NULL COMMENT '��������ID',
   AREADIFFERENCEID     VARCHAR(50) COMMENT '��������ID',
   POSTLEVEL            VARCHAR(50) COMMENT '��λ�ȼ�',
   ALLOWANCE            NUMERIC(8,0) COMMENT '����',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (AREAALLOWANCEID)
);

ALTER TABLE T_HR_AREAALLOWANCE COMMENT '�������첹��';

/*==============================================================*/
/* Table: T_HR_AREACITY                                         */
/*==============================================================*/
CREATE TABLE T_HR_AREACITY
(
   AREACITYID           VARCHAR(50) NOT NULL COMMENT '�����������ID',
   AREADIFFERENCEID     VARCHAR(50) COMMENT '��������ID',
   CITY                 VARCHAR(10) COMMENT '���ڵس��У�ϵͳ�ֵ��ж���',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (AREACITYID)
);

ALTER TABLE T_HR_AREACITY COMMENT '�����������';

/*==============================================================*/
/* Table: T_HR_AREADIFFERENCE                                   */
/*==============================================================*/
CREATE TABLE T_HR_AREADIFFERENCE
(
   AREADIFFERENCEID     VARCHAR(50) NOT NULL COMMENT '��������ID',
   AREACATEGORY         VARCHAR(50) COMMENT '����������',
   AREAINDEX            NUMERIC(8,0) COMMENT '�����������',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   PRIMARY KEY (AREADIFFERENCEID)
);

ALTER TABLE T_HR_AREADIFFERENCE COMMENT '������������';

/*==============================================================*/
/* Table: T_HR_ASSESSMENTFORMDETAIL                             */
/*==============================================================*/
CREATE TABLE T_HR_ASSESSMENTFORMDETAIL
(
   ASSESSMENTFORMDETAILID VARCHAR(50) NOT NULL COMMENT '������ϸ��ID',
   ASSESSMENTFORMMASTERID VARCHAR(50) COMMENT '��������ID',
   CHECKPOINT           VARCHAR(50) COMMENT '������Ŀ��',
   CHECKPOINTSETID      VARCHAR(50) COMMENT '������Ŀ��ID',
   FIRSTNIBSGRADE       VARCHAR(50) COMMENT '��˾����1�ȼ�',
   SECONDNIBSGRADE      VARCHAR(50) COMMENT '��˾����2�ȼ�',
   FIRSTSCORE           NUMERIC(8,0) COMMENT '��˾����1����',
   SECONDSCORE          NUMERIC(8,0) COMMENT '��˾����2����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (ASSESSMENTFORMDETAILID)
);

ALTER TABLE T_HR_ASSESSMENTFORMDETAIL COMMENT '���¿�����ϸ��';

/*==============================================================*/
/* Table: T_HR_ASSESSMENTFORMMASTER                             */
/*==============================================================*/
CREATE TABLE T_HR_ASSESSMENTFORMMASTER
(
   ASSESSMENTFORMMASTERID VARCHAR(50) NOT NULL COMMENT '��������ID',
   BEREGULARID          VARCHAR(50) COMMENT 'ת����ID',
   POSTCHANGEID         VARCHAR(50) COMMENT '�춯��¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEELEVEL        VARCHAR(50) COMMENT '0  ��ͨԱ��
            1 �ɲ�',
   CHECKTYPE            VARCHAR(50) COMMENT '0 ת��
            1 �춯',
   CHECKPERSON          VARCHAR(50) COMMENT '������',
   CHECKSTARTDATE       VARCHAR(50) COMMENT '���˿�ʼ����',
   CHECKENDDATE         VARCHAR(50) COMMENT '���˽�������',
   CHECKREASON          VARCHAR(50) COMMENT '����ԭ��',
   FIRSTNIBSGRADESUM    NUMERIC(8,0) COMMENT '��˾����1�ϼ�',
   SECONDNIBSGRADESUM   NUMERIC(8,0) COMMENT '��˾����2�ϼ�',
   AWARDSSCORE          NUMERIC(8,0) COMMENT '�����ӷ�',
   PUNISHMENTSCORE      NUMERIC(8,0) COMMENT '��������',
   TOTALSCORE           NUMERIC(8,0) COMMENT '���ֺϼ�',
   FIRSTCOMMENT         VARCHAR(2000) COMMENT 'һ������������',
   SECONDCOMMENT        VARCHAR(2000) COMMENT '��������������',
   HRDEPARTMENTCOMMENT  VARCHAR(2000) COMMENT '���������',
   FIRSTCOMMENTNAME     VARCHAR(2000) COMMENT 'һ������������',
   SECONDCOMMENTNAME    VARCHAR(2000) COMMENT '��������������',
   HRCOMMENTNAME        VARCHAR(2000) COMMENT '���������������',
   FIRSTCOMMENTDATE     DATETIME COMMENT 'һ����������',
   SECONDCOMMENTDATE    DATETIME COMMENT '������������',
   HRCOMMENTDATE        DATETIME COMMENT '�������������',
   ATTACHMENTPATH       VARCHAR(50) COMMENT '����·��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (ASSESSMENTFORMMASTERID)
);

ALTER TABLE T_HR_ASSESSMENTFORMMASTER COMMENT '���¿�������#';

/*==============================================================*/
/* Table: T_HR_ATTENDFREELEAVE                                  */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDFREELEAVE
(
   ATTENDFREELEAVEID    VARCHAR(50) NOT NULL COMMENT '���ڷ�����н��ID',
   ATTENDANCESOLUTIONID VARCHAR(50) COMMENT '���ڷ���ID',
   LEAVETYPESETID       VARCHAR(50) COMMENT '�������ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (ATTENDFREELEAVEID)
);

ALTER TABLE T_HR_ATTENDFREELEAVE COMMENT '���ڷ�����н��';

/*==============================================================*/
/* Table: T_HR_ATTENDMACHINESET                                 */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDMACHINESET
(
   ATTENDMACHINESETID   VARCHAR(50) NOT NULL COMMENT '���ڻ�����ID',
   COMPANYID            VARCHAR(50) COMMENT '������˾',
   AREA                 VARCHAR(2000) COMMENT '����λ��',
   ATTENDMACHINENAME    VARCHAR(50) COMMENT '���ڻ�����',
   ATTENDMACHINECODE    VARCHAR(50) COMMENT '���ڻ����',
   IPADDRESS            VARCHAR(50) COMMENT 'IP��ַ',
   COMNUMBER            VARCHAR(50) COMMENT '����˿�',
   READDATATYPE         VARCHAR(1) COMMENT '��ȡ���ݷ�ʽ:
            0,���紫��
            1,���ݿ�
            2,�ļ�',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (ATTENDMACHINESETID)
);

ALTER TABLE T_HR_ATTENDMACHINESET COMMENT '���ڻ�����';

/*==============================================================*/
/* Table: T_HR_ATTENDMONTHLYBALANCE                             */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDMONTHLYBALANCE
(
   MONTHLYBALANCEID     VARCHAR(50) NOT NULL COMMENT '�����¶Ƚ���ID',
   MONTHLYBATCHID       VARCHAR(50) COMMENT '�¶���������ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   BALANCEYEAR          NUMERIC(8,0) COMMENT '�������',
   BALANCEMONTH         NUMERIC(8,0) COMMENT '�����·�',
   BALANCEDATE          DATETIME COMMENT '��������',
   NEEDATTENDDAYS       NUMERIC(8,0) COMMENT 'Ӧ��������',
   REALATTENDDAYS       NUMERIC(8,0) COMMENT 'ʵ�ʳ�������',
   LATEDAYS             NUMERIC(8,0) COMMENT '�ٵ�����',
   LEAVEEARLYDAYS       NUMERIC(8,0) COMMENT '��������',
   ABSENTDAYS           NUMERIC(8,0) COMMENT '��������',
   AFFAIRLEAVEDAYS      NUMERIC(8,0) COMMENT '�¼�����',
   SICKLEAVEDAYS        NUMERIC(8,0) COMMENT '��������',
   OTHERLEAVEDAYS       NUMERIC(8,0) COMMENT '������������',
   OVERTIMETIMES        NUMERIC(8,0) COMMENT '�Ӱ����',
   OVERTIMESUMHOURS     NUMERIC(8,0) COMMENT '�Ӱ��ۼ�ʱ��',
   OVERTIMESUMDAYS      NUMERIC(8,0) COMMENT '�Ӱ��ۼ�����',
   LATETIMES            NUMERIC(8,0) COMMENT '�ٵ�����',
   LEAVEEARLYTIMES      NUMERIC(8,0) COMMENT '���˴���',
   FORGETCARDTIMES      NUMERIC(8,0) COMMENT '©�򿨴���',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   EVECTIONTIME         NUMERIC(8,0) COMMENT '����ʱ��',
   ANNUALLEVELDAYS      NUMERIC(8,0) COMMENT '���ݼ�����',
   LEAVEUSEDDAYS        NUMERIC(8,0) COMMENT '���ݼ�����',
   MARRYDAYS            NUMERIC(8,0) COMMENT '�������',
   MATERNITYLEAVEDAYS   NUMERIC(8,0) COMMENT '��������',
   NURSESDAYS           NUMERIC(8,0) COMMENT '����������',
   FUNERALLEAVEDAYS     NUMERIC(8,0) COMMENT 'ɥ������',
   TRIPDAYS             NUMERIC(8,0) COMMENT '·�̼�����',
   INJURYLEAVEDAYS      NUMERIC(8,0) COMMENT '���˼�����',
   WORKSERVICEMONTHS    NUMERIC(8,0) COMMENT '�����������·�������ְ��������Ϊ��λ��',
   WORKTIMEPERDAY       NUMERIC(8,0) COMMENT 'ÿ�칤��ʱ����Сʱ��',
   LATEMINUTES          NUMERIC(8,0) COMMENT '�ٵ�ʱ�������ӣ�',
   ABSENTMINUTES        NUMERIC(8,0) COMMENT '����ʱ�������ӣ�',
   PRENATALCARELEAVEDAYS NUMERIC(8,0) COMMENT '��ǰ��������',
   REALNEEDATTENDDAYS   NUMERIC(8,0) COMMENT 'Ӧ����������ʵ�ʣ�',
   OUTAPPLYTIME         NUMERIC(8,0),
   PRIMARY KEY (MONTHLYBALANCEID)
);

ALTER TABLE T_HR_ATTENDMONTHLYBALANCE COMMENT '�����¶Ƚ����';

/*==============================================================*/
/* Index: IDX_EMPDIYEARMON                                      */
/*==============================================================*/
CREATE INDEX IDX_EMPDIYEARMON ON T_HR_ATTENDMONTHLYBALANCE
(
   EMPLOYEEID,
   BALANCEMONTH,
   BALANCEYEAR
);

/*==============================================================*/
/* Table: T_HR_ATTENDMONTHLYBATCHBALANCE                        */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDMONTHLYBATCHBALANCE
(
   MONTHLYBATCHID       VARCHAR(50) NOT NULL COMMENT '�¶���������ID',
   BALANCEYEAR          NUMERIC(8,0) COMMENT '�������',
   BALANCEMONTH         NUMERIC(8,0) COMMENT '�����·�',
   BALANCEDATE          DATETIME COMMENT '��������',
   BALANCEOBJECTTYPE    VARCHAR(1) COMMENT '�����������',
   BALANCEOBJECTID      VARCHAR(50) COMMENT '�������Id',
   BALANCEOBJECTNAME    VARCHAR(500) COMMENT '���������',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (MONTHLYBATCHID)
);

ALTER TABLE T_HR_ATTENDMONTHLYBATCHBALANCE COMMENT '�����¶����������';

/*==============================================================*/
/* Table: T_HR_ATTENDMONTHLYLEAVE                               */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDMONTHLYLEAVE
(
   MONTHLYBALANCEID     VARCHAR(50) NOT NULL COMMENT '�����¶Ƚ���ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (MONTHLYBALANCEID)
);

ALTER TABLE T_HR_ATTENDMONTHLYLEAVE COMMENT '�����½������ϸ';

/*==============================================================*/
/* Table: T_HR_ATTENDYEARLYBALANCE                              */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDYEARLYBALANCE
(
   YEARLYBALANCEID      VARCHAR(50) NOT NULL COMMENT '��Ƚ���ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   BALANCEYEAR          NUMERIC(8,0) COMMENT '�������',
   BALANCEDATE          DATETIME COMMENT '��������',
   LASTANNUALLEVELUNUSEDDAYS NUMERIC(8,0) COMMENT '����δ�ݵ��������',
   ANNUALLEAVEUSEDDAYS  NUMERIC(8,0) COMMENT '�����ѳ���������',
   ANNUALLEAVESUMDAYS   NUMERIC(8,0) COMMENT '�����������',
   ANNUALLEAVEVALIDDAYS NUMERIC(8,0) COMMENT '��ǰ�����������',
   LASTLEAVEVALIDDAYS   NUMERIC(8,0) COMMENT '������õ�������',
   LEAVEUSEDDAYS        NUMERIC(8,0) COMMENT '�����ѳ����������',
   LEAVEVALIDDAYS       NUMERIC(8,0) COMMENT '��ǰ���õ�������',
   LEAVESUMDAYS         NUMERIC(8,0) COMMENT '������õ�������',
   NEEDATTENDDAYS       NUMERIC(8,0) COMMENT 'Ӧ��������',
   REALATTENDDAYS       NUMERIC(8,0) COMMENT 'ʵ�ʳ�������',
   LATEDAYS             NUMERIC(8,0) COMMENT '�ٵ�����',
   LEAVEEARLYDAYS       NUMERIC(8,0) COMMENT '��������',
   ABSENTDAYS           NUMERIC(8,0) COMMENT '��������',
   AFFAIRLEAVEDAYS      NUMERIC(8,0) COMMENT '�¼�����',
   SICKLEAVEDAYS        NUMERIC(8,0) COMMENT '��������',
   OTHERLEAVEDAYS       NUMERIC(8,0) COMMENT '������������',
   OVERTIMETIMES        NUMERIC(8,0) COMMENT '�Ӱ����',
   OVERTIMESUMHOURS     NUMERIC(8,0) COMMENT '�Ӱ��ۼ�ʱ��',
   OVERTIMESUMDAYS      NUMERIC(8,0) COMMENT '�Ӱ��ۼ�����',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   EVECTIONTIME         NUMERIC(8,0) COMMENT '����ʱ��',
   PRIMARY KEY (YEARLYBALANCEID)
);

ALTER TABLE T_HR_ATTENDYEARLYBALANCE COMMENT '������Ƚ����';

/*==============================================================*/
/* Table: T_HR_ATTENDANCEDEDUCTDETAIL                           */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDANCEDEDUCTDETAIL
(
   DEDUCTDETAILID       VARCHAR(50) NOT NULL COMMENT '�����쳣�ۿ���ϸID',
   DEDUCTMASTERID       VARCHAR(50) COMMENT '�����쳣�ۿ�����ID',
   FINETYPE             VARCHAR(50) COMMENT '1��ÿ�ο�XԪ��2������н/���� * �ٵ��ķ�����������һ�ְ�һ���㣩����Ϳ� X Ԫ��',
   PARAMETERVALUE       NUMERIC(8,0) COMMENT '��Ϳۿ�',
   FINERATIO            NUMERIC(8,0) COMMENT '�ۿ�ϵ��',
   LOWESTTIMES          NUMERIC(8,0) COMMENT '��ʹ���',
   HIGHESTTIMES         NUMERIC(8,0) COMMENT '��ߴ���',
   FINESUM              NUMERIC(8,0) COMMENT '�ۿ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (DEDUCTDETAILID)
);

ALTER TABLE T_HR_ATTENDANCEDEDUCTDETAIL COMMENT '�����쳣�ۿ���ϸ';

/*==============================================================*/
/* Table: T_HR_ATTENDANCEDEDUCTMASTER                           */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDANCEDEDUCTMASTER
(
   DEDUCTMASTERID       VARCHAR(50) NOT NULL COMMENT '�����쳣�ۿ�����ID',
   ATTENDABNORMALNAME   VARCHAR(50) COMMENT '�쳣�ۿ���',
   ATTENDABNORMALTYPE   VARCHAR(1) COMMENT '0�ٵ�,1 ����,2δˢ��,3����',
   FINETYPE             VARCHAR(50) COMMENT '1��ÿ�ο�XԪ��2������н/���� * �ٵ��ķ�����������һ�ְ�һ���㣩����Ϳ� X Ԫ��3�ֶοۿ�',
   PARAMETERVALUE       NUMERIC(8,0) COMMENT '��Ϳۿ�',
   FINERATIO            NUMERIC(8,0) COMMENT '�ۿ�ϵ��',
   ISACCUMULATING       VARCHAR(50) COMMENT '�Ƿ��ۼ�',
   FINESUM              NUMERIC(8,0) COMMENT '�ۿ��',
   ISPERFECTATTENDANCEFACTOR VARCHAR(1) COMMENT '�Ƿ��ȫ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (DEDUCTMASTERID)
);

ALTER TABLE T_HR_ATTENDANCEDEDUCTMASTER COMMENT '�����쳣�ۿ�����#';

/*==============================================================*/
/* Table: T_HR_ATTENDANCERECORD                                 */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDANCERECORD
(
   ATTENDANCERECORDID   VARCHAR(50) NOT NULL COMMENT '���ڼ�¼���',
   ATTENDANCESOLUTIONID VARCHAR(50) COMMENT '���ڷ���ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   WORKTIMESETID        VARCHAR(50) COMMENT '���ID',
   ATTENDANCEDATE       DATETIME COMMENT '����',
   FIRSTSTARTTIME       VARCHAR(50) COMMENT '��һ���ϰ࿪ʼʱ��',
   FIRSTENDTIME         VARCHAR(50) COMMENT '��һ���ϰ����ʱ��',
   FIRSTSTARTSTATE      VARCHAR(50) COMMENT '��һ���ϰ࿪ʼ״̬',
   FIRSTENDSTATE        VARCHAR(50) COMMENT '��һ���ϰ����״̬',
   SECONDSTARTTIME      VARCHAR(50) COMMENT '�ڶ����ϰ࿪ʼʱ��',
   SECONDENDTIME        VARCHAR(50) COMMENT '�ڶ����ϰ����ʱ��',
   SECONDSTARTSTATE     VARCHAR(50) COMMENT '�ڶ����ϰ࿪ʼ״̬',
   SECONDENDSTATE       VARCHAR(50) COMMENT '�ڶ����ϰ����״̬',
   THIRDSTARTTIME       VARCHAR(50) COMMENT '�������ϰ࿪ʼʱ��',
   THIRDENDTIME         VARCHAR(50) COMMENT '�������ϰ����ʱ��',
   THIRDSTARTSTATE      VARCHAR(50) COMMENT '�������ϰ࿪ʼ״̬',
   THIRDENDSTATE        VARCHAR(50) COMMENT '�������ϰ����״̬',
   FOURTHENDTIME        VARCHAR(50) COMMENT '���Ķ��ϰ����ʱ��',
   FOURTHSTARTTIME      VARCHAR(50) COMMENT '���Ķ��ϰ࿪ʼʱ��',
   FOURTHSTARTSTATE     VARCHAR(50) COMMENT '���Ķ��ϰ࿪ʼ״̬',
   FOURTHENDSTATE       VARCHAR(50) COMMENT '���Ķ��ϰ����״̬',
   ATTENDANCESTATE      VARCHAR(50) COMMENT '0,������1�쳣��2������3���4��Ϣ��5���',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   NEEDFRISTATTEND      VARCHAR(50) COMMENT '��һ���Ƿ��ϰ࿼�ڣ� 0  ��,1 ��',
   NEEDSECONDATTEND     VARCHAR(50) COMMENT '�ڶ����Ƿ��ϰ࿼�ڣ�0 ����,1 ����',
   NEEDTHIRDATTEND      VARCHAR(50) COMMENT '�������Ƿ��ϰ࿼�ڣ�0 ����,1 ����',
   NEEDFOURTHATTEND     VARCHAR(50) COMMENT '���Ķ��Ƿ��ϰ࿼�ڣ�0 ����,1 ����',
   PRIMARY KEY (ATTENDANCERECORDID)
);

ALTER TABLE T_HR_ATTENDANCERECORD COMMENT '���ڼ�¼��';

/*==============================================================*/
/* Index: IDX_T_HR_ATTENDAN                                     */
/*==============================================================*/
CREATE INDEX IDX_T_HR_ATTENDAN ON T_HR_ATTENDANCERECORD
(
   EMPLOYEEID,
   ATTENDANCEDATE,
   OWNERCOMPANYID
);

/*==============================================================*/
/* Table: T_HR_ATTENDANCESOLUTION                               */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDANCESOLUTION
(
   ATTENDANCESOLUTIONID VARCHAR(50) NOT NULL COMMENT '���ڷ���ID',
   ATTENDANCESOLUTIONNAME VARCHAR(50) COMMENT '���ڷ�������',
   OVERTIMEREWARDID     VARCHAR(50) COMMENT '�Ӱ౨��ID',
   TEMPLATEMASTERID     VARCHAR(50) COMMENT '�Ű�ģ������ID',
   ATTENDANCETYPE       VARCHAR(50) COMMENT '0 �򿨿���
            1 ����򿨿���
            2 ��¼ϵͳ
            3 �򿨼ӵ�¼ϵͳ
            ',
   WORKDAYTYPE          VARCHAR(36) COMMENT '�����������㷽ʽ��
            0:�̶���ʽ��
            1��������ʵ�ʹ����ռ�',
   WORKDAYS             NUMERIC(8,0) COMMENT '�̶���ʽ��ÿ�¹�������',
   WORKMODE             NUMERIC(8,0) COMMENT '������',
   CARDTYPE             VARCHAR(50) COMMENT '0 ָ�ƴ�
            1 �ֶ�ǩ��
            2 ���ӿ�',
   ONEDAYOVERTIMEHOURS  NUMERIC(8,0) COMMENT '�Ӱ����һ��Сʱ��',
   ALLOWLOSTCARDTIMES   NUMERIC(8,0) COMMENT 'ÿ������©�򿨴���',
   ALLOWLATEMAXMINUTE   NUMERIC(8,0) COMMENT 'ÿ������ٵ���ʱ��',
   ALLOWLATEMAXTIMES    NUMERIC(8,0) COMMENT 'ÿ������ٵ�����',
   ISCURRENTMONTH       VARCHAR(1) COMMENT '�Ƿ��º���',
   SETTLEMENTDATE       VARCHAR(50) COMMENT '���ں�����',
   ALARMDATE            VARCHAR(50) COMMENT '����֪ͨ��',
   ANNUALLEAVESET       VARCHAR(50) COMMENT '����ݼٷ�ʽ:
            0 һ�������꣬��ʱ�������ڳ�����¼٣�
            1����N�����꣬ÿ���һ�β��¼���һ�Σ�
            2�������ƣ������ڳ�����¼٣�',
   WORKTIMEPERDAY       NUMERIC(8,0) COMMENT 'ÿ�칤��ʱ��',
   ISEXPIRED            VARCHAR(1) COMMENT '0:�����ڣ�1�����ڣ�',
   ADJUSTEXPIREDVALUE   NUMERIC(8,0) COMMENT '���ݹ���ʱ��',
   OVERTIMEPAYTYPE      VARCHAR(1) COMMENT '�Ӱ౨�귽ʽ��0 ���ݷ�ʽ��1 �Ӱ๤�ʷ�ʽ��2 �ȵ����ٸ����ʷ�ʽ��3 �ޱ��귽ʽ��',
   OVERTIMEVALID        VARCHAR(1) COMMENT '�Ӱ���Ч��ʽ
            0 ���ͨ���ļӰ����룻1 ��������ʱ�����Զ��ۼƣ�2 ���ڼ����ۼƣ�',
   OVERTIMECHECK        VARCHAR(1) COMMENT '�Ӱ��Ƿ�Ҫ��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   YEARLYBALANCETYPE    VARCHAR(1) COMMENT '������㷽ʽ:0���,1�ۼƵ���һ��,2����ɹ���',
   YEARLYBALANCEDATE    VARCHAR(50) COMMENT '��ȿ��ڽ�����',
   ISAUTOIMPORTPUNCH    VARCHAR(10) COMMENT '�Ƿ��Զ�����򿨼�¼',
   YOUTHEXTEND          VARCHAR(1) COMMENT '0:���ӳ���1���ӳ���',
   YOUTHEXTENDVALUE     NUMERIC(8,0) COMMENT '�������˼�������ʱ��',
   AUTOLEFTOFFICERECEIVEPOST VARCHAR(2000) COMMENT '�Զ���ְ�����λ',
   LEFTOFFICERECEIVEPOSTNAME VARCHAR(2000) COMMENT '�Զ���ְ�����λ����',
   PRIMARY KEY (ATTENDANCESOLUTIONID)
);

ALTER TABLE T_HR_ATTENDANCESOLUTION COMMENT '���ڷ���#';

/*==============================================================*/
/* Table: T_HR_ATTENDANCESOLUTIONASIGN                          */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDANCESOLUTIONASIGN
(
   ATTENDANCESOLUTIONASIGNID VARCHAR(50) NOT NULL COMMENT 'Ա�����ڷ���ID',
   ATTENDANCESOLUTIONID VARCHAR(50) COMMENT '���ڷ���ID',
   ASSIGNEDOBJECTID     VARCHAR(2000) COMMENT '�������ID',
   ASSIGNEDOBJECTTYPE   VARCHAR(50) COMMENT '����������',
   STARTDATE            DATETIME COMMENT '��Ч�ڿ�ʼʱ��',
   ENDDATE              DATETIME COMMENT '��Ч�ڽ���ʱ��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   PRIMARY KEY (ATTENDANCESOLUTIONASIGNID)
);

ALTER TABLE T_HR_ATTENDANCESOLUTIONASIGN COMMENT '���ڷ���Ӧ��';

/*==============================================================*/
/* Table: T_HR_ATTENDANCESOLUTIONDEDUCT                         */
/*==============================================================*/
CREATE TABLE T_HR_ATTENDANCESOLUTIONDEDUCT
(
   SOLUTIONDEDUCTID     VARCHAR(50) NOT NULL COMMENT '���ڷ����쳣�ۿ�ID',
   ATTENDANCESOLUTIONID VARCHAR(50) COMMENT '���ڷ���ID',
   DEDUCTMASTERID       VARCHAR(50) COMMENT '�����쳣�ۿ�����ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (SOLUTIONDEDUCTID)
);

ALTER TABLE T_HR_ATTENDANCESOLUTIONDEDUCT COMMENT '���ڷ����쳣�ۿ�';

/*==============================================================*/
/* Table: T_HR_BALANCEPOSTDETAIL                                */
/*==============================================================*/
CREATE TABLE T_HR_BALANCEPOSTDETAIL
(
   BALANCEPOSTDETAIL    VARCHAR(50) NOT NULL COMMENT '��ϸID',
   BALANCEPOSTASIGNID   VARCHAR(50) COMMENT '�������ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEEPOSTID       VARCHAR(50) COMMENT '��λID',
   EMPLOYEEPOSTNAME     VARCHAR(50) COMMENT '��λ����',
   EMPLOYEEDEPARTMENTID VARCHAR(50) COMMENT '����ID',
   EMPLOYEEDEPARTMENTNAME VARCHAR(50) COMMENT '��������',
   EMPLOYEECOMPANYID    VARCHAR(50) COMMENT '��˾ID',
   EMPLOYEECOMPANYNAME  VARCHAR(50) COMMENT '��˾����',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������ID',
   UPDATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEDATEUSERID     VARCHAR(50) COMMENT '������ID',
   EDITSTATE            VARCHAR(1) DEFAULT '0' COMMENT '��Ч״̬',
   ATTENDANCESET        VARCHAR(1) DEFAULT '0' COMMENT '��������',
   SALARYSET            VARCHAR(1) DEFAULT '0' COMMENT 'н�ʽ�������',
   PRIMARY KEY (BALANCEPOSTDETAIL)
);

ALTER TABLE T_HR_BALANCEPOSTDETAIL COMMENT '�����λ��ϸ';

/*==============================================================*/
/* Table: T_HR_BLACKLIST                                        */
/*==============================================================*/
CREATE TABLE T_HR_BLACKLIST
(
   BLACKLISTID          VARCHAR(50) NOT NULL COMMENT '������ID',
   IDCARDNUMBER         VARCHAR(50) NOT NULL COMMENT '���֤����',
   NAME                 VARCHAR(50) NOT NULL COMMENT '����',
   REASON               VARCHAR(2000) COMMENT 'ԭ��',
   BEGINDATE            VARCHAR(50) COMMENT '��ʼʱ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   EDITSTATE            VARCHAR(50) COMMENT '�༭״̬',
   EFFECTIVETIME        NUMERIC(8,0) COMMENT '��Чʱ��',
   PRIMARY KEY (BLACKLISTID)
);

ALTER TABLE T_HR_BLACKLIST COMMENT '������(δ��Ȩ��)';

/*==============================================================*/
/* Table: T_HR_CHECKCATEGORYSET                                 */
/*==============================================================*/
CREATE TABLE T_HR_CHECKCATEGORYSET
(
   CHECKCATEGORYID      VARCHAR(50) NOT NULL,
   CHECKCATEGORYNAME    VARCHAR(500),
   DESCRIPTION          VARCHAR(2000),
   CHECKTYPE            VARCHAR(1) COMMENT '���˷�ʽ��0������ʱ�䣬1���ֹ�������������ֹ�������ô���ַ�ʽ����ѡ�����',
   SCORETYPE            VARCHAR(1) COMMENT '���ַ�ʽ����Ϊϵͳ��֣�ϵͳͨ���������̲����ʱ�����Զ���֣����ֹ���֣�������һ���踺����Ϊ������һ���踺���˴�֣�������֣����趨�ĳ������������һ�����������̲����֣����� ',
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CHECKCATEGORYID)
);

ALTER TABLE T_HR_CHECKCATEGORYSET COMMENT '�����������';

/*==============================================================*/
/* Table: T_HR_CHECKMODELDEFINE                                 */
/*==============================================================*/
CREATE TABLE T_HR_CHECKMODELDEFINE
(
   CHECKMODELID         VARCHAR(50) NOT NULL,
   ORGCHECKMODELID      VARCHAR(50),
   PERFORMANCEGOAL      VARCHAR(2000),
   WEIGHING             NUMERIC(8,0),
   POINT                NUMERIC(8,0),
   ISFLOWMODEL          VARCHAR(1),
   FLOWID               VARCHAR(50),
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CHECKMODELID)
);

ALTER TABLE T_HR_CHECKMODELDEFINE COMMENT '������Ŀ����';

/*==============================================================*/
/* Table: T_HR_CHECKPOINTLEVELSET                               */
/*==============================================================*/
CREATE TABLE T_HR_CHECKPOINTLEVELSET
(
   POINTLEVEID          VARCHAR(50) NOT NULL COMMENT '��Ŀ��ϸ�ȼ�ID',
   CHECKPOINTSETID      VARCHAR(50) COMMENT '������Ŀ��ID',
   POINTLEVEL           VARCHAR(50) COMMENT '��Ŀϸ�ֵ�ȼ���',
   POINTSCORE           NUMERIC(8,0) COMMENT '�ȼ�����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (POINTLEVEID)
);

ALTER TABLE T_HR_CHECKPOINTLEVELSET COMMENT '������Ŀ�ȼ�';

/*==============================================================*/
/* Table: T_HR_CHECKPOINTSET                                    */
/*==============================================================*/
CREATE TABLE T_HR_CHECKPOINTSET
(
   CHECKPOINTSETID      VARCHAR(50) NOT NULL COMMENT '������Ŀ��ID',
   CHECKPROJECTID       VARCHAR(50) COMMENT '������ĿID',
   CHECKEMPLOYEETYPE    VARCHAR(1) COMMENT '����Ա������',
   CHECKPOINT           VARCHAR(50) COMMENT '������Ŀ��',
   CHECKPOINTDES        VARCHAR(50) COMMENT '������Ŀ������',
   CHECKPOINTSCORE      NUMERIC(8,0) COMMENT '������Ŀ��Ȩ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (CHECKPOINTSETID)
);

ALTER TABLE T_HR_CHECKPOINTSET COMMENT '���¿�����Ŀ������';

/*==============================================================*/
/* Table: T_HR_CHECKPROJECTSET                                  */
/*==============================================================*/
CREATE TABLE T_HR_CHECKPROJECTSET
(
   CHECKPROJECTID       VARCHAR(50) NOT NULL COMMENT '������ĿID',
   CHECKPROJECT         VARCHAR(50) COMMENT '������Ŀ��',
   CHECKPROJECTSCORE    NUMERIC(8,0) COMMENT '��Ŀ����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (CHECKPROJECTID)
);

ALTER TABLE T_HR_CHECKPROJECTSET COMMENT '���¿�����Ŀ����';

/*==============================================================*/
/* Table: T_HR_COMPANY                                          */
/*==============================================================*/
CREATE TABLE T_HR_COMPANY
(
   COMPANYID            VARCHAR(50) NOT NULL COMMENT '��˾ID',
   COMPANYTYPE          VARCHAR(50) COMMENT '��ҵ����:1�ز���ҵ,2������ҵ,3������ҵ,4�����ҵ,������ҵ',
   COMPANRYCODE         VARCHAR(50) COMMENT '��˾���',
   ENAME                VARCHAR(100) COMMENT '��˾Ӣ������',
   CNAME                VARCHAR(100) COMMENT '��˾��������',
   COMPANYCATEGORY      VARCHAR(50) COMMENT '��˾����',
   CITY                 VARCHAR(50) COMMENT '���ڵس��У�ϵͳ�ֵ��ж���',
   COUNTYTYPE           VARCHAR(50) COMMENT '0 �й���½
            1 �й����
            ϵͳ�ֵ��ж���',
   COMPANYLEVEL         VARCHAR(50) COMMENT '��˾����',
   FATHERCOMPANYID      VARCHAR(50) COMMENT '����˾ID',
   ADDRESS              VARCHAR(100) COMMENT '��˾��ַ',
   LEGALPERSON          VARCHAR(100) COMMENT '���˴���',
   LINKMAN              VARCHAR(50) COMMENT '��ϵ������',
   TELNUMBER            VARCHAR(50) COMMENT '��ϵ�绰',
   LEGALPERSONID        VARCHAR(50) COMMENT '�������֤��',
   BUSSINESSLICENCENO   VARCHAR(100) COMMENT 'Ӫҵִ�պ�',
   BUSSINESSAREA        VARCHAR(1000) COMMENT '��Ӫ��Χ',
   ACCOUNTCODE          VARCHAR(100) COMMENT '�����˺�',
   BANKID               VARCHAR(100) COMMENT '�������д���',
   EMAIL                VARCHAR(50) COMMENT '�����ʼ�',
   ZIPCODE              VARCHAR(50) COMMENT '��������',
   FAXNUMBER            VARCHAR(50) COMMENT '����',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   FATHERID             VARCHAR(50) COMMENT '�ϼ�����ID',
   FATHERTYPE           VARCHAR(50) COMMENT '�ϼ���������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   SORTINDEX            NUMERIC(8,0) COMMENT '�����',
   BRIEFNAME            VARCHAR(100) COMMENT '���',
   PRIMARY KEY (COMPANYID)
);

ALTER TABLE T_HR_COMPANY COMMENT '��˾#';

/*==============================================================*/
/* Table: T_HR_COMPANYHISTORY                                   */
/*==============================================================*/
CREATE TABLE T_HR_COMPANYHISTORY
(
   RECORDSID            VARCHAR(50) NOT NULL COMMENT '��¼ID',
   COMPANYID            VARCHAR(50) NOT NULL COMMENT '��˾ID',
   COMPANRYCODE         VARCHAR(50) COMMENT '��˾���',
   ENAME                VARCHAR(100) COMMENT '��˾Ӣ������',
   CNAME                VARCHAR(100) COMMENT '��˾��������',
   COMPANYCATEGORY      VARCHAR(50) COMMENT '��˾����',
   COMPANYLEVEL         VARCHAR(50) COMMENT '��˾����',
   FATHERCOMPANYID      VARCHAR(50) COMMENT '����˾ID',
   LEGALPERSON          VARCHAR(100) COMMENT '���˴���',
   LINKMAN              VARCHAR(50) COMMENT '��ϵ������',
   TELNUMBER            VARCHAR(50) COMMENT '��ϵ�绰',
   ADDRESS              VARCHAR(100) COMMENT '��˾��ַ',
   LEGALPERSONID        VARCHAR(50) COMMENT '�������֤��',
   BUSSINESSLICENCENO   VARCHAR(100) COMMENT 'Ӫҵִ�պ�',
   BUSSINESSAREA        VARCHAR(1000) COMMENT '��Ӫ��Χ',
   ACCOUNTCODE          VARCHAR(100) COMMENT '�����˺�',
   BANKID               VARCHAR(100) COMMENT '�������д���',
   EMAIL                VARCHAR(50) COMMENT '�����ʼ�',
   ZIPCODE              VARCHAR(50) COMMENT '��������',
   FAXNUMBER            VARCHAR(50) COMMENT '����',
   REUSEDATE            DATETIME COMMENT '��Чʱ��',
   CANCELDATE           DATETIME COMMENT '����ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CITY                 VARCHAR(50) COMMENT '���ڵس��У�ϵͳ�ֵ��ж���',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   FATHERID             VARCHAR(50) COMMENT '�ϼ�����ID',
   FATHERTYPE           VARCHAR(50) COMMENT '�ϼ���������',
   PRIMARY KEY (RECORDSID)
);

ALTER TABLE T_HR_COMPANYHISTORY COMMENT '��˾��ʷ��#';

/*==============================================================*/
/* Table: T_HR_CUSTOMGUERDON                                    */
/*==============================================================*/
CREATE TABLE T_HR_CUSTOMGUERDON
(
   CUSTOMGUERDONID      VARCHAR(50) NOT NULL COMMENT '�Զ���н��ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   CUSTOMGUERDONSETID   VARCHAR(50) COMMENT '�Զ���н������ID',
   CALCULATEFORMULA     VARCHAR(2000) COMMENT '���㹫ʽ',
   SUM                  NUMERIC(8,0) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (CUSTOMGUERDONID)
);

ALTER TABLE T_HR_CUSTOMGUERDON COMMENT '�Զ���н��';

/*==============================================================*/
/* Table: T_HR_CUSTOMGUERDONARCHIVE                             */
/*==============================================================*/
CREATE TABLE T_HR_CUSTOMGUERDONARCHIVE
(
   CUSTOMGUERDONARCHIVEID VARCHAR(50) NOT NULL COMMENT '�Զ���н�ʵ���ID',
   SALARYARCHIVEID      VARCHAR(50) COMMENT 'н�ʵ���ID',
   CUSTOMERGUERDONID    VARCHAR(50) COMMENT '�Զ���н������ID',
   SUM                  NUMERIC(8,0) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   ASSIGNERID           VARCHAR(50) COMMENT '�����²���Ա��ID',
   ASSIGNERPOSTID       VARCHAR(50) COMMENT '�����²��˸�λID',
   ASSIGNERDEPARTMENTID VARCHAR(50) COMMENT '�����²��˲���ID',
   ASSIGNERRCOMPANYID   VARCHAR(50) COMMENT '�����²��˹�˾ID',
   ASSIGNERNAME         VARCHAR(50) COMMENT '�����²���Ա������',
   ASSIGNERPOSTNAME     VARCHAR(100) COMMENT '�����²��˸�λ����',
   ASSIGNERDEPARTMENTNAME VARCHAR(100) COMMENT '�����²��˲�������',
   ASSIGNERRCOMPANYNAME VARCHAR(100) COMMENT '�����²��˹�˾����',
   PRIMARY KEY (CUSTOMGUERDONARCHIVEID)
);

ALTER TABLE T_HR_CUSTOMGUERDONARCHIVE COMMENT '�Զ���н�ʵ���';

/*==============================================================*/
/* Table: T_HR_CUSTOMGUERDONARCHIVEHIS                          */
/*==============================================================*/
CREATE TABLE T_HR_CUSTOMGUERDONARCHIVEHIS
(
   CUSTOMGUERDONARCHIVEID VARCHAR(50) NOT NULL COMMENT '�Զ���н����ʷID',
   SALARYARCHIVEID      VARCHAR(50) COMMENT 'н�ʵ���ID',
   CUSTOMERGUERDONID    VARCHAR(50) COMMENT '�Զ���н������ID',
   SUM                  NUMERIC(8,0) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (CUSTOMGUERDONARCHIVEID)
);

ALTER TABLE T_HR_CUSTOMGUERDONARCHIVEHIS COMMENT '�Զ���н�ʵ�����ʷ';

/*==============================================================*/
/* Table: T_HR_CUSTOMGUERDONRECORD                              */
/*==============================================================*/
CREATE TABLE T_HR_CUSTOMGUERDONRECORD
(
   CUSTOMGUERDONRECORDID VARCHAR(50) NOT NULL COMMENT '�Զ���н�ʷ���ID',
   EMPLOYEEID           VARCHAR(50) NOT NULL COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   SALARYMONTH          VARCHAR(50) COMMENT '�����·�',
   SALARYYEAR           VARCHAR(50) COMMENT '�������',
   GENERATETYPE         VARCHAR(50) COMMENT '0�Զ����ɵ�
            1�ֶ���ӵ�',
   CUSTOMERGUERDONID    VARCHAR(50) COMMENT '�Զ���н����ID',
   GUERDONNAME          VARCHAR(100) COMMENT '�Զ���н��������',
   SALARYSUM            NUMERIC(8,0) COMMENT 'н�ʽ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   PRIMARY KEY (CUSTOMGUERDONRECORDID)
);

ALTER TABLE T_HR_CUSTOMGUERDONRECORD COMMENT '�Զ���н�ʼ�¼';

/*==============================================================*/
/* Table: T_HR_CUSTOMGUERDONSET                                 */
/*==============================================================*/
CREATE TABLE T_HR_CUSTOMGUERDONSET
(
   CUSTOMGUERDONSETID   VARCHAR(50) NOT NULL COMMENT '�Զ���н������ID',
   GUERDONNAME          VARCHAR(50) COMMENT '�Զ���н��������',
   GUERDONCATEGORY      VARCHAR(50) COMMENT 'ָ����Ŀ�����ԣ��ӻ����',
   CALCULATORTYPE       VARCHAR(50) COMMENT '1����ϵͳ�ж������Ŀ֮��ļ��㹫ʽ��
            2��н�ʵ��������룻
            3���ֹ�¼�룻',
   GUERDONSUM           NUMERIC(8,0) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   PRIMARY KEY (CUSTOMGUERDONSETID)
);

ALTER TABLE T_HR_CUSTOMGUERDONSET COMMENT '�Զ���н������';

/*==============================================================*/
/* Table: T_HR_DEPARTMENT                                       */
/*==============================================================*/
CREATE TABLE T_HR_DEPARTMENT
(
   DEPARTMENTID         VARCHAR(50) NOT NULL COMMENT '����ID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   DEPARTMENTDICTIONARYID VARCHAR(50) COMMENT '�����ֵ�ID',
   DEPARTMENTFUNCTION   VARCHAR(2000) COMMENT '����ְ��',
   CHECKSTATE           VARCHAR(1) COMMENT '0δ�ύ 1����� 2����� 3��˲�ͨ��',
   EDITSTATE            VARCHAR(1) COMMENT '0δ��Ч 1��Ч 2������ 3�ѳ���',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   FATHERID             VARCHAR(50) COMMENT '�ϼ�����ID',
   FATHERTYPE           VARCHAR(50) COMMENT '�ϼ���������',
   DEPARTMENTBOSSHEAD   VARCHAR(50) COMMENT '���Ÿ�����(Ա��ID)',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   SORTINDEX            NUMERIC(8,0) COMMENT '�����',
   ISBACKGROUND         NUMERIC(8,0) COMMENT '�Ƿ�ǰ��̨��0��̨���ţ�1ǰ̨����',
   CENTERHEAD           VARCHAR(100),
   DETPMANAGER          VARCHAR(100),
   PRIMARY KEY (DEPARTMENTID)
);

ALTER TABLE T_HR_DEPARTMENT COMMENT '����#';

/*==============================================================*/
/* Table: T_HR_DEPARTMENTDICTIONARY                             */
/*==============================================================*/
CREATE TABLE T_HR_DEPARTMENTDICTIONARY
(
   DEPARTMENTDICTIONARYID VARCHAR(50) NOT NULL COMMENT '�����ֵ�ID',
   DEPARTMENTTYPE       VARCHAR(10) COMMENT '�������:0ͨ�ò���,1�ز���ҵ����,2������ҵ����,3������ҵ����,4�����ҵ����,������ҵ����',
   DEPARTMENTCODE       VARCHAR(50) COMMENT '���ű��',
   DEPARTMENTNAME       VARCHAR(50) COMMENT '��������',
   DEPARTMENTFUNCTION   VARCHAR(2000) COMMENT '����ְ��',
   DEPARTMENTLEVEL      VARCHAR(50) COMMENT '���ż���',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   EDITSTATE            VARCHAR(50) COMMENT '�༭״̬',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   PRIMARY KEY (DEPARTMENTDICTIONARYID)
);

ALTER TABLE T_HR_DEPARTMENTDICTIONARY COMMENT '�����ֵ�';

/*==============================================================*/
/* Table: T_HR_DEPARTMENTHISTORY                                */
/*==============================================================*/
CREATE TABLE T_HR_DEPARTMENTHISTORY
(
   RECORDSID            VARCHAR(50) NOT NULL COMMENT '��¼ID',
   DEPARTMENTDICTIONARYID VARCHAR(50) COMMENT '�����ֵ�ID',
   DEPARTMENTID         VARCHAR(50) COMMENT '����ID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   DEPARTMENTFUNCTION   VARCHAR(2000) COMMENT '����ְ��',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   CANCELDATE           DATETIME COMMENT '����ʱ��',
   REUSEDATE            DATETIME COMMENT '��Чʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   FATHERTYPE           VARCHAR(1) COMMENT '�ϼ���������',
   FATHERID             VARCHAR(50) COMMENT '�ϼ�����ID',
   DEPARTMENTBOSSHEAD   VARCHAR(50) COMMENT '���Ÿ����˵�Ա��ID',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   PRIMARY KEY (RECORDSID)
);

ALTER TABLE T_HR_DEPARTMENTHISTORY COMMENT '������ʷ��¼#';

/*==============================================================*/
/* Table: T_HR_EMPLOYEE                                         */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEE
(
   EMPLOYEEID           VARCHAR(50) NOT NULL COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEECNAME        VARCHAR(50) COMMENT 'Ա��������',
   EMPLOYEEENAME        VARCHAR(50) COMMENT 'Ա��Ӣ����',
   EMPLOYEELEVEL        VARCHAR(50) COMMENT 'Ա���ȼ�',
   SEX                  VARCHAR(1) COMMENT 'Ա���Ա�0 Ů��1 ��',
   PROFESSIONALTITLE    VARCHAR(50) COMMENT 'ְ��',
   IDTYPE               VARCHAR(50) COMMENT '֤������',
   IDNUMBER             VARCHAR(50) COMMENT '֤������',
   NATION               VARCHAR(50) COMMENT '����',
   HEIGHT               VARCHAR(50) COMMENT '���',
   BANKID               VARCHAR(50) COMMENT '��������',
   BANKCARDNUMBER       VARCHAR(50) COMMENT '�����ʺ�',
   RESUMEID             VARCHAR(50) COMMENT '����id',
   PROVINCE             VARCHAR(100) COMMENT '����',
   BLOODTYPE            VARCHAR(50) COMMENT 'Ѫ��',
   MARRIAGE             VARCHAR(50) COMMENT '����״��',
   HASCHILDREN          VARCHAR(50) COMMENT '������Ů',
   POLITICS             VARCHAR(100) COMMENT '������ò',
   REGRESIDENCE         VARCHAR(200) COMMENT '�������ڵ�',
   REGRESIDENCETYPE     VARCHAR(50) COMMENT '�������ͣ�ʡ����Ͻ��',
   RESIDENCETYPE        VARCHAR(50) COMMENT '�������ͣ�
            0 ��ũҵ��ͥ����
            1 ��ũҵ���廧��
            2 ��ũҵ�չһ���
            3 ũҵ����',
   EMAIL                VARCHAR(50) COMMENT '�����ʼ�',
   MOBILE               VARCHAR(50) COMMENT '�ֻ�����',
   SECONDLANGUAGE       VARCHAR(50) COMMENT '����',
   SECONDLANGUAGEDEGREE VARCHAR(50) COMMENT '���������̶�',
   OFFICEPHONE          VARCHAR(50) COMMENT '�칫�绰',
   CURRENTADDRESS       VARCHAR(100) COMMENT 'Ŀǰ��ס��',
   URGENCYPERSON        VARCHAR(50) COMMENT '������ϵ��',
   URGENCYCONTACT       VARCHAR(50) COMMENT '������ϵ��ʽ',
   FAMILYADDRESS        VARCHAR(100) COMMENT '��ͥ��ϸ��ַ',
   FAMILYZIPCODE        VARCHAR(100) COMMENT '��ͥ��������',
   FAMILYPHONE          VARCHAR(50) COMMENT '��ͥ�绰',
   FINGERPRINTID        VARCHAR(50) COMMENT 'ָ�Ʊ��',
   PHOTO                LONGBLOB COMMENT '��Ƭ',
   TOPEDUCATION         VARCHAR(100) COMMENT '���ѧ��',
   BIRTHDAY             DATETIME COMMENT '��������',
   EMPLOYEESTATE        VARCHAR(50) COMMENT 'Ա��״̬��0���� 1��ְ 2����ְ 3��ְ��',
   WORKINGAGE           NUMERIC(8,0) COMMENT '��Ṥ��',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   EMPLOYEETYPE         VARCHAR(1) COMMENT 'Ա������',
   OTHERCOMMUNICATE     VARCHAR(500) COMMENT '������ϵ��ʽ:RTX,QQ',
   INTERESTCONTENT      VARCHAR(500) COMMENT '����/�س�',
   SOCIALSERVICEYEAR    VARCHAR(50) COMMENT '�籣������ʼʱ��',
   FATHEREMPLOYEEID     VARCHAR(50),
   RECRUITMENTSOURCE    VARCHAR(100),
   JOBCATEGORY          VARCHAR(100),
   CADREINFORMATION     VARCHAR(100),
   SILING               VARCHAR(100),
   PLATFORM             VARCHAR(2000),
   JOINDATE             DATETIME,
   PRIMARY KEY (EMPLOYEEID)
);

ALTER TABLE T_HR_EMPLOYEE COMMENT 'Ա��������Ϣ#';

/*==============================================================*/
/* Table: T_HR_EMPLOYEECHANGEHISTORY                            */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEECHANGEHISTORY
(
   RECORDID             VARCHAR(50) NOT NULL COMMENT '��¼id',
   EMPLOYEEID           VARCHAR(50) NOT NULL COMMENT 'Ա��ID',
   EMPOLYEENAME         VARCHAR(50) COMMENT 'Ա������',
   FINGERPRINTID        VARCHAR(50) COMMENT 'ָ�Ʊ��',
   FORMTYPE             VARCHAR(50) COMMENT '0.��ְ
            1.�춯
            2.��ְ
            3.н�ʼ�����
            4.ǩ����ͬ',
   FORMID               VARCHAR(50) NOT NULL COMMENT '��¼ԭʼ����id',
   ISMASTERPOSTCHANGE   VARCHAR(50) COMMENT '0 ����λ
            1 ������λ',
   CHANGETYPE           VARCHAR(50) COMMENT '���� �춯���ͼ���ְ���ͣ�',
   CHANGETIME           DATETIME COMMENT '�춯ʱ��',
   CHANGEREASON         VARCHAR(2000) COMMENT '�춯ԭ��',
   OLDPOSTID            VARCHAR(50) COMMENT '�춯ǰ��λid',
   OLDPOSTNAME          VARCHAR(100) COMMENT '�춯ǰ��λ����',
   OLDPOSTLEVEL         VARCHAR(50) COMMENT '�춯ǰ��λ����',
   OLDSALARYLEVEL       VARCHAR(50) COMMENT '�춯ǰн�ʼ���',
   OLDDEPARTMENTID      VARCHAR(50) COMMENT '�춯ǰ����id',
   OLDDEPARTMENTNAME    VARCHAR(100) COMMENT '�춯ǰ��������',
   OLDCOMPANYID         VARCHAR(50) COMMENT '�춯ǰ��˾id',
   OLDCOMPANYNAME       VARCHAR(100) COMMENT '�춯ǰ��˾����',
   OLDSALARYSUM         VARCHAR(50) COMMENT '�춯ǰн�ʶ��',
   NEXTPOSTID           VARCHAR(50) COMMENT '�춯���λid',
   NEXTPOSTNAME         VARCHAR(100) COMMENT '�춯���λ����',
   NEXTPOSTLEVEL        VARCHAR(50) COMMENT '�춯���λ����',
   NEXTSALARYLEVEL      VARCHAR(50) COMMENT '�춯��н�ʼ���',
   NEXTDEPARTMENTID     VARCHAR(50) COMMENT '�춯����id',
   NEXTDEPARTMENTNAME   VARCHAR(100) COMMENT '�춯��������',
   NEXTCOMPANYID        VARCHAR(50) COMMENT '�춯��˾id',
   NEXTCOMPANYNAME      VARCHAR(100) COMMENT '�춯��˾����',
   REMART               VARCHAR(2000) COMMENT '��ע',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   PRIMARY KEY (RECORDID)
);

ALTER TABLE T_HR_EMPLOYEECHANGEHISTORY COMMENT 'Ա���춯��ʷ';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEOUTAPPLIECRECORD                         */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEOUTAPPLIECRECORD
(
   OVERTIMERECORDID     VARCHAR(50) NOT NULL COMMENT '��������¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   OVERTIMECATE         VARCHAR(50) COMMENT '�Ӱ���Ч��ʽ
            0 ���ͨ���ļӰ����룻1 ��������ʱ�����Զ��ۼƣ�2 ���ڼ����ۼƣ�',
   STARTDATE            DATETIME COMMENT '�����ʼ����',
   ENDDATE              DATETIME COMMENT '�����������',
   OVERTIMEHOURS        VARCHAR(50) COMMENT '���ʱ��',
   BEGINCARDTIME        VARCHAR(50) COMMENT '����뿪ˢ��ʱ��',
   BEGINCARDTYPE        VARCHAR(1) COMMENT '0,����ˢ��,1 ǩ��',
   ENDCARDTIME          VARCHAR(50) COMMENT '�������ˢ��ʱ��',
   ENDCARDTYPE          VARCHAR(1) COMMENT '0,����ˢ��,1 ǩ��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (OVERTIMERECORDID)
);

ALTER TABLE T_HR_EMPLOYEEOUTAPPLIECRECORD COMMENT 'Ա����������¼';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEPOST                                     */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEPOST
(
   EMPLOYEEPOSTID       VARCHAR(50) NOT NULL COMMENT 'Ա����λid',
   ISAGENCY             VARCHAR(1) COMMENT '�Ƿ����:0�Ǵ���,1�����λ',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   POSTID               VARCHAR(50) COMMENT '��λID',
   SALARYLEVEL          NUMERIC(8,0) COMMENT 'н�ʵȼ�',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬:0δ��Ч��1��Ч��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   POSTLEVEL            NUMERIC(8,0) COMMENT '��λ�ȼ�',
   REPORTEMP            VARCHAR(2000) COMMENT '�����ƻ��㱨�ϼ�',
   REPORTEMPNAME        VARCHAR(2000) COMMENT '�����ƻ��㱨�ϼ�����',
   PRIMARY KEY (EMPLOYEEPOSTID)
);

ALTER TABLE T_HR_EMPLOYEEPOST COMMENT 'Ա����λ';

/*==============================================================*/
/* Index: IDX_HRPOSTID                                          */
/*==============================================================*/
CREATE INDEX IDX_HRPOSTID ON T_HR_EMPLOYEEPOST
(
   
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEEPOSTHISTORY                              */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEPOSTHISTORY
(
   RECORDSID            VARCHAR(50) NOT NULL COMMENT '��¼ID',
   EMPLOYEEPOSTID       VARCHAR(50) COMMENT 'Ա����λid',
   POSTID               VARCHAR(50) COMMENT '��λID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   SALARYLEVEL          NUMERIC(8,0) COMMENT 'н�ʵȼ�',
   REASON               VARCHAR(2000) COMMENT 'ԭ��',
   PRIMARY KEY (RECORDSID)
);

ALTER TABLE T_HR_EMPLOYEEPOSTHISTORY COMMENT 'Ա����λ��ʷ#';

/*==============================================================*/
/* Table: T_HR_EMPLOYEESALARYPOSTASIGN                          */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEESALARYPOSTASIGN
(
   EMPLOYEESALARYPOSTASIGNID VARCHAR(50) NOT NULL,
   BALANCEPOSTID        VARCHAR(50) COMMENT '�����λID',
   BALANCEPOSTNAME      VARCHAR(200) COMMENT '�����λID����',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   CREATEUSERID         VARCHAR(50) COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���ID',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   EMPLOYEECOUNT        NUMERIC(8,0) COMMENT 'Ա������',
   NOTESCONTENT         VARCHAR(2000) COMMENT '˵��',
   PRIMARY KEY (EMPLOYEESALARYPOSTASIGNID)
);

ALTER TABLE T_HR_EMPLOYEESALARYPOSTASIGN COMMENT 'T_HR_EMPLOYEESALARYPOSTASIGN';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEVACATION                                 */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEVACATION
(
   EMPLOYEEID           VARCHAR(50) NOT NULL,
   EMPLOYEECODE         VARCHAR(50) NOT NULL,
   EMPLOYEENAME         VARCHAR(50) NOT NULL,
   YEAR_PERIOD          VARCHAR(10) NOT NULL COMMENT '���',
   ACCOMPANY_CARE_LEAVE NUMERIC(8,2) DEFAULT 0 COMMENT '�㻤��',
   AFFAIR_LEAVE_HOURS   NUMERIC(8,2) DEFAULT 0 COMMENT '�¼�',
   ANNUAL_HOURS         NUMERIC(8,2) DEFAULT 0 COMMENT '���Сʱ��',
   ANNUALDAY            NUMERIC(8,2) DEFAULT 0 COMMENT '�������',
   ANNUALDAY_EFFECT_DAY NUMERIC(8,2) DEFAULT 0 COMMENT '�����Ч����',
   ANNUALDAY_USED       NUMERIC(8,2) DEFAULT 0 COMMENT '�����������',
   ANNUALHOURS_USED     NUMERIC(8,2) DEFAULT 0 COMMENT '�������Сʱ��',
   BREAST_FEEDING_LEAVE NUMERIC(8,2) DEFAULT 0 COMMENT '�����',
   FUNERAL_LEAVE        NUMERIC(8,2) DEFAULT 0 COMMENT 'ɥ��',
   INJURY_LEAVE         NUMERIC(8,2) DEFAULT 0 COMMENT '���˼�',
   MARRIAGE_LEAVE       NUMERIC(8,2) DEFAULT 0 COMMENT '���',
   MATERNITY_LEAVE      NUMERIC(8,2) DEFAULT 0 COMMENT '����',
   OT_LEAVE_HOURS       NUMERIC(8,2) DEFAULT 0 COMMENT '����Сʱ��',
   OT_TOTAL_HOURS       NUMERIC(8,2) DEFAULT 0 COMMENT '�Ӱ�Сʱ��',
   PRENATAL_EXAM_LEAVE  NUMERIC(8,2) DEFAULT 0 COMMENT '�����',
   ROADING_LEAVE        NUMERIC(8,2) DEFAULT 0 COMMENT '·�̼�',
   SICK_HOURS           NUMERIC(8,2) DEFAULT 0 COMMENT '����ÿ��Сʱ��',
   SICK_LEAVE_HOURS     NUMERIC(8,2) DEFAULT 0 COMMENT '��������Сʱ��',
   WOMEN_DAY            NUMERIC(8,2) DEFAULT 0 COMMENT '���˸�Ů��',
   YOUTH_DAY            NUMERIC(8,2) DEFAULT 0 COMMENT '���������',
   CREATE_USERID        VARCHAR(50) NOT NULL,
   CREATE_DATE          DATETIME ,
   CREATE_COMPANYID     VARCHAR(50) NOT NULL,
   CREATE_DEPARTMENTID  VARCHAR(50) NOT NULL,
   CREATE_POSTID        VARCHAR(50) NOT NULL,
   OWNER_COMPANYID      VARCHAR(50) NOT NULL,
   OWNER_DEPARTMENTID   VARCHAR(50) NOT NULL,
   OWNER_POSTID         VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   UPDATE_USERID        VARCHAR(50) NOT NULL,
   UPDATE_DATE          DATETIME 
);

ALTER TABLE T_HR_EMPLOYEEVACATION COMMENT 'Ա����н�����б�';

/*==============================================================*/
/* Table: T_HR_EMPLOYEE_LIUHH                                   */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEE_LIUHH
(
   EMPLOYEEID           VARCHAR(50) NOT NULL,
   EMPLOYEECODE         VARCHAR(50),
   EMPLOYEECNAME        VARCHAR(50),
   EMPLOYEEENAME        VARCHAR(50),
   EMPLOYEELEVEL        VARCHAR(50),
   SEX                  VARCHAR(1),
   PROFESSIONALTITLE    VARCHAR(50),
   IDTYPE               VARCHAR(50),
   IDNUMBER             VARCHAR(50),
   NATION               VARCHAR(50),
   HEIGHT               VARCHAR(50),
   BANKID               VARCHAR(50),
   BANKCARDNUMBER       VARCHAR(50),
   RESUMEID             VARCHAR(50),
   PROVINCE             VARCHAR(100),
   BLOODTYPE            VARCHAR(50),
   MARRIAGE             VARCHAR(50),
   HASCHILDREN          VARCHAR(50),
   POLITICS             VARCHAR(100),
   REGRESIDENCE         VARCHAR(200),
   REGRESIDENCETYPE     VARCHAR(50),
   RESIDENCETYPE        VARCHAR(50),
   EMAIL                VARCHAR(50),
   MOBILE               VARCHAR(50),
   SECONDLANGUAGE       VARCHAR(50),
   SECONDLANGUAGEDEGREE VARCHAR(50),
   OFFICEPHONE          VARCHAR(50),
   CURRENTADDRESS       VARCHAR(100),
   URGENCYPERSON        VARCHAR(50),
   URGENCYCONTACT       VARCHAR(50),
   FAMILYADDRESS        VARCHAR(100),
   FAMILYZIPCODE        VARCHAR(100),
   FAMILYPHONE          VARCHAR(50),
   FINGERPRINTID        VARCHAR(50),
   PHOTO                LONGBLOB,
   TOPEDUCATION         VARCHAR(100),
   BIRTHDAY             DATETIME,
   EMPLOYEESTATE        VARCHAR(50),
   WORKINGAGE           NUMERIC(8,0),
   EDITSTATE            VARCHAR(1),
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   EMPLOYEETYPE         VARCHAR(1),
   OTHERCOMMUNICATE     VARCHAR(500),
   INTERESTCONTENT      VARCHAR(500),
   SOCIALSERVICEYEAR    VARCHAR(50)
);

ALTER TABLE T_HR_EMPLOYEE_LIUHH COMMENT 'T_HR_EMPLOYEE_LIUHH';

/*==============================================================*/
/* Table: T_HR_EDUCATEHISTORY                                   */
/*==============================================================*/
CREATE TABLE T_HR_EDUCATEHISTORY
(
   EDUCATEHISTORYID     VARCHAR(50) NOT NULL COMMENT '������ѵID',
   RESUMEID             VARCHAR(50) COMMENT '����id',
   SCHOONAME            VARCHAR(50) COMMENT 'ѧУ����',
   SPECIALTY            VARCHAR(50) COMMENT 'רҵ',
   MAJOR                VARCHAR(50) COMMENT '���޿γ�',
   STARTDATE            VARCHAR(50) COMMENT '��ʼ����',
   ENDDATE              VARCHAR(50) COMMENT '��������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   EDUCATIONHISTORY     VARCHAR(50) COMMENT 'ѧ��',
   EDUCATIONPROPERTIE   VARCHAR(50) COMMENT '��������',
   PRIMARY KEY (EDUCATEHISTORYID)
);

ALTER TABLE T_HR_EDUCATEHISTORY COMMENT '������ѵ��¼';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEABNORMRECORD                             */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEABNORMRECORD
(
   ABNORMRECORDID       VARCHAR(50) NOT NULL COMMENT '�쳣��¼�ӱ�ID',
   ATTENDANCERECORDID   VARCHAR(50) COMMENT '���ڼ�¼���',
   ABNORMALDATE         DATETIME COMMENT '�쳣����',
   ABNORMCATEGORY       VARCHAR(50) COMMENT 'ȱ��',
   ATTENDPERIOD         VARCHAR(1) COMMENT '����,����,����,����',
   ABNORMALTIME         NUMERIC(8,0) COMMENT '��Сʱ��',
   SINGINSTATE          VARCHAR(1) COMMENT 'ǩ��״̬��1��δǩ����2����ǩ����3��ǩ����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   PRIMARY KEY (ABNORMRECORDID)
);

ALTER TABLE T_HR_EMPLOYEEABNORMRECORD COMMENT 'Ա���쳣��¼�ӱ�';

/*==============================================================*/
/* Index: CORDOWID                                              */
/*==============================================================*/
CREATE INDEX CORDOWID ON T_HR_EMPLOYEEABNORMRECORD
(
   OWNERID
);

/*==============================================================*/
/* Index: IDX_EMPLOT_ATIDGORYRIOD                               */
/*==============================================================*/
CREATE INDEX IDX_EMPLOT_ATIDGORYRIOD ON T_HR_EMPLOYEEABNORMRECORD
(
   ATTENDANCERECORDID,
   ABNORMCATEGORY,
   ATTENDPERIOD
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEEADDSUM                                   */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEADDSUM
(
   ADDSUMID             VARCHAR(50) NOT NULL COMMENT '�ӿۿ�ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   PROJECTNAME          VARCHAR(50) COMMENT '��Ŀ����(1.Ա���ӿۿ�2.Ա�����ۿ�)',
   PROJECTCODE          VARCHAR(50) COMMENT '��Ŀ����',
   PROJECTMONEY         NUMERIC(8,0) COMMENT '��Ŀ���',
   SYSTEMTYPE           VARCHAR(50) COMMENT '��Դϵͳ',
   DEALYEAR             VARCHAR(50) COMMENT '�������',
   DEALMONTH            VARCHAR(50) COMMENT '�����·�',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   MONTHLYBATCHID       VARCHAR(50) COMMENT '�¶���������ID',
   PRIMARY KEY (ADDSUMID)
);

ALTER TABLE T_HR_EMPLOYEEADDSUM COMMENT '�ṩ���ⲿϵͳ����Ա���ӿۿ���';

/*==============================================================*/
/* Index: IDX_SUMCOID                                           */
/*==============================================================*/
CREATE INDEX IDX_SUMCOID ON T_HR_EMPLOYEEADDSUM
(
   OWNERCOMPANYID,
   EMPLOYEEID
);

/*==============================================================*/
/* Index: INX_HRESUMEID                                         */
/*==============================================================*/
CREATE INDEX INX_HRESUMEID ON T_HR_EMPLOYEEADDSUM
(
   EMPLOYEEID
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEEADDSUMBATCH                              */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEADDSUMBATCH
(
   MONTHLYBATCHID       VARCHAR(50) NOT NULL COMMENT '�¶���������ID',
   BALANCEYEAR          NUMERIC(8,0) COMMENT '�������',
   BALANCEMONTH         NUMERIC(8,0) COMMENT '�����·�',
   BALANCEDATE          DATETIME COMMENT '��������',
   BALANCEOBJECTTYPE    VARCHAR(1) COMMENT '�����������',
   BALANCEOBJECTID      VARCHAR(50) COMMENT '�������Id',
   BALANCEOBJECTNAME    VARCHAR(500) COMMENT '���������',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (MONTHLYBATCHID)
);

ALTER TABLE T_HR_EMPLOYEEADDSUMBATCH COMMENT 'Ա���ӿۿ�������˱�';

/*==============================================================*/
/* Table: T_HR_EMPLOYEECANCELLEAVE                              */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEECANCELLEAVE
(
   CANCELLEAVEID        VARCHAR(50) NOT NULL COMMENT '���ټ�¼ID',
   LEAVERECORDID        VARCHAR(50) COMMENT '��ټ�¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   STARTDATETIME        DATETIME COMMENT '���ٿ�ʼʱ��',
   ENDDATETIME          DATETIME COMMENT '���ٽ���ʱ��',
   LEAVEDAYS            NUMERIC(8,0) COMMENT '��������',
   LEAVEHOURS           NUMERIC(8,0) COMMENT '����ʱ��',
   TOTALHOURS           NUMERIC(8,0) COMMENT '���ٺϼ�ʱ��',
   REASON               VARCHAR(50) COMMENT '����ԭ��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (CANCELLEAVEID)
);

ALTER TABLE T_HR_EMPLOYEECANCELLEAVE COMMENT 'Ա����������';

/*==============================================================*/
/* Table: T_HR_EMPLOYEECHECK                                    */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEECHECK
(
   BEREGULARID          VARCHAR(50) NOT NULL COMMENT 'ת����ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   PROBATIONPERIOD      NUMERIC(38,0) COMMENT '������',
   CHECKDATE            DATETIME COMMENT '���ʱ��',
   CHECKRESULT          VARCHAR(50) COMMENT '��˽��',
   CHECKCONTENT         TEXT COMMENT '���˱�',
   SELFCHECKRESULT      VARCHAR(50) COMMENT '�������',
   CHECKUSER            VARCHAR(50) COMMENT '�����',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   BEREGULARDATE        DATETIME COMMENT 'ת��ʱ��',
   CHECKSTATE           VARCHAR(50) COMMENT '��ְ���״̬',
   ONDUTYDATE           DATETIME COMMENT '��������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   REPORTDATE           DATETIME COMMENT '��ְʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   PRIMARY KEY (BEREGULARID)
);

ALTER TABLE T_HR_EMPLOYEECHECK COMMENT 'Ա��ת����#';

/*==============================================================*/
/* Table: T_HR_EMPLOYEECLOCKINRECORD                            */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEECLOCKINRECORD
(
   CLOCKINRECORDID      VARCHAR(50) NOT NULL COMMENT '�򿨼�¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   CLOCKID              VARCHAR(2000) COMMENT '����ID',
   FINGERPRINTID        VARCHAR(50) COMMENT 'ָ�Ʊ���',
   PUNCHDATE            DATETIME COMMENT '������',
   PUNCHTIME            VARCHAR(100) COMMENT '��ʱ��',
   VERIFYCODE           NUMERIC(8,0) COMMENT '��֤��ʽ:0-ָ�ƣ�1-����룻2-����',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (CLOCKINRECORDID)
);

ALTER TABLE T_HR_EMPLOYEECLOCKINRECORD COMMENT '�ӿ��ڻ�����';

/*==============================================================*/
/* Index: IDX_CORDOWNERID                                       */
/*==============================================================*/
CREATE INDEX IDX_CORDOWNERID ON T_HR_EMPLOYEECLOCKINRECORD
(
   OWNERID
);

/*==============================================================*/
/* Index: IDX_FINGERPRINTID                                     */
/*==============================================================*/
CREATE INDEX IDX_FINGERPRINTID ON T_HR_EMPLOYEECLOCKINRECORD
(
   FINGERPRINTID
);

/*==============================================================*/
/* Index: IDX_LOCKEMPLOYEEID                                    */
/*==============================================================*/
CREATE INDEX IDX_LOCKEMPLOYEEID ON T_HR_EMPLOYEECLOCKINRECORD
(
   EMPLOYEEID
);

/*==============================================================*/
/* Index: IDX_OWN_EMP_HRMEMP                                    */
/*==============================================================*/
CREATE INDEX IDX_OWN_EMP_HRMEMP ON T_HR_EMPLOYEECLOCKINRECORD
(
   OWNERCOMPANYID,
   EMPLOYEEID
);

/*==============================================================*/
/* Index: IDX_RECORDPUNCHDATE                                   */
/*==============================================================*/
CREATE INDEX IDX_RECORDPUNCHDATE ON T_HR_EMPLOYEECLOCKINRECORD
(
   PUNCHDATE
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEECONTRACT                                 */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEECONTRACT
(
   EMPLOYEECONTACTID    VARCHAR(50) NOT NULL COMMENT 'Ա����ͬID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   CONTACTCODE          VARCHAR(50) COMMENT '��ͬ���',
   FROMDATE             DATETIME COMMENT '��ͬ��Ч���ڴ�',
   TODATE               VARCHAR(50) COMMENT '��',
   CONTACTPERIOD        NUMERIC(38,0) COMMENT '��ͬ����',
   ENDDATE              DATETIME COMMENT '��ֹ����',
   REASON               VARCHAR(50) COMMENT '��ֹԭ��',
   ATTACHMENT           LONGBLOB COMMENT '��ͬɨ���',
   ATTACHMENTPATH       VARCHAR(2000) COMMENT '��ͬɨ�����ַ',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   ISSPECIALCONTRACT    VARCHAR(50) COMMENT '�Ƿ������ͬ',
   ALARMDAY             VARCHAR(50) COMMENT '��ǰ����������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   NOENDDATE            VARCHAR(50) COMMENT '�Ƿ�Ϊ�޹̶����޺�ͬ��0�����ǣ�1����',
   PRIMARY KEY (EMPLOYEECONTACTID)
);

ALTER TABLE T_HR_EMPLOYEECONTRACT COMMENT 'Ա���Ͷ���ͬ(δ��Ȩ��)';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEENTRY                                    */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEENTRY
(
   EMPLOYEEENTRYID      VARCHAR(50) NOT NULL COMMENT '��ְ��ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   CHECKSTATE           VARCHAR(50) COMMENT '��ְ���״̬',
   ENTRYDATE            DATETIME COMMENT '��ְʱ��',
   ONPOSTDATE           DATETIME COMMENT '��������',
   PROBATIONPERIOD      NUMERIC(8,0) COMMENT '������',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   REMARK               VARCHAR(200) COMMENT '��ע',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   EMPLOYEEPOSTID       VARCHAR(36) COMMENT 'Ա����λID',
   PRIMARY KEY (EMPLOYEEENTRYID)
);

ALTER TABLE T_HR_EMPLOYEEENTRY COMMENT 'Ա����ְ��#';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEEVECTIONRECORD                           */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEEVECTIONRECORD
(
   EVECTIONRECORDID     VARCHAR(50) NOT NULL COMMENT '�����¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EVECTIONRECORDCATEGORY VARCHAR(50) COMMENT '��������',
   STARTTIME            VARCHAR(50) COMMENT '���ʼʱ��',
   ENDTIME              VARCHAR(50) COMMENT '�������ʱ��',
   STARTDATE            DATETIME COMMENT '���ʼ����',
   ENDDATE              DATETIME COMMENT '�����������',
   TOTALDAYS            NUMERIC(8,0) COMMENT '��������',
   DESTINATION          VARCHAR(100) COMMENT '����Ŀ�ĵ�',
   EVECTIONREASON       VARCHAR(500) COMMENT '����ԭ��',
   REPLACEPEOPLE        VARCHAR(50) COMMENT '�����н���',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   SUBSIDYTYPE          VARCHAR(50) COMMENT '0���Σ�1����',
   SUBSIDYVALUE         NUMERIC(8,0) COMMENT '�������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (EVECTIONRECORDID)
);

ALTER TABLE T_HR_EMPLOYEEEVECTIONRECORD COMMENT 'Ա�������¼';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEEVECTIONREPORT                           */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEEVECTIONREPORT
(
   EVECTIONREPORTID     VARCHAR(50) NOT NULL COMMENT '�����ID',
   EVECTIONRECORDID     VARCHAR(50) COMMENT '�����¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EVECTIONRECORDCATEGORY VARCHAR(50) COMMENT '��������',
   STARTTIME            VARCHAR(50) COMMENT '���ʼʱ��',
   ENDTIME              VARCHAR(50) COMMENT '�������ʱ��',
   STARTDATE            DATETIME COMMENT '���ʼ����',
   ENDDATE              DATETIME COMMENT '�����������',
   TOTALDAYS            NUMERIC(8,0) COMMENT '��������',
   DESTINATION          VARCHAR(100) COMMENT '����Ŀ�ĵ�',
   EVECTIONREASON       VARCHAR(500) COMMENT '����ԭ��',
   REPLACEPEOPLE        VARCHAR(50) COMMENT '�����н���',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   SUBSIDYTYPE          VARCHAR(50) COMMENT '0���Σ�1����',
   SUBSIDYVALUE         NUMERIC(8,0) COMMENT '�������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (EVECTIONREPORTID)
);

ALTER TABLE T_HR_EMPLOYEEEVECTIONREPORT COMMENT 'Ա�������';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEINSURANCE                                */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEINSURANCE
(
   EMPLOYINSURANCEID    VARCHAR(50) NOT NULL COMMENT '���ռ�¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   INSURANCECATEGORY    VARCHAR(50) COMMENT '��������',
   INSURANCENAME        VARCHAR(50) COMMENT '��������',
   INSURANCECOMPANY     VARCHAR(50) COMMENT '���չ�˾����',
   INSURANCECOST        NUMERIC(8,0) COMMENT '���ս��',
   CONTRACTCODE         VARCHAR(50) COMMENT '���պ�ͬ��',
   STARTDATE            VARCHAR(50) COMMENT '��ʼ����ʱ��',
   LASTDATE             VARCHAR(50) COMMENT '���һ�ν���ʱ��',
   PERIOD               VARCHAR(50) COMMENT '��������',
   ALARMDAY             VARCHAR(50) COMMENT '��ǰ����������',
   INSURANCEPAY         VARCHAR(50) COMMENT '���ɽ��',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (EMPLOYINSURANCEID)
);

ALTER TABLE T_HR_EMPLOYEEINSURANCE COMMENT 'Ա�����ռ�¼(δ��Ȩ��)';

/*==============================================================*/
/* Table: T_HR_EMPLOYEELEAVERECORD                              */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEELEAVERECORD
(
   LEAVERECORDID        VARCHAR(50) NOT NULL COMMENT '��ټ�¼ID',
   LEAVETYPESETID       VARCHAR(50) COMMENT '�������ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   STARTDATETIME        DATETIME COMMENT '��ٿ�ʼʱ��',
   ENDDATETIME          DATETIME COMMENT '��ٽ���ʱ��',
   LEAVEDAYS            NUMERIC(8,0) COMMENT '�������',
   LEAVEHOURS           NUMERIC(8,0) COMMENT '���ʱ��',
   TOTALHOURS           NUMERIC(8,0) COMMENT '��ٺϼ�ʱ��',
   REASON               VARCHAR(2000) COMMENT '���ԭ��',
   ATTACHMENTPATH       VARCHAR(50) COMMENT '����·��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   FINEDAYS             NUMERIC(8,0) DEFAULT 0,
   FINEHOURS            NUMERIC(8,0) DEFAULT 0,
   USEABLEHOURS         NUMERIC(8,0) DEFAULT 0,
   USEABLEDAYS          NUMERIC(8,0) DEFAULT 0,
   PRIMARY KEY (LEAVERECORDID)
);

ALTER TABLE T_HR_EMPLOYEELEAVERECORD COMMENT 'Ա����ټ�¼';

/*==============================================================*/
/* Table: T_HR_EMPLOYEELEVELDAYCOUNT                            */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEELEVELDAYCOUNT
(
   RECORDID             VARCHAR(50) NOT NULL COMMENT '��¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   VACATIONTYPE         VARCHAR(50) COMMENT '�ݼ�����',
   DAYS                 NUMERIC(8,0) COMMENT '��������',
   EFFICDATE            DATETIME COMMENT '��Ч����',
   TERMINATEDATE        DATETIME COMMENT '��ֹ����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   LEAVETYPESETID       VARCHAR(50) COMMENT '�������ID',
   STATUS               NUMERIC(8,0) DEFAULT 1,
   LEFTHOURS            NUMERIC(8,0) DEFAULT 0,
   HOURS                NUMERIC(8,0) DEFAULT 0,
   PRIMARY KEY (RECORDID)
);

ALTER TABLE T_HR_EMPLOYEELEVELDAYCOUNT COMMENT 'Ա�����ݼٱ�';

/*==============================================================*/
/* Index: IDX_EIDPID                                            */
/*==============================================================*/
CREATE INDEX IDX_EIDPID ON T_HR_EMPLOYEELEVELDAYCOUNT
(
   EMPLOYEEID,
   OWNERCOMPANYID
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEELEVELDAYDETAILS                          */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEELEVELDAYDETAILS
(
   LEVELDAYDETAILSID    VARCHAR(50) NOT NULL COMMENT '���ݼ���ϸID',
   RECORDID             VARCHAR(50) COMMENT '��¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   VACATIONTYPE         VARCHAR(1) COMMENT '�ݼ�����',
   DAYS                 NUMERIC(8,0) COMMENT '��������',
   EFFICDATE            DATETIME COMMENT '�䶯����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (LEVELDAYDETAILSID)
);

ALTER TABLE T_HR_EMPLOYEELEVELDAYDETAILS COMMENT 'Ա�����ݼ���ϸ';

/*==============================================================*/
/* Table: T_HR_EMPLOYEELOGINRECORD                              */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEELOGINRECORD
(
   LOGINRECORDID        VARCHAR(50) NOT NULL COMMENT '��¼ϵͳ��¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   USERNAME             VARCHAR(50) NOT NULL COMMENT 'Ա��ϵͳ�ʺ�',
   LOGINDATE            VARCHAR(50) COMMENT '��¼����',
   LOGINTIME            VARCHAR(50) COMMENT '��¼ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   PRIMARY KEY (LOGINRECORDID)
);

ALTER TABLE T_HR_EMPLOYEELOGINRECORD COMMENT 'Ա����¼ϵͳ��¼��';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEOVERTIMEDETAILRD                         */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEOVERTIMEDETAILRD
(
   OVERTIMEDETAILRDID   VARCHAR(50) NOT NULL COMMENT '�Ӱ���ϸ��¼ID',
   OVERTIMERECORDID     VARCHAR(50) COMMENT '�Ӱ��¼ID',
   STARTDATETIME        DATETIME COMMENT '�Ӱ࿪ʼʱ��',
   ENDDATETIME          DATETIME COMMENT '�Ӱ����ʱ��',
   OVERTIMEHOURS        VARCHAR(50) COMMENT '�Ӱ�ʱ��',
   PAYCATEGORY          VARCHAR(50) COMMENT '�Ӱ౨�귽ʽ��0 ���ݷ�ʽ��1 �Ӱ๤�ʷ�ʽ��2 �ȵ����ٸ����ʷ�ʽ��3 �ޱ��귽ʽ��',
   REMARK               VARCHAR(500) COMMENT '��ע',
   PRIMARY KEY (OVERTIMEDETAILRDID)
);

ALTER TABLE T_HR_EMPLOYEEOVERTIMEDETAILRD COMMENT 'Ա���Ӱ��¼��ϸ';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEOVERTIMERECORD                           */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEOVERTIMERECORD
(
   OVERTIMERECORDID     VARCHAR(50) NOT NULL COMMENT '�Ӱ��¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   OVERTIMECATE         VARCHAR(50) COMMENT '�Ӱ���Ч��ʽ
            0 ���ͨ���ļӰ����룻1 ��������ʱ�����Զ��ۼƣ�2 ���ڼ����ۼƣ�',
   STARTDATE            DATETIME COMMENT '�Ӱ࿪ʼ����',
   STARTDATETIME        VARCHAR(50) COMMENT '�Ӱ࿪ʼʱ��',
   ENDDATE              DATETIME COMMENT '�Ӱ��������',
   ENDDATETIME          VARCHAR(50) COMMENT '�Ӱ����ʱ��',
   OVERTIMEHOURS        NUMERIC(8,0) COMMENT '�Ӱ�ʱ��',
   PAYCATEGORY          VARCHAR(50) COMMENT '�Ӱ౨�귽ʽ��0 ���ݷ�ʽ��1 �Ӱ๤�ʷ�ʽ��2 �ȵ����ٸ����ʷ�ʽ��3 �ޱ��귽ʽ��',
   ISCONVERTLEVEDAY     VARCHAR(1) COMMENT '�Ƿ��Ѷһ�����',
   BEGINCARDTIME        VARCHAR(50) COMMENT '�ϰ�ˢ��ʱ��',
   BEGINCARDTYPE        VARCHAR(1) COMMENT '0,����ˢ��,1 ǩ��',
   BEGINCARDSTATE       VARCHAR(50) COMMENT '�ϰ�״̬',
   ENDCARDTIME          VARCHAR(50) COMMENT '�°�ˢ��ʱ��',
   ENDCARDTYPE          VARCHAR(1) COMMENT '0,����ˢ��,1 ǩ��',
   ENDCARDSTATE         VARCHAR(50) COMMENT '�°�״̬',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   STATUS               NUMERIC(8,0) DEFAULT 0 COMMENT '0����Ч��1������',
   EFFECTIVEDATE        DATETIME  COMMENT '��Ч����',
   EXPIREDATE           DATETIME  COMMENT '����ʱ��',
   LEFTHOURS            NUMERIC(8,2) DEFAULT 0,
   PRIMARY KEY (OVERTIMERECORDID)
);

ALTER TABLE T_HR_EMPLOYEEOVERTIMERECORD COMMENT 'Ա���Ӱ��¼';

/*==============================================================*/
/* Table: T_HR_EMPLOYEEPOSTCHANGE                               */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEEPOSTCHANGE
(
   POSTCHANGEID         VARCHAR(50) NOT NULL COMMENT '�춯��¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   POSTCHANGCATEGORY    VARCHAR(50) COMMENT '�춯����',
   POSTCHANGREASON      VARCHAR(2000) COMMENT '�춯ԭ��',
   FROMCOMPANYID        VARCHAR(50) COMMENT '�춯ǰ����ID',
   TOCOMPANYID          VARCHAR(50) COMMENT '�춯�����ID',
   FROMDEPARTMENTID     VARCHAR(50) COMMENT '�춯ǰ����ID',
   TODEPARTMENTID       VARCHAR(50) COMMENT '�춯����ID',
   FROMPOSTID           VARCHAR(50) COMMENT '�춯ǰ��λID',
   TOPOSTID             VARCHAR(50) COMMENT '�춯���λID',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   CHANGEDATE           VARCHAR(50) COMMENT '�춯����',
   FROMPOSTLEVEL        NUMERIC(8,0) COMMENT '�춯ǰ��λ�ȼ�',
   FROMSALARYLEVEL      NUMERIC(8,0) COMMENT '�춯ǰн�ʵȼ�',
   ISAGENCY             VARCHAR(50) COMMENT '�Ƿ�����λ',
   TOPOSTLEVEL          NUMERIC(8,0) COMMENT '�춯���λ�ȼ�',
   TOSALARYLEVEL        NUMERIC(8,0) COMMENT '�춯��н�ʵȼ�',
   EMPLOYEEPOSTID       VARCHAR(50) COMMENT '�춯��Ա����λID',
   ENDDATE              DATETIME COMMENT '��������',
   ENDREASON            VARCHAR(100) COMMENT '����ԭ��',
   PRIMARY KEY (POSTCHANGEID)
);

ALTER TABLE T_HR_EMPLOYEEPOSTCHANGE COMMENT 'Ա���춯��¼#';

/*==============================================================*/
/* Table: T_HR_EMPLOYEESALARYRECORD                             */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEESALARYRECORD
(
   EMPLOYEESALARYRECORDID VARCHAR(50) NOT NULL COMMENT 'н�ʼ�¼ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   EMPLOYEEID           VARCHAR(50) NOT NULL COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   SALARYMONTH          VARCHAR(50) COMMENT '�����·�',
   SALARYYEAR           VARCHAR(50) COMMENT '�������',
   ATTENDANCEUNUSUALDEDUCT NUMERIC(8,0) COMMENT '�����쳣�ۿ�',
   ATTENDANCEUNUSUALTIME VARCHAR(50) COMMENT '�����쳣����',
   ATTENDANCEUNUSUALTIMES VARCHAR(50) COMMENT '�����쳣ʱ��',
   PAIDDATE             DATETIME COMMENT '��н����',
   PAIDLATEDATE         DATETIME COMMENT '��������',
   OVERTIMETIMES        VARCHAR(50) COMMENT '�Ӱ�ʱ��',
   OVERTIMESUM          NUMERIC(8,0) COMMENT '�Ӱ��',
   ABSENTTIMES          VARCHAR(50) COMMENT '����ʱ��',
   ABSENTDEDUCT         NUMERIC(8,0) COMMENT '�����ۿ�',
   LEAVETIME            VARCHAR(50) COMMENT '���ʱ��',
   LEAVEDEDUCT          NUMERIC(8,0) COMMENT '��ٿۿ�',
   EVECTIONTIMES        NUMERIC(8,0) COMMENT '����ʱ��',
   EVECTIONSUBSIDY      NUMERIC(8,0) COMMENT '�����',
   PAIDBY               VARCHAR(50) COMMENT '��н������',
   PAIDTYPE             VARCHAR(50) COMMENT '0���У��ֽ𣬴ӷ�����Ĭ�ϣ��������޸�',
   ACTUALLYPAY          VARCHAR(2000) COMMENT 'ʵ������',
   BASICSALARY          NUMERIC(8,0) COMMENT '��������',
   POSTSALARY           NUMERIC(8,0) COMMENT '��λ����',
   SECURITYALLOWANCE    NUMERIC(8,0) COMMENT '���ܽ���',
   HOUSINGALLOWANCE     NUMERIC(8,0) COMMENT 'ס������',
   AREADIFALLOWANCE     NUMERIC(8,0) COMMENT '�������첹��',
   FOODALLOWANCE        NUMERIC(8,0) COMMENT '�ͷѲ���',
   FIXEDINCOMESUM       NUMERIC(8,0) COMMENT '�̶�����ϼ�',
   ABSENCEDAYS          NUMERIC(8,0) COMMENT 'ȱ������',
   VACATIONDEDUCT       NUMERIC(8,0) COMMENT '���������ۿ�',
   WORKINGSALARY        NUMERIC(8,0) COMMENT '���ڹ���',
   OTHERADDDEDUCT       NUMERIC(8,0) COMMENT '�����ӿۿ�',
   SUBTOTAL             NUMERIC(8,0) COMMENT 'Ӧ��С��',
   HOUSINGALLOWANCEDEDUCT NUMERIC(8,0) COMMENT 'ס�������ۿ�',
   PERSONALSICOST       NUMERIC(8,0) COMMENT '�����籣����',
   PRETAXSUBTOTAL       NUMERIC(8,0) COMMENT '˰ǰӦ���ϼ�',
   BALANCE              NUMERIC(8,0) COMMENT '���',
   PERSONALINCOMETAX    NUMERIC(8,0) COMMENT '��������˰',
   OTHERSUBJOIN         NUMERIC(8,0) COMMENT '�������ۿ�',
   OFFENCEDEDUCT        NUMERIC(8,0) COMMENT 'Υ�Ϳۿ�',
   MANTISSADEDUCT       NUMERIC(8,0) COMMENT 'β���ۿ�',
   DEDUCTTOTAL          NUMERIC(8,0) COMMENT '�ۿ�ϼ�',
   PERFORMANCESUM       NUMERIC(8,0) COMMENT '��Ч�����',
   CUSTOMERSUM          NUMERIC(8,0) COMMENT '�Զ�������',
   CONFIRM              VARCHAR(50) COMMENT '���ȷ��',
   CONFIRMDATE          DATETIME COMMENT '���ȷ������',
   DRAWMONEYREMARK      VARCHAR(50) COMMENT '��ע',
   LOANDEDUCT           NUMERIC(8,0) COMMENT '���ֿ�',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PAYCONFIRM           VARCHAR(1) COMMENT '���ű�־',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   MONTHLYBATCHID       VARCHAR(50) COMMENT '�¶���������ID',
   PRIMARY KEY (EMPLOYEESALARYRECORDID)
);

ALTER TABLE T_HR_EMPLOYEESALARYRECORD COMMENT 'н�ʼ�¼';

/*==============================================================*/
/* Table: T_HR_EMPLOYEESALARYRECORDITEM                         */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEESALARYRECORDITEM
(
   SALARYRECORDITEMID   VARCHAR(50) NOT NULL COMMENT 'н����ID',
   EMPLOYEESALARYRECORDID VARCHAR(50) COMMENT 'н�ʼ�¼ID',
   SALARYARCHIVEID      VARCHAR(50) COMMENT 'н�ʵ���ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   SALARYITEMID         VARCHAR(50) COMMENT '������ID',
   CALCULATEFORMULA     VARCHAR(2000) COMMENT '���㹫ʽ',
   SUM                  VARCHAR(2000) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   ORDERNUMBER          NUMERIC(8,0) COMMENT '�����',
   PRIMARY KEY (SALARYRECORDITEMID)
);

ALTER TABLE T_HR_EMPLOYEESALARYRECORDITEM COMMENT 'н�ʼ�¼н����(#)';

/*==============================================================*/
/* Table: T_HR_EMPLOYEESIGNINDETAIL                             */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEESIGNINDETAIL
(
   SIGNINDETAILID       VARCHAR(50) NOT NULL COMMENT '�쳣��¼�ӱ�ID',
   SIGNINID             VARCHAR(50) COMMENT 'ǩ����¼ID',
   ABNORMRECORDID       VARCHAR(50) COMMENT '�쳣��¼�ӱ�ID2',
   ABNORMALDATE         DATETIME COMMENT '�쳣����',
   ABNORMCATEGORY       VARCHAR(50) COMMENT 'ȱ��',
   ATTENDPERIOD         VARCHAR(1) COMMENT '����,����,����,����',
   ABNORMALTIME         NUMERIC(8,0) COMMENT '��Сʱ��',
   REASONCATEGORY       VARCHAR(1) COMMENT '©��,�����,��',
   DETAILREASON         VARCHAR(2000) COMMENT '��ϸԭ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   PRIMARY KEY (SIGNINDETAILID)
);

ALTER TABLE T_HR_EMPLOYEESIGNINDETAIL COMMENT 'Ա��ǩ����¼�ӱ�';

/*==============================================================*/
/* Index: IDX_TAILOWNERID                                       */
/*==============================================================*/
CREATE INDEX IDX_TAILOWNERID ON T_HR_EMPLOYEESIGNINDETAIL
(
   OWNERID
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEESIGNINRECORD                             */
/*==============================================================*/
CREATE TABLE T_HR_EMPLOYEESIGNINRECORD
(
   SIGNINID             VARCHAR(50) NOT NULL COMMENT 'ǩ����¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   SIGNINTIME           DATETIME COMMENT 'ǩ������',
   CHECKSTATE           VARCHAR(1) COMMENT '0,©��,1�����,2��е����',
   SIGNINCATEGORY       VARCHAR(50) COMMENT 'ǩ������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (SIGNINID)
);

ALTER TABLE T_HR_EMPLOYEESIGNINRECORD COMMENT 'Ա��ǩ����¼��';

/*==============================================================*/
/* Table: T_HR_EXPERIENCE                                       */
/*==============================================================*/
CREATE TABLE T_HR_EXPERIENCE
(
   EXPERIENCEID         VARCHAR(50) NOT NULL COMMENT '��������ID',
   RESUMEID             VARCHAR(50) COMMENT '����id',
   COMPANYNAME          VARCHAR(50) COMMENT '��˾����',
   POST                 VARCHAR(50) COMMENT '������λ',
   SALARY               VARCHAR(50) COMMENT '��н',
   STARTDATE            VARCHAR(50) COMMENT '��ʼ����',
   ENDDATE              VARCHAR(50) COMMENT '��������',
   JOBDESCRIPTION       VARCHAR(2000) COMMENT '��������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (EXPERIENCEID)
);

ALTER TABLE T_HR_EXPERIENCE COMMENT '��������';

/*==============================================================*/
/* Table: T_HR_FAMILYMEMBER                                     */
/*==============================================================*/
CREATE TABLE T_HR_FAMILYMEMBER
(
   FAMILYMEMBERID       VARCHAR(50) NOT NULL COMMENT '��Ա��ϢID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   NAME                 VARCHAR(50) COMMENT '����',
   AGE                  VARCHAR(50) COMMENT '����',
   SEX                  VARCHAR(1) COMMENT '�Ա�',
   RELATIONSHIP         VARCHAR(50) COMMENT '��Ա����ϵ',
   CONTACT              VARCHAR(50) COMMENT '��ϵ��ʽ',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (FAMILYMEMBERID)
);

ALTER TABLE T_HR_FAMILYMEMBER COMMENT 'Ա����ͥ��Ա��Ϣ��';

/*==============================================================*/
/* Table: T_HR_FREELEAVEDAYSET                                  */
/*==============================================================*/
CREATE TABLE T_HR_FREELEAVEDAYSET
(
   FREELEAVEDAYSETID    VARCHAR(50) NOT NULL COMMENT '��н������ID',
   LEAVETYPESETID       VARCHAR(50) COMMENT '�������ID',
   MINIMONTH            NUMERIC(8,0) COMMENT '��ְ��С�·�',
   MAXMONTH             NUMERIC(8,0) COMMENT '��ְ����·�',
   LEAVEDAYS            NUMERIC(8,0) COMMENT '���ݼ���',
   ISPERFECTATTENDANCEFACTOR VARCHAR(50) COMMENT '�Ƿ��ȫ��',
   OFFESTTYPE           VARCHAR(1) COMMENT '1��һ�������꣬��ʱ�������ڳ�����¼٣�2����N�����꣬ÿ���һ�β��¼���һ�Σ�3�������ƣ������ڳ�����¼٣�',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (FREELEAVEDAYSETID)
);

ALTER TABLE T_HR_FREELEAVEDAYSET COMMENT '��¼Ա���ɴ�н�ݼ��������������Ϳ�������٣�Ҳ�����Ǳ�ļ���';

/*==============================================================*/
/* Table: T_HR_IMPORTSETDETAIL                                  */
/*==============================================================*/
CREATE TABLE T_HR_IMPORTSETDETAIL
(
   DETAILID             VARCHAR(50) NOT NULL COMMENT '����������ϸ��ID',
   MASTERID             VARCHAR(50) COMMENT '������������ID',
   ENTITYCOLUMNNAME     VARCHAR(100) COMMENT 'ʵ���ֶ���',
   ENTITYCOLUMNCODE     VARCHAR(100) COMMENT 'ʵ���ֶα���',
   EXECELCOLUMN         VARCHAR(50) COMMENT '��ӦExecll��',
   EXECELROW            NUMERIC(8,0) COMMENT '��ӦExecll��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (DETAILID)
);

ALTER TABLE T_HR_IMPORTSETDETAIL COMMENT '����������ϸ��';

/*==============================================================*/
/* Table: T_HR_IMPORTSETMASTER                                  */
/*==============================================================*/
CREATE TABLE T_HR_IMPORTSETMASTER
(
   MASTERID             VARCHAR(50) NOT NULL COMMENT '������������ID',
   CITY                 VARCHAR(10) COMMENT '����',
   ENTITYNAME           VARCHAR(100) COMMENT 'ʵ������',
   ENTITYCODE           VARCHAR(100) COMMENT 'ʵ�����',
   STARTCOLUMN          VARCHAR(50) COMMENT '��ʼ��ȡ��',
   STARTROW             NUMERIC(8,0) COMMENT '��ʼ��ȡ��',
   ENDROW               NUMERIC(8,0) COMMENT '������ȡ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (MASTERID)
);

ALTER TABLE T_HR_IMPORTSETMASTER COMMENT '������������';

/*==============================================================*/
/* Table: T_HR_KPIPOINT                                         */
/*==============================================================*/
CREATE TABLE T_HR_KPIPOINT
(
   KPIPOINTID           VARCHAR(50) NOT NULL COMMENT 'KPI��ID',
   SCORETYPEID          VARCHAR(50) COMMENT '���ַ�ʽID',
   KPIPOINTNAME         VARCHAR(50) COMMENT 'KPI����',
   SYSTEMID             VARCHAR(50) COMMENT 'ϵͳID',
   BUSINESSID           VARCHAR(50) COMMENT 'ҵ��ID',
   FLOWID               VARCHAR(50) COMMENT '����ID',
   STEPID               VARCHAR(50) COMMENT '����ID',
   KPIPOINTREMARK       VARCHAR(2000) COMMENT '˵��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   SUMTYPE              VARCHAR(50) COMMENT '�������',
   PRIMARY KEY (KPIPOINTID)
);

ALTER TABLE T_HR_KPIPOINT COMMENT 'KPI��';

/*==============================================================*/
/* Table: T_HR_KPIPOINTDEFINE                                   */
/*==============================================================*/
CREATE TABLE T_HR_KPIPOINTDEFINE
(
   KPIPOINTID           VARCHAR(50) NOT NULL,
   CHECKCATEGORYID      VARCHAR(50),
   PERFORMANCEGOAL      VARCHAR(2000),
   CHECKMODELID         VARCHAR(50),
   ISFLOWSTEPCHECK      VARCHAR(1),
   FLOWID               VARCHAR(50),
   FLOWNAME             VARCHAR(50),
   FLOWSTEPID           VARCHAR(50),
   FLOWSTEPNAME         VARCHAR(50),
   DEALTIME             NUMERIC(8,0) COMMENT 'ϵͳ�������Ч����ʱ�䣬������',
   SYSTEMGRADEWEIGHING  NUMERIC(8,0) COMMENT 'ϵͳ���Ȩ�أ�ϵͳ�Զ�����',
   PERSONGRADEWEIGHING  NUMERIC(8,0),
   SPOTGRADEWEIGHING    NUMERIC(8,0),
   SPOTCHECKGROUPID     VARCHAR(50),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   REMARK               VARCHAR(2000),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (KPIPOINTID)
);

ALTER TABLE T_HR_KPIPOINTDEFINE COMMENT '������Ŀ������';

/*==============================================================*/
/* Table: T_HR_KPIRECORDCOMPLAIN                                */
/*==============================================================*/
CREATE TABLE T_HR_KPIRECORDCOMPLAIN
(
   COMPLAINID           VARCHAR(50) NOT NULL COMMENT '���߼�¼ID',
   KPIRECORDID          VARCHAR(50) COMMENT 'KPI��¼ID',
   COMPLAINANTID        VARCHAR(50) COMMENT '������ԱID',
   REVIEWERID           VARCHAR(50) COMMENT '�����ԱID',
   COMPLAINREMARK       VARCHAR(500) COMMENT '��������',
   COMPLAINDATE         DATETIME COMMENT '����ʱ��',
   CHECKSTATE           VARCHAR(1) COMMENT '0.��ͬ�⣻1.ͬ�⣻2.����',
   INITIALSCORE         NUMERIC(8,0) COMMENT 'ԭʼ�÷�',
   REVIEWSCORE          NUMERIC(8,0) COMMENT '��˵÷�',
   REVIEWREMARK         VARCHAR(500) COMMENT '�������',
   REVIEWDATE           DATETIME COMMENT '���ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (COMPLAINID)
);

ALTER TABLE T_HR_KPIRECORDCOMPLAIN COMMENT '���߼�¼';

/*==============================================================*/
/* Table: T_HR_KPIREMIND                                        */
/*==============================================================*/
CREATE TABLE T_HR_KPIREMIND
(
   REMINDID             VARCHAR(50) NOT NULL COMMENT '��������ID',
   SCORETYPEID          VARCHAR(50) COMMENT '���ַ�ʽID',
   REMINDTYPE           VARCHAR(50) COMMENT '1.�Ż���2.�ʼ���3.���ţ�4.��ʱͨѶ���(�磺RTX)���ɶ����ϡ�',
   FORWARDHOURS         NUMERIC(8,0) COMMENT '��ǰСʱ��',
   PRIMARY KEY (REMINDID)
);

ALTER TABLE T_HR_KPIREMIND COMMENT '��������';

/*==============================================================*/
/* Table: T_HR_KPIRECORD                                        */
/*==============================================================*/
CREATE TABLE T_HR_KPIRECORD
(
   KPIRECORDID          VARCHAR(50) NOT NULL COMMENT 'KPI��¼ID',
   EMPLOYEEID           VARCHAR(50),
   EMPLOYEECODE         VARCHAR(50),
   EMPLOYEENAME         VARCHAR(50),
   KPIPOINTID           VARCHAR(50) COMMENT 'KPI��ID',
   APPRAISEEID          VARCHAR(50) COMMENT '��������ԱID',
   APPRAISERID          VARCHAR(50) COMMENT '�����ԱID',
   RANDOMPERSONID       VARCHAR(50) COMMENT '�����ԱID',
   BUSINESSCODE         VARCHAR(50) COMMENT 'ҵ�񵥺�',
   FLOWRECORDCODE       VARCHAR(50) COMMENT '���̵���',
   STEPDETAILCODE       VARCHAR(50) COMMENT '���赥��',
   SYSTEMSCORE          NUMERIC(8,0) COMMENT 'ϵͳ����',
   SYSTEMWEIGHT         NUMERIC(8,0) COMMENT 'ϵͳ����Ȩ��',
   MANUALSCORE          NUMERIC(8,0) COMMENT '�ֶ�����',
   MANUALWEIGHT         NUMERIC(8,0) COMMENT '�ֶ�����Ȩ��',
   RANDOMSCORE          NUMERIC(8,0) COMMENT '�����',
   RANDOMWEIGHT         NUMERIC(8,0) COMMENT '�����Ȩ��',
   SUMSCORE             NUMERIC(8,0) COMMENT '�ܷ�',
   T_H_SPOTCHECKERID    VARCHAR(50),
   FLOWID               VARCHAR(50),
   FLOWNAME             VARCHAR(50),
   FLOWSTEP             VARCHAR(50),
   CHECKDATE            DATETIME,
   SYSTEMGRADESCROE     NUMERIC(8,0),
   PERSONGRADESCROE     NUMERIC(8,0),
   PERSONID             VARCHAR(50),
   PERSONCOMMENT        VARCHAR(2000),
   SPOTGRADESCORE       NUMERIC(8,0),
   SPOTPERSONID         VARCHAR(50),
   SPOTPERSONCOMMENT    VARCHAR(2000),
   TOTALSCORE           VARCHAR(50),
   REMARK               VARCHAR(2000) COMMENT '����',
   COMPLAINSTATUS       VARCHAR(1) COMMENT '0��û�����ߣ�1���������ߣ�2���������߼�¼',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   KPICATEGORY          VARCHAR(1) COMMENT '��Ч���ͣ�0,���̣�1����',
   KPIDESCRIPTION       VARCHAR(200) COMMENT 'KPI������',
   FLOWDESCRIPTION      VARCHAR(200) COMMENT '����/��������',
   PRIMARY KEY (KPIRECORDID)
);

ALTER TABLE T_HR_KPIRECORD COMMENT 'KPI��ϸ��¼';

/*==============================================================*/
/* Table: T_HR_KPIRECORDAPPEAL                                  */
/*==============================================================*/
CREATE TABLE T_HR_KPIRECORDAPPEAL
(
   KPIAPPEALID          VARCHAR(50) NOT NULL,
   KPIRECORDID          VARCHAR(50),
   APPEALREASON         VARCHAR(2000),
   CHECKSTATE           VARCHAR(1),
   EDITSTATE            VARCHAR(1),
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME ,
   PRIMARY KEY (KPIAPPEALID)
);

ALTER TABLE T_HR_KPIRECORDAPPEAL COMMENT 'KPI��¼��������';

/*==============================================================*/
/* Table: T_HR_KPIRECORDPERSONSUMMARY                           */
/*==============================================================*/
CREATE TABLE T_HR_KPIRECORDPERSONSUMMARY
(
   KPIRECORDSUMMARYID   VARCHAR(50) NOT NULL,
   EMPLOYEEID           VARCHAR(50),
   EMPLOYEECODE         VARCHAR(50),
   EMPLOYEENAME         VARCHAR(50),
   SYSTEMTYPE           VARCHAR(50),
   PERFORMYEAR          VARCHAR(50),
   PERFORMQUARTER       VARCHAR(50),
   PERFORMMOTH          VARCHAR(50),
   AVERAGE              NUMERIC(8,0),
   EXAMINEDATE          VARCHAR(50),
   EXAMINEPOINT         NUMERIC(8,0),
   GRADEPERSONID        VARCHAR(50),
   LEADCOMMENT          VARCHAR(2000),
   CHECKSTATE           VARCHAR(1),
   EDITSTATE            VARCHAR(1),
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME ,
   PRIMARY KEY (KPIRECORDSUMMARYID)
);

ALTER TABLE T_HR_KPIRECORDPERSONSUMMARY COMMENT '��Ч���˸��˻��ܼ�¼';

/*==============================================================*/
/* Table: T_HR_KPITYPE                                          */
/*==============================================================*/
CREATE TABLE T_HR_KPITYPE
(
   KPITYPEID            VARCHAR(50) NOT NULL COMMENT 'KPI���ID',
   SCORETYPEID          VARCHAR(50) COMMENT '���ַ�ʽID',
   KPITYPENAME          VARCHAR(50) COMMENT 'KPI�������',
   KPITYPEREMARK        VARCHAR(2000) COMMENT 'KPI���˵��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (KPITYPEID)
);

ALTER TABLE T_HR_KPITYPE COMMENT 'KPI���';

/*==============================================================*/
/* Table: T_HR_LEAVEREFEROT                                     */
/*==============================================================*/
CREATE TABLE T_HR_LEAVEREFEROT
(
   RECORDID             VARCHAR(50) NOT NULL,
   LEAVE_TYPE_SETID     VARCHAR(50) NOT NULL COMMENT '�������',
   LEAVE_RECORDID       VARCHAR(50) COMMENT '��ټ�¼',
   OVERTIME_RECORDID    VARCHAR(50) COMMENT '�Ӱ��¼',
   LEAVE_APPLY_DATE     DATETIME  COMMENT '�������ʱ��',
   LEAVE_TOTAL_DAYS     NUMERIC(8,2) DEFAULT 0 COMMENT '��ٺϼ�����',
   LEAVE_TOTAL_HOURS    NUMERIC(8,2) DEFAULT 0 COMMENT '��ٺϼ�ʱ��',
   ACTION               NUMERIC(8,0) DEFAULT 1 COMMENT '��������:1 ��� 2 ����',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EFFECTDATE           DATETIME  COMMENT '��Чʱ�䣬��T_HR_EmployeeLevelDayCount���е�EFFicdate��TeminateDateͬ��',
   EXPIREDATE           DATETIME  COMMENT '����ʱ�䣬��T_HR_EmployeeLevelDayCount���е�EFFicdate��TeminateDateͬ��',
   STATUS               NUMERIC(8,0) DEFAULT 0 COMMENT '0 ��Ч��1 ��Ч',
   LEAVE_CANCEL_RECORDID VARCHAR(50) COMMENT '���ټ�¼ID',
   LEAVESTARTDATE       DATETIME  COMMENT '��ٿ�ʼʱ��',
   LEAVEENDDATE         DATETIME  COMMENT '��ٽ���ʱ��',
   LEAVETYPEVALUE       NUMERIC(8,0) COMMENT '��������',
   PRIMARY KEY (RECORDID)
);

ALTER TABLE T_HR_LEAVEREFEROT COMMENT '�Ӱ���ٹ�ϵ��¼��';

/*==============================================================*/
/* Table: T_HR_LEAVETYPESET                                     */
/*==============================================================*/
CREATE TABLE T_HR_LEAVETYPESET
(
   LEAVETYPESETID       VARCHAR(50) NOT NULL COMMENT '�������ID',
   LEAVETYPENAME        VARCHAR(50) COMMENT '��������',
   LEAVETYPEVALUE       VARCHAR(50) COMMENT '����ֵ',
   ISFREELEAVEDAY       VARCHAR(1) COMMENT '�Ƿ��н��:0:��,1��,���Ǵ�н�ٵ�ʱ��Ӧ���д�н���ӱ��¼',
   MAXDAYS              NUMERIC(8,0) COMMENT '����������',
   FINETYPE             VARCHAR(1) COMMENT '1,����(��н��) 2���ۿ3������+�ۿ4������+��н�ٵֿ�+�ۿ',
   SEXRESTRICT          VARCHAR(1) COMMENT '�Ա����ƣ�0Ů��1�У�2����',
   POSTLEVELRESTRICT    VARCHAR(50) COMMENT '���ܵĸ�λ����ʲô��λ�������ϵ�����',
   ENTRYRESTRICT        VARCHAR(50) COMMENT '�Ƿ�ת�����������',
   OFFESTTYPE           VARCHAR(50) COMMENT '���ݷ�ʽ',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   PRIMARY KEY (LEAVETYPESETID)
);

ALTER TABLE T_HR_LEAVETYPESET COMMENT '����Ա���ļ���
������٣�ÿ�����ܵĲ���������
';

/*==============================================================*/
/* Table: T_HR_LEFTOFFICE                                       */
/*==============================================================*/
CREATE TABLE T_HR_LEFTOFFICE
(
   DIMISSIONID          VARCHAR(50) NOT NULL COMMENT '��ְ��¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   LEFTOFFICEDATE       DATETIME COMMENT '��ְʱ��',
   STOPPAYMENTDATE      DATETIME COMMENT 'ͣн����',
   LEFTOFFICECATEGORY   VARCHAR(50) COMMENT '��ְ���',
   LEFTOFFICEREASON     VARCHAR(500) COMMENT '��ְԭ��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   APPLYDATE            DATETIME COMMENT '����ʱ��',
   CONFIRMDATE          DATETIME COMMENT 'ȷ��ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ְ˵��',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   EMPLOYEEPOSTID       VARCHAR(50) COMMENT 'Ա����λ',
   ISAGENCY             VARCHAR(1) COMMENT '�Ƿ����:0�Ǵ���,1�����λ',
   PRIMARY KEY (DIMISSIONID)
);

ALTER TABLE T_HR_LEFTOFFICE COMMENT 'Ա����ְ��¼(δ��Ȩ��)';

/*==============================================================*/
/* Table: T_HR_LEFTOFFICECONFIRM                                */
/*==============================================================*/
CREATE TABLE T_HR_LEFTOFFICECONFIRM
(
   CONFIRMID            VARCHAR(50) NOT NULL COMMENT '��ְȷ��ID',
   DIMISSIONID          VARCHAR(50) COMMENT '��ְ��¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   STOPPAYMENTDATE      DATETIME COMMENT 'ͣн����',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   CONFIRMDATE          DATETIME COMMENT '��ְȷ��ʱ��',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   LEFTOFFICEDATE       DATETIME COMMENT '��ְʱ��',
   LEFTOFFICECATEGORY   VARCHAR(50) COMMENT '��ְ���',
   LEFTOFFICEREASON     VARCHAR(500) COMMENT '��ְԭ��',
   REMARK               VARCHAR(2000) COMMENT '��ְ˵��',
   EMPLOYEECNAME        VARCHAR(50) COMMENT 'Ա��������',
   APPLYDATE            DATETIME COMMENT '����ʱ��',
   EMPLOYEEPOSTID       VARCHAR(50) COMMENT 'Ա����λ',
   PRIMARY KEY (CONFIRMID)
);

ALTER TABLE T_HR_LEFTOFFICECONFIRM COMMENT 'Ա����ְȷ��(δ��Ȩ��)';

/*==============================================================*/
/* Table: T_HR_NOATTENDCARDEMPLOYEES                            */
/*==============================================================*/
CREATE TABLE T_HR_NOATTENDCARDEMPLOYEES
(
   NOATTENDCARDEMPLOYEESID VARCHAR(50) NOT NULL COMMENT 'Ա�����ڷ���ID',
   EMPLOYEENAME         VARCHAR(2000) COMMENT 'Ա������',
   EMPLOYEEID           VARCHAR(2000) COMMENT 'Ա��ID',
   ALWAYS               VARCHAR(50) COMMENT '0���� ��Ҫ�ʼ����ʱ�䣬1����',
   STARTDATE            DATETIME COMMENT '��Ч�ڿ�ʼʱ��',
   ENDDATE              DATETIME COMMENT '��Ч�ڽ���ʱ��',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   PRIMARY KEY (NOATTENDCARDEMPLOYEESID)
);

ALTER TABLE T_HR_NOATTENDCARDEMPLOYEES COMMENT '���Ա������';

/*==============================================================*/
/* Table: T_HR_ORGCHECKSUMMARY                                  */
/*==============================================================*/
CREATE TABLE T_HR_ORGCHECKSUMMARY
(
   ORGCHECKSUMMARYID    VARCHAR(50) NOT NULL,
   FATHERLID            VARCHAR(50),
   ISTOP                VARCHAR(50),
   ORDERNUMBER          NUMERIC(8,0),
   CHECKOBJTYPE         VARCHAR(1),
   CHECKOBJID           VARCHAR(50),
   CHECKMODELNAME       VARCHAR(500),
   PERFORMANCEGOAL      VARCHAR(2000),
   POINT                NUMERIC(8,0) COMMENT '���˷�ֵ����������ģ���ֶ����ã�����ģ�����Ȩ���Զ������',
   PERFORMYEAR          VARCHAR(50),
   PERFORMQUARTER       VARCHAR(50),
   PERFORMMOTH          VARCHAR(50),
   AVERAGE              NUMERIC(8,0),
   EXAMINEDATE          VARCHAR(50),
   EXAMINEPOINT         NUMERIC(8,0),
   LEADCOMMENT          VARCHAR(2000),
   CHECKSTATE           VARCHAR(1),
   REMARK               VARCHAR(2000),
   EDITSTATE            VARCHAR(1),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ORGCHECKSUMMARYID)
);

ALTER TABLE T_HR_ORGCHECKSUMMARY COMMENT '��֯����ģ����ܼ�¼';

/*==============================================================*/
/* Table: T_HR_ORGANIZATIONCHECKMODEL                           */
/*==============================================================*/
CREATE TABLE T_HR_ORGANIZATIONCHECKMODEL
(
   ORGCHECKMODELID      VARCHAR(50) NOT NULL,
   FATHERLID            VARCHAR(50),
   ISTOP                VARCHAR(50),
   ORDERNUMBER          NUMERIC(8,0),
   CHECKOBJTYPE         VARCHAR(1),
   CHECKOBJID           VARCHAR(50),
   CHECKMODELNAME       VARCHAR(500),
   PERFORMANCEGOAL      VARCHAR(2000),
   WEIGHING             NUMERIC(8,0),
   POINT                NUMERIC(8,0) COMMENT '���˷�ֵ����������ģ���ֶ����ã�����ģ�����Ȩ���Զ������',
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ORGCHECKMODELID)
);

ALTER TABLE T_HR_ORGANIZATIONCHECKMODEL COMMENT '��֯����ģ������';

/*==============================================================*/
/* Table: T_HR_OUTAPPLYCONFIRM                                  */
/*==============================================================*/
CREATE TABLE T_HR_OUTAPPLYCONFIRM
(
   OUTAPPLYCONFIRMID    VARCHAR(50) NOT NULL COMMENT '���ȷ��ID',
   OUTAPPLYID           VARCHAR(50) COMMENT '��������¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   STARTDATE            DATETIME COMMENT '���ȷ�Ͽ�ʼ����',
   ENDDATE              DATETIME COMMENT '���ȷ�Ͻ�������',
   OUTAPLLYTIMES        VARCHAR(50) COMMENT '���ʱ��',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   OUTREPORT            VARCHAR(2000) COMMENT '�������',
   ISCANCELED           VARCHAR(50) COMMENT '0 ��1 ��',
   CANCELREASON         VARCHAR(2000) COMMENT 'ȡ��ԭ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (OUTAPPLYCONFIRMID)
);

ALTER TABLE T_HR_OUTAPPLYCONFIRM COMMENT 'Ա���������ȷ��';

/*==============================================================*/
/* Table: T_HR_OUTAPPLYRECORD                                   */
/*==============================================================*/
CREATE TABLE T_HR_OUTAPPLYRECORD
(
   OUTAPPLYID           VARCHAR(50) NOT NULL COMMENT '��������¼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   OVERTIMECATE         VARCHAR(50) COMMENT '�Ӱ���Ч��ʽ
            0 ���ͨ���ļӰ����룻1 ��������ʱ�����Զ��ۼƣ�2 ���ڼ����ۼƣ�',
   STARTDATE            DATETIME COMMENT '�����ʼ����',
   ISSAMEDAYRETURN      VARCHAR(50) COMMENT '0 ��1 ��',
   ENDDATE              DATETIME COMMENT '�����������',
   OUTAPLLYTIMES        VARCHAR(2000) COMMENT '���ʱ��',
   ISCONFIRMED          VARCHAR(50) COMMENT '0����1 ��',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   REASON               VARCHAR(2000) COMMENT '�������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (OUTAPPLYID)
);

ALTER TABLE T_HR_OUTAPPLYRECORD COMMENT 'Ա����������¼';

/*==============================================================*/
/* Table: T_HR_OUTPLANDAYS                                      */
/*==============================================================*/
CREATE TABLE T_HR_OUTPLANDAYS
(
   OUTPLANDAYID         VARCHAR(50) NOT NULL COMMENT '��������ID',
   VACATIONID           VARCHAR(50) COMMENT '��������ID',
   OUTPLANNAME          VARCHAR(50) COMMENT '������������',
   STARTDATE            DATETIME COMMENT '��ʼ����',
   ENDDATE              DATETIME COMMENT '��������',
   DAYS                 NUMERIC(8,0) COMMENT '������������',
   DAYTYPE              VARCHAR(1) COMMENT '�����������,1 ���ڣ�2 ������',
   ISADJUSTLEAVE        VARCHAR(1) COMMENT '�Ƿ����',
   ISHALFDAY            VARCHAR(50) COMMENT '�Ƿ����ð��� 0  ��,1 ��',
   PEROID               VARCHAR(50) COMMENT '�������磺0 ����,1 ����',
   PRIMARY KEY (OUTPLANDAYID)
);

ALTER TABLE T_HR_OUTPLANDAYS COMMENT '��������';

/*==============================================================*/
/* Table: T_HR_OVERTIMEREWARD                                   */
/*==============================================================*/
CREATE TABLE T_HR_OVERTIMEREWARD
(
   OVERTIMEREWARDID     VARCHAR(50) NOT NULL COMMENT '�Ӱ౨��ID',
   OVERTIMEREWARDNAME   VARCHAR(50) COMMENT '�Ӱ౨����',
   USUALOVERTIMEPAYRATE NUMERIC(8,0) COMMENT 'ƽ���Ӱ౨�걶��',
   WEEKENDPAYRATE       NUMERIC(8,0) COMMENT '������ĩ�Ӱ౨�걶��',
   VACATIONPAYRATE      NUMERIC(8,0) COMMENT '�ڼ��ռӰ౨�걶��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (OVERTIMEREWARDID)
);

ALTER TABLE T_HR_OVERTIMEREWARD COMMENT '�Ӱ౨���#';

/*==============================================================*/
/* Table: T_HR_PERFORMANCEDETAIL                                */
/*==============================================================*/
CREATE TABLE T_HR_PERFORMANCEDETAIL
(
   PERFORMANCEDETAILID  VARCHAR(50) NOT NULL COMMENT '����ID',
   KPIRCORDID           VARCHAR(50) COMMENT 'KPI��¼ID',
   PERFORMANCEID        VARCHAR(50) COMMENT '���˼�¼ID',
   PRIMARY KEY (PERFORMANCEDETAILID)
);

ALTER TABLE T_HR_PERFORMANCEDETAIL COMMENT '��Ч��KPI��¼������';

/*==============================================================*/
/* Table: T_HR_PERFORMANCERECORD                                */
/*==============================================================*/
CREATE TABLE T_HR_PERFORMANCERECORD
(
   PERFORMANCEID        VARCHAR(50) NOT NULL COMMENT '���˿��˼�¼ID',
   SUMID                VARCHAR(50) COMMENT '��Ч���˼�¼ID',
   PERFORMANCESCORE     NUMERIC(8,0) COMMENT '���˵÷�',
   PERFORMANCEREMARK    VARCHAR(2000) COMMENT '��������',
   APPRAISEEID          VARCHAR(50) COMMENT '��������ID',
   PRIMARY KEY (PERFORMANCEID)
);

ALTER TABLE T_HR_PERFORMANCERECORD COMMENT '��Ч���˼�¼';

/*==============================================================*/
/* Table: T_HR_PERSONASSIGNSET                                  */
/*==============================================================*/
CREATE TABLE T_HR_PERSONASSIGNSET
(
   PERSONASSIGNSETID    VARCHAR(50) NOT NULL COMMENT '������²�����ID',
   ASSIGNCOMPANYID      VARCHAR(50) COMMENT '������²���˾ID',
   ASSIGNCOMPANYNAME    VARCHAR(200) COMMENT '������²���˾����',
   ASSIGNERID           VARCHAR(50) COMMENT '������²���Ա��ID',
   ASSIGNERNAME         VARCHAR(200) COMMENT '������²�������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   ISEXPIRED            VARCHAR(1) COMMENT '0:�����ڣ�1�����ڣ�',
   PERSONASSIGNSETNAME  VARCHAR(50) COMMENT '�����²���������',
   PRIMARY KEY (PERSONASSIGNSETID)
);

ALTER TABLE T_HR_PERSONASSIGNSET COMMENT '������²�����';

/*==============================================================*/
/* Table: T_HR_PENSIONALARMSET                                  */
/*==============================================================*/
CREATE TABLE T_HR_PENSIONALARMSET
(
   PENSIONSETID         VARCHAR(50) NOT NULL COMMENT '�籣��ĿID',
   COMPANYID            VARCHAR(50) COMMENT '�籣��˾',
   ALARMPAY             NUMERIC(38,0) COMMENT 'ÿ�¼������ѽ���',
   ALARMDOWN            NUMERIC(38,0) COMMENT 'ÿ�¼����������ض��˵�',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (PENSIONSETID)
);

ALTER TABLE T_HR_PENSIONALARMSET COMMENT '�籣��������(δ��Ȩ��)';

/*==============================================================*/
/* Table: T_HR_PENSIONDETAIL                                    */
/*==============================================================*/
CREATE TABLE T_HR_PENSIONDETAIL
(
   PENSIONDETAILID      VARCHAR(50) NOT NULL COMMENT '�籣��¼ID',
   PENSIONMASTERID      VARCHAR(50) COMMENT 'Ա���籣����ID',
   CARDID               VARCHAR(50) COMMENT '�籣����',
   PENSIONYEAR          NUMERIC(8,0) COMMENT '�籣���',
   PENSIONMOTH          NUMERIC(8,0) COMMENT '�籣�·�',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   COMPUTERNO           VARCHAR(50) COMMENT '�籣���Ժ�',
   PAYBASE              NUMERIC(8,0) COMMENT '�ɽ�����',
   TOTALCOST            NUMERIC(8,0) COMMENT '�����ܺϼ�',
   TOTALPERSONCOST      NUMERIC(8,0) COMMENT '���˽ɺϼ�',
   TOTALCOMPANYCOST     NUMERIC(8,0) COMMENT '��λ�ɺϼ�',
   PENSIONPERSONCOST    NUMERIC(8,0) COMMENT '���ϱ��ո��˽�',
   PENSIONCOMPANYCOST   NUMERIC(8,0) COMMENT '���ϱ��յ�λ��',
   HOUSINGFUNDCOMPANYCOST NUMERIC(8,0) COMMENT 'ס��������λ��',
   MEDICAREPERSONCOST   NUMERIC(8,0) COMMENT 'ҽ�Ʊ��ո��˽�',
   MEDICARECOMPANYCOST  NUMERIC(8,0) COMMENT 'ҽ�Ʊ��յ�λ��',
   INJURYINSURANCECOMPANYCOST NUMERIC(8,0) COMMENT '���˱��յ�λ��',
   UNEMPLOYEDINSURANCECOMPANYCOST NUMERIC(8,0) COMMENT 'ʧҵ���յ�λ��',
   BIRTHINSURANCECOMPANYCOST NUMERIC(8,0) COMMENT '�������յ�λ��',
   PAYDATE              DATETIME COMMENT '����ʱ��',
   COMPANYID            VARCHAR(500) COMMENT '���ɹ�˾',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   IDNUMBER             VARCHAR(50) COMMENT '���֤',
   PENSIONPERSONRATIO   NUMERIC(8,0) COMMENT '���ϱ��ո��˽ɱ���',
   PENSIONCOMPANYRATIO  NUMERIC(8,0) COMMENT '���ϱ��յ�λ�ɱ���',
   HOUSINGFUNDCOMPANYRATIO NUMERIC(8,0) COMMENT 'ס��������λ�ɱ���',
   HOUSINGFUNDPERSONCOST NUMERIC(8,0) COMMENT 'ס����������˽�',
   HOUSINGFUNDPERSONRATIO NUMERIC(8,0) COMMENT 'ס����������˽ɱ���',
   MEDICAREPERSONRATIO  NUMERIC(8,0) COMMENT 'ҽ�Ʊ��ո��˽ɱ���',
   MEDICARECOMPANYRATIO NUMERIC(8,0) COMMENT 'ҽ�Ʊ��յ�λ�ɱ���',
   INJURYINSURANCECOMPANYRATIO NUMERIC(8,0) COMMENT '���˱��յ�λ�ɱ���',
   INJURYINSURANCEPERSONCOST NUMERIC(8,0) COMMENT '���˱��ո��˽�',
   INJURYINSURANCEPERSONRATIO NUMERIC(8,0) COMMENT '���˱��ո��˽ɱ���',
   UNEMPLOYEDCOMPANYRATIO NUMERIC(8,0) COMMENT 'ʧҵ���յ�λ�ɱ���',
   UNEMPLOYEDPERSON     NUMERIC(8,0) COMMENT 'ʧҵ���ո��˽�',
   UNEMPLOYEDPERSONRATIO NUMERIC(8,0) COMMENT 'ʧҵ���ո��˽ɱ���',
   BIRTHCOMPANYRATIO    NUMERIC(8,0) COMMENT '�������յ�λ�ɱ���',
   BIRTHPERSONCOST      NUMERIC(8,0) COMMENT '�������ո��˽�',
   BIRTHPERSONRATIO     NUMERIC(8,0) COMMENT '�������ո��˽ɱ���',
   PENSIONBASE          NUMERIC(8,0) COMMENT '���Ͻɽ�����',
   INJURYBASE           NUMERIC(8,0) COMMENT '���˽ɽ�����',
   MEDICAREBASE         NUMERIC(8,0) COMMENT 'ҽ�ƽɽ�����',
   BIRTHBASE            NUMERIC(8,0) COMMENT '�����ɽ�����',
   UNEMPLOYEDBASE       NUMERIC(8,0) COMMENT 'ʧҵ�ɽ�����',
   HOUSINGFUNDBASE      NUMERIC(8,0) COMMENT 'ס��������ɽ�����',
   CADRECOMPANYCOST     NUMERIC(8,0) COMMENT '�ϸɲ���λ��',
   CADRECOMPANYRATIO    NUMERIC(8,0) COMMENT '�ϸɲ���λ����',
   SUBSIDYCOMPANYCOST   NUMERIC(8,0) COMMENT '������λ��',
   SUBSIDYCOMPANYRATIO  NUMERIC(8,0) COMMENT '������λ������',
   SUBSIDYPERSONCOST    NUMERIC(8,0) COMMENT '�������˽�',
   SUBSIDYPERSONRATIO   NUMERIC(8,0) COMMENT '�������˽�����',
   ISLOCAL              VARCHAR(10) COMMENT '�Ƿ񱾵ػ���',
   PRIMARY KEY (PENSIONDETAILID)
);

ALTER TABLE T_HR_PENSIONDETAIL COMMENT 'Ա���籣��¼#';

/*==============================================================*/
/* Table: T_HR_PENSIONMASTER                                    */
/*==============================================================*/
CREATE TABLE T_HR_PENSIONMASTER
(
   PENSIONMASTERID      VARCHAR(50) NOT NULL COMMENT 'Ա���籣����ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   CARDID               VARCHAR(50) COMMENT '�籣����',
   COMPUTERNO           VARCHAR(50) COMMENT '�籣���Ժ�',
   PENSIONCITY          VARCHAR(100) COMMENT '�籣���ڵس���',
   STARTDATE            DATETIME COMMENT '��ʼ����ʱ��',
   LASTDATE             DATETIME COMMENT '���һ�ν���ʱ��',
   ISVALID              VARCHAR(50) COMMENT '0 ��Ч
            1 ��Ч',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   SOCIALSERVICEYEAR    VARCHAR(50) COMMENT '���˾����',
   SOCIALSERVICEMONTH   VARCHAR(50) COMMENT '���˾����',
   SOCIALSERVICE        DATETIME COMMENT '�籣������ʼʱ��',
   PRIMARY KEY (PENSIONMASTERID)
);

ALTER TABLE T_HR_PENSIONMASTER COMMENT 'EmploymentSocialInsurance';

/*==============================================================*/
/* Table: T_HR_PERFORMANCEREWARDRECORD                          */
/*==============================================================*/
CREATE TABLE T_HR_PERFORMANCEREWARDRECORD
(
   PERFORMANCEREWARDRECORDID VARCHAR(50) NOT NULL COMMENT '��Ч�����¼ID',
   PERFORMANCESUM       NUMERIC(8,0) COMMENT '��Ч���',
   EMPLOYEEID           VARCHAR(50) NOT NULL COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   SALARYMONTH          VARCHAR(50) COMMENT '�����·�',
   SALARYYEAR           VARCHAR(50) COMMENT '�������',
   GENERATETYPE         VARCHAR(50) COMMENT '0�Զ����ɵģ�1�ֶ������',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PERFORMANCESCORE     NUMERIC(8,0) COMMENT '��Ч����',
   STARTDATE            DATETIME COMMENT '���˿�ʼ����',
   ENDDATE              DATETIME COMMENT '���˽�������',
   PRIMARY KEY (PERFORMANCEREWARDRECORDID)
);

ALTER TABLE T_HR_PERFORMANCEREWARDRECORD COMMENT '��Ч�����¼';

/*==============================================================*/
/* Table: T_HR_PERFORMANCEREWARDSET                             */
/*==============================================================*/
CREATE TABLE T_HR_PERFORMANCEREWARDSET
(
   PERFORMANCEREWARDSETID VARCHAR(50) NOT NULL COMMENT '��Ч����ID',
   PERFORMANCECATEGORY  VARCHAR(50) COMMENT '��Ч����',
   PERFORMANCECAPITAL   NUMERIC(8,0) COMMENT '��Чϵ��',
   CALCULATETYPE        VARCHAR(50) COMMENT '0�̶�ֵ��1����ֵ',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   PRIMARY KEY (PERFORMANCEREWARDSETID)
);

ALTER TABLE T_HR_PERFORMANCEREWARDSET COMMENT '��Ч��������';

/*==============================================================*/
/* Table: T_HR_POST                                             */
/*==============================================================*/
CREATE TABLE T_HR_POST
(
   POSTID               VARCHAR(50) NOT NULL,
   POSTDICTIONARYID     VARCHAR(50),
   COMPANYID            VARCHAR(50),
   DEPARTMENTID         VARCHAR(50),
   DEPARTMENTNAME       VARCHAR(100),
   POSTFUNCTION         VARCHAR(2000),
   POSTNUMBER           INT,
   POSTLEVEL            NUMERIC(8,0),
   POSTCOEFFICIENT      VARCHAR(50),
   SALARYLEVEL          NUMERIC(8,0),
   POSTGOAL             VARCHAR(500),
   FATHERPOSTID         VARCHAR(50),
   UNDERNUMBER          INT,
   PROMOTEDIRECTION     VARCHAR(50),
   CHANGEPOST           VARCHAR(50),
   CHECKSTATE           VARCHAR(1),
   EDITSTATE            VARCHAR(1),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   PRIMARY KEY (POSTID)
);

ALTER TABLE T_HR_POST COMMENT '��λ#';

/*==============================================================*/
/* Table: T_HR_POSTDICTIONARY                                   */
/*==============================================================*/
CREATE TABLE T_HR_POSTDICTIONARY
(
   POSTDICTIONARYID     VARCHAR(50) NOT NULL COMMENT '��λ�ֵ�ID',
   DEPARTMENTDICTIONARYID VARCHAR(50) COMMENT '�����ֵ�ID',
   POSTCODE             VARCHAR(50) COMMENT '��λ���',
   POSTNAME             VARCHAR(50) COMMENT '��λ����',
   POSTFUNCTION         VARCHAR(2000) COMMENT '��λְ��',
   POSTLEVEL            NUMERIC(8,0) COMMENT '��λ����',
   SALARYLEVEL          VARCHAR(50) COMMENT 'н�ʵȼ�',
   PROMOTEDIRECTION     VARCHAR(50) COMMENT '��������',
   CHANGEPOST           VARCHAR(50) COMMENT '�ֻ���λ',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   EDITSTATE            VARCHAR(50) COMMENT '�༭״̬',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   PRIMARY KEY (POSTDICTIONARYID)
);

ALTER TABLE T_HR_POSTDICTIONARY COMMENT '��λ�ֵ�';

/*==============================================================*/
/* Table: T_HR_POSTHISTORY                                      */
/*==============================================================*/
CREATE TABLE T_HR_POSTHISTORY
(
   RECORDSID            VARCHAR(50) NOT NULL COMMENT '��¼ID',
   POSTDICTIONARYID     VARCHAR(50) COMMENT '��λ�ֵ�ID',
   POSTID               VARCHAR(50) COMMENT '��λID',
   DEPARTMENTID         VARCHAR(50) COMMENT '����ID',
   DEPARTMENTNAME       VARCHAR(100) COMMENT '��������',
   COMPANYID            VARCHAR(100) COMMENT '��˾����',
   POSTFUNCTION         VARCHAR(2000) COMMENT '��λְ��',
   POSTNUMBER           NUMERIC(38,0) COMMENT '��Ա����',
   POSTGOAL             VARCHAR(100) COMMENT '��λĿ��',
   CHECKUSER            VARCHAR(50) COMMENT '�����',
   FATHERPOSTID         VARCHAR(50) COMMENT 'ֱ���ϼ�',
   UNDERNUMBER          NUMERIC(38,0) COMMENT '��������',
   PROMOTEDIRECTION     VARCHAR(100) COMMENT '��������',
   CHANGEPOST           VARCHAR(50) COMMENT '�ֻ���λ',
   EDITSTATE            VARCHAR(50) COMMENT '�༭״̬',
   REUSEDATE            DATETIME COMMENT '��Чʱ��',
   CANCELDATE           DATETIME COMMENT '����ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   POSTLEVEL            NUMERIC(8,0) COMMENT '��λ����',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   POSTCOEFFICIENT      VARCHAR(50) COMMENT '��λϵ��',
   PRIMARY KEY (RECORDSID)
);

ALTER TABLE T_HR_POSTHISTORY COMMENT '��λ��ʷ��¼#';

/*==============================================================*/
/* Table: T_HR_POSTLEVELDISTINCTION                             */
/*==============================================================*/
CREATE TABLE T_HR_POSTLEVELDISTINCTION
(
   POSTLEVELID          VARCHAR(50) NOT NULL COMMENT '��λְ��ID',
   SALARYSYSTEMID       VARCHAR(50) COMMENT 'н����ϵ��ID',
   BASICSALARY          NUMERIC(8,0) COMMENT '����н��',
   LEVELBALANCE         NUMERIC(8,0) COMMENT '�����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   POSTLEVEL            NUMERIC(8,0) COMMENT '��λ�ȼ�',
   PRIMARY KEY (POSTLEVELID)
);

ALTER TABLE T_HR_POSTLEVELDISTINCTION COMMENT '��λְ����';

/*==============================================================*/
/* Table: T_HR_RAMDONGROUPPERSON                                */
/*==============================================================*/
CREATE TABLE T_HR_RAMDONGROUPPERSON
(
   GROUPPERSONID        VARCHAR(50) NOT NULL COMMENT '����ID',
   RANDOMGROUPID        VARCHAR(50) COMMENT '�����ID',
   PERSONID             VARCHAR(50) COMMENT '��ԱID',
   PRIMARY KEY (GROUPPERSONID)
);

ALTER TABLE T_HR_RAMDONGROUPPERSON COMMENT '�������Ա';

/*==============================================================*/
/* Table: T_HR_RANDOMGROUP                                      */
/*==============================================================*/
CREATE TABLE T_HR_RANDOMGROUP
(
   RANDOMGROUPID        VARCHAR(50) NOT NULL COMMENT '�����ID',
   RANDOMGROUPNAME      VARCHAR(50) COMMENT '���������',
   GROUPCOUNT           NUMERIC(8,0) COMMENT '���������',
   GROUPREMARK          VARCHAR(2000) COMMENT '�����˵��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (RANDOMGROUPID)
);

ALTER TABLE T_HR_RANDOMGROUP COMMENT '�����';

/*==============================================================*/
/* Table: T_HR_RELATIONPOST                                     */
/*==============================================================*/
CREATE TABLE T_HR_RELATIONPOST
(
   RECORDID             VARCHAR(50) NOT NULL,
   RELATIONPOSTID       VARCHAR(50) NOT NULL COMMENT '������ID',
   POSTID               VARCHAR(50) COMMENT '��λID',
   RELATEPOSTID         VARCHAR(50) COMMENT '������λID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (RELATIONPOSTID, RECORDID)
);

ALTER TABLE T_HR_RELATIONPOST COMMENT '������λ��';

/*==============================================================*/
/* Table: T_HR_RESUME                                           */
/*==============================================================*/
CREATE TABLE T_HR_RESUME
(
   RESUMEID             VARCHAR(50) NOT NULL COMMENT '����id',
   WISHCOMPANY          VARCHAR(300) COMMENT '����˾',
   WISHPOST             VARCHAR(100) COMMENT '�����λ',
   WISHAREA             VARCHAR(100) COMMENT '�������',
   NAME                 VARCHAR(50) COMMENT '����',
   SEX                  VARCHAR(10) COMMENT '�Ա�',
   NATION               VARCHAR(50) COMMENT '����',
   PROVINCE             VARCHAR(100) COMMENT '����',
   HEIGHT               VARCHAR(50) COMMENT '���',
   MARRIAGE             VARCHAR(1) COMMENT '����״��',
   IDCARDNUMBER         VARCHAR(50) COMMENT '���֤����',
   POLITICS             VARCHAR(100) COMMENT '������ò',
   REGRESIDENCE         VARCHAR(200) COMMENT '�������ڵ�',
   EMAIL                VARCHAR(50) COMMENT '�����ʼ�',
   MOBILE               VARCHAR(50) COMMENT '�ֻ�����',
   CURRENTADRESS        VARCHAR(100) COMMENT 'Ŀǰ��ס��',
   URGENCYPERSON        VARCHAR(50) COMMENT '������ϵ��',
   URGENCYCONTACT       VARCHAR(100) COMMENT '������ϵ��ʽ',
   FAMILYADDRESS        VARCHAR(100) COMMENT '��ͥ��ϸ��ַ',
   FAMILYZIPCODE        VARCHAR(100) COMMENT '��ͥ��������',
   PHOTO                LONGBLOB COMMENT '��Ƭ',
   TIPTOPEDUCATION      VARCHAR(100) COMMENT '���ѧ��',
   EXPECTATIONSALARY    VARCHAR(50) COMMENT '����н��',
   HAVECOMRELATION      VARCHAR(10) COMMENT '�Ƿ�������',
   COMRELATIONINFO      VARCHAR(100) COMMENT '������˾��Ϣ',
   SELFAPPRAISE         VARCHAR(300) COMMENT '��������',
   SCHOOLENCOURAGE      VARCHAR(500) COMMENT 'У�ڽ���',
   OUTENCOURAGE         VARCHAR(500) COMMENT 'У�⽱��',
   GRADUATESCHOOL       VARCHAR(100) COMMENT '��ҵѧУ',
   SPECIALTY            VARCHAR(300) COMMENT '��ѧרҵ',
   ENGLISHLEVEL         VARCHAR(20) COMMENT 'Ӣ��ˮƽ',
   MAJORS               VARCHAR(500) COMMENT '���޿γ�',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   GRADUATIONDATE       DATETIME COMMENT '��ҵʱ��',
   PRIMARY KEY (RESUMEID)
);

ALTER TABLE T_HR_RESUME COMMENT '������';

/*==============================================================*/
/* Table: T_HR_SALARYANDREWARDSUMMARYRD                         */
/*==============================================================*/
CREATE TABLE T_HR_SALARYANDREWARDSUMMARYRD
(
   RECORDID             VARCHAR(50) NOT NULL COMMENT 'ͳ�Ƽ�¼ID',
   COMPANYID            VARCHAR(50) NOT NULL COMMENT '��˾ID',
   COMPANYNAME          VARCHAR(50) COMMENT '��˾����',
   BALANCEYEAR          VARCHAR(50) COMMENT 'ͳ�����',
   BALANCEMONTH         VARCHAR(50) COMMENT 'ͳ���·�',
   TOTALSUM             NUMERIC(8,0) COMMENT 'ͳ�ƽ��',
   GENERATETYPE         VARCHAR(50) COMMENT '0�Զ����ɵģ�1�ֶ������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (RECORDID)
);

ALTER TABLE T_HR_SALARYANDREWARDSUMMARYRD COMMENT 'н�ʼ������ɱ�(�籣)ͳ�Ƽ�¼';

/*==============================================================*/
/* Table: T_HR_SALARYSOLUTIONSTANDARD                           */
/*==============================================================*/
CREATE TABLE T_HR_SALARYSOLUTIONSTANDARD
(
   SOLUTIONSTANDARDID   VARCHAR(50) NOT NULL COMMENT 'н�ʷ�����׼ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   SALARYSOLUTIONID     VARCHAR(50) COMMENT 'н�ʷ���ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (SOLUTIONSTANDARDID)
);

ALTER TABLE T_HR_SALARYSOLUTIONSTANDARD COMMENT 'н�ʷ�����׼��ɾ����';

/*==============================================================*/
/* Table: T_HR_SCORETYPE                                        */
/*==============================================================*/
CREATE TABLE T_HR_SCORETYPE
(
   SCORETYPEID          VARCHAR(50) NOT NULL COMMENT '���ַ�ʽID',
   RANDOMGROUPID        VARCHAR(50) COMMENT '�����ID',
   ISSYSTEMSCORE        VARCHAR(1) COMMENT '�Ƿ�ϵͳ����',
   SYSTEMWEIGHT         NUMERIC(8,0) COMMENT 'ϵͳ����Ȩ��',
   ISMANUALSCORE        VARCHAR(1) COMMENT '�Ƿ��ֶ�����',
   MANUALWEIGHT         NUMERIC(8,0) COMMENT '�ֶ�����Ȩ��',
   ISRANDOMSCORE        VARCHAR(1) COMMENT '�Ƿ�����',
   RANDOMWEIGHT         NUMERIC(8,0) COMMENT '���Ȩ��',
   COUNTUNIT            NUMERIC(8,0) COMMENT '����ĵ�λ����',
   ADDSCORE             NUMERIC(8,0) COMMENT '��ǰ��λ�����ӷ�',
   REDUCESCORE          NUMERIC(8,0) COMMENT '�Ӻ�λ��������',
   MAXSCORE             NUMERIC(8,0) COMMENT '��������',
   MINSCORE             NUMERIC(8,0) COMMENT '��������',
   INITIALPOINT         NUMERIC(8,0) COMMENT '�Ʒֵ�����',
   INITIALSCORE         NUMERIC(8,0) COMMENT 'ԭʼ�Ʒ�:����Ϊ�������Կ��˵㼤����n��Ϊ�Ʒ�ԭ�㣬�ڴ˻����ϼ������ʱ����ǰ�˶�������Ӻ��˶����졣',
   INITAILSCORE         NUMERIC(8,0) COMMENT '����Ϊ�������Կ��˵㼤����n��Ϊ�Ʒ�ԭ�㣬�ڴ˻����ϼ������ʱ����ǰ�˶�������Ӻ��˶����졣',
   LATERUNIT            NUMERIC(8,0) COMMENT '�ӳ�Сʱ��',
   PRIMARY KEY (SCORETYPEID)
);

ALTER TABLE T_HR_SCORETYPE COMMENT '���ַ�ʽ';

/*==============================================================*/
/* Table: T_HR_SUMPERFORMANCERECORD                             */
/*==============================================================*/
CREATE TABLE T_HR_SUMPERFORMANCERECORD
(
   SUMID                VARCHAR(50) NOT NULL COMMENT '��Ч���˼�¼ID',
   SUMPERSONID          VARCHAR(50) COMMENT '������ԱID',
   REVIEWERID           VARCHAR(50) COMMENT '�����ԱID',
   SUMNAME              VARCHAR(200) COMMENT '��Ч��������',
   SUMSTART             DATETIME COMMENT '���˿�ʼʱ��',
   SUMEND               DATETIME COMMENT '���˽���ʱ��',
   SUMCOUNT             NUMERIC(8,0) COMMENT '��������',
   SUMSCORE             NUMERIC(8,0) COMMENT '���˵÷�',
   SUMREMARK            VARCHAR(2000) COMMENT '����˵��',
   SUMTYPE              VARCHAR(1) COMMENT '1.���̣�2.����',
   SUMDATE              DATETIME COMMENT '����ʱ��',
   BASEMONEY            NUMERIC(8,0) COMMENT '�������',
   CHECKSTATE           VARCHAR(1) COMMENT '0��û����ˣ�1��������ˣ�2�����ͨ����3����˲�ͨ����',
   REVIEWREMARK         VARCHAR(2000) COMMENT '�������',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   SUMDEPTID            VARCHAR(50) COMMENT '���ܲ���ID',
   AWARDTYPE            VARCHAR(1) COMMENT '��������',
   PRIMARY KEY (SUMID)
);

ALTER TABLE T_HR_SUMPERFORMANCERECORD COMMENT '��Ч���˻��ܼ�¼';

/*==============================================================*/
/* Table: T_HR_SALARYARCHIVE                                    */
/*==============================================================*/
CREATE TABLE T_HR_SALARYARCHIVE
(
   SALARYARCHIVEID      VARCHAR(50) NOT NULL COMMENT 'н�ʵ���ID',
   SALARYSOLUTIONID     VARCHAR(50) COMMENT 'н�ʷ���ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   BASESALARY           NUMERIC(8,0) COMMENT '��������',
   POSTSALARY           NUMERIC(8,0) COMMENT '��λ����',
   SECURITYALLOWANCE    NUMERIC(8,0) COMMENT '���ܽ���',
   HOUSINGALLOWANCE     NUMERIC(8,0) COMMENT 'ס������',
   AREADIFALLOWANCE     NUMERIC(8,0) COMMENT '�������첹��',
   FOODALLOWANCE        NUMERIC(8,0) COMMENT '�ͷѲ���',
   OTHERADDDEDUCT       NUMERIC(8,0) COMMENT '�����ӿۿ�',
   OTHERADDDEDUCTDESC   VARCHAR(2000) COMMENT '�ӿۿ�˵��',
   HOUSINGALLOWANCEDEDUCT NUMERIC(8,0) COMMENT 'ס�������ۿ�',
   PERSONALSIRATIO      NUMERIC(8,0) COMMENT '�����籣��',
   PERSONALINCOMERATIO  NUMERIC(8,0) COMMENT '��������˰��',
   OTHERSUBJOIN         NUMERIC(8,0) COMMENT '�������ۿ�',
   OTHERSUBJOINDESC     VARCHAR(50) COMMENT '����˵��',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '������',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λ',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   SALARYSOLUTIONNAME   VARCHAR(500) COMMENT 'н�ʷ�������',
   OVERYEAR             NUMERIC(8,0) COMMENT '��ֹ���',
   OVERMONTH            NUMERIC(8,0) COMMENT '��ֹ�·�',
   POSTLEVEL            NUMERIC(8,0) COMMENT '��λ����',
   SALARYLEVEL          NUMERIC(8,0) COMMENT 'н�ʼ���',
   BALANCE              NUMERIC(8,0) COMMENT '���',
   OLDPOSTLEVEL         NUMERIC(8,0) COMMENT '�춯ǰ��λ����',
   OLDSALARYLEVEL       NUMERIC(8,0) COMMENT '�춯ǰн�ʼ���',
   PAYCOMPANY           VARCHAR(50) COMMENT '��н��˾',
   EMPLOYEEPOSTID       VARCHAR(50) COMMENT '��λ����ID',
   ATTENDANCEORGID      VARCHAR(50) COMMENT '���ڻ���ID',
   ATTENDANCEORGNAME    VARCHAR(100) COMMENT '���ڻ�������',
   BALANCEPOSTID        VARCHAR(50) COMMENT '�����λID',
   BALANCEPOSTNAME      VARCHAR(300) COMMENT '�����λ����',
   SKILLPOSTLEVEL       VARCHAR(50) COMMENT '�¼��ܸ�λ����',
   SKILLSALARYLEVEL     VARCHAR(50) COMMENT '�¼���н�ʼ���',
   PRIMARY KEY (SALARYARCHIVEID)
);

ALTER TABLE T_HR_SALARYARCHIVE COMMENT 'н�ʵ���';

/*==============================================================*/
/* Table: T_HR_SALARYARCHIVEHIS                                 */
/*==============================================================*/
CREATE TABLE T_HR_SALARYARCHIVEHIS
(
   SALARYARCHIVEID      VARCHAR(50) NOT NULL COMMENT 'н�ʵ���ID',
   SALARYSOLUTIONID     VARCHAR(50) NOT NULL COMMENT 'н�ʷ���ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   BASESALARY           NUMERIC(8,0) COMMENT '��������',
   POSTSALARY           NUMERIC(8,0) COMMENT '��λ����',
   SECURITYALLOWANCE    NUMERIC(8,0) COMMENT '���ܽ���',
   HOUSINGALLOWANCE     NUMERIC(8,0) COMMENT 'ס������',
   AREADIFALLOWANCE     NUMERIC(8,0) COMMENT '�������첹��',
   FOODALLOWANCE        NUMERIC(8,0) COMMENT '�ͷѲ���',
   OTHERADDDEDUCT       NUMERIC(8,0) COMMENT '�����ӿۿ�',
   OTHERADDDEDUCTDESC   VARCHAR(50) COMMENT '�ӿۿ�˵��',
   HOUSINGALLOWANCEDEDUCT NUMERIC(8,0) COMMENT 'ס�������ۿ�',
   PERSONALSIRATIO      NUMERIC(8,0) COMMENT '�����籣��',
   PERSONALINCOMERATIO  NUMERIC(8,0) COMMENT '��������˰��',
   OTHERSUBJOIN         NUMERIC(8,0) COMMENT '�������ۿ�',
   OTHERSUBJOINDESC     VARCHAR(50) COMMENT '����˵��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   SALARYSOLUTIONNAME   VARCHAR(50) COMMENT 'н�ʷ�����',
   POSTLEVEL            NUMERIC(8,0) COMMENT '��λ����',
   SALARYLEVEL          NUMERIC(8,0) COMMENT 'н�ʼ���',
   BALANCE              NUMERIC(8,0) COMMENT '���',
   PRIMARY KEY (SALARYARCHIVEID)
);

ALTER TABLE T_HR_SALARYARCHIVEHIS COMMENT 'н�ʵ�����ʷ';

/*==============================================================*/
/* Table: T_HR_SALARYARCHIVEHISITEM                             */
/*==============================================================*/
CREATE TABLE T_HR_SALARYARCHIVEHISITEM
(
   SALARYARCHIVEITEMID  VARCHAR(50) NOT NULL COMMENT 'н�ʵ���н����ID',
   SALARYARCHIVEID      VARCHAR(50) COMMENT 'н�ʵ���ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   SALARYITEMID         VARCHAR(50) COMMENT 'н����ID',
   CALCULATEFORMULA     VARCHAR(2000) COMMENT '���㹫ʽ',
   CALCULATEFORMULACODE VARCHAR(2000) COMMENT '���㹫ʽ����',
   SUM                  VARCHAR(2000) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   ORDERNUMBER          NUMERIC(8,0) COMMENT '�����',
   PRIMARY KEY (SALARYARCHIVEITEMID)
);

ALTER TABLE T_HR_SALARYARCHIVEHISITEM COMMENT 'н�ʵ�����ʷн����(#)';

/*==============================================================*/
/* Table: T_HR_SALARYARCHIVEITEM                                */
/*==============================================================*/
CREATE TABLE T_HR_SALARYARCHIVEITEM
(
   SALARYARCHIVEITEM    VARCHAR(50) NOT NULL COMMENT 'н�ʵ���н����ID',
   SALARYARCHIVEITEMID  VARCHAR(50) NOT NULL,
   SALARYARCHIVEID      VARCHAR(50) COMMENT 'н�ʵ���ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   SALARYITEMID         VARCHAR(50) COMMENT 'н����ID',
   CALCULATEFORMULA     VARCHAR(2000) COMMENT '���㹫ʽ',
   CALCULATEFORMULACODE VARCHAR(2000) COMMENT '���㹫ʽ����',
   SUM                  VARCHAR(2000) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   ORDERNUMBER          NUMERIC(8,0) COMMENT '�����',
   PRIMARY KEY (SALARYARCHIVEITEM, SALARYARCHIVEITEMID)
);

ALTER TABLE T_HR_SALARYARCHIVEITEM COMMENT 'н�ʵ���н����(#)';

/*==============================================================*/
/* Table: T_HR_SALARYITEM                                       */
/*==============================================================*/
CREATE TABLE T_HR_SALARYITEM
(
   SALARYITEMID         VARCHAR(50) NOT NULL COMMENT 'н����ID',
   SALARYITEMCODE       VARCHAR(50) COMMENT 'н����Code',
   SALARYITEMNAME       VARCHAR(50) COMMENT 'н��������',
   SALARYITEMTYPE       VARCHAR(50) COMMENT '����������:��н��,������,��Ч��.',
   CALCULATORTYPE       VARCHAR(50) COMMENT '1���ֹ�¼�� ��
            2��н�ʵ��������룻
            3�����㹫ʽ��',
   CALCULATEFORMULA     VARCHAR(2000) COMMENT '���㹫ʽ',
   CALCULATEFORMULACODE VARCHAR(2000) COMMENT '���㹫ʽ����',
   GUERDONSUM           NUMERIC(8,0) COMMENT '���',
   ENTITYNAME           VARCHAR(50) COMMENT '��Ӧ��ʵ����',
   ENTITYCODE           VARCHAR(50) COMMENT '��Ӧ��ʵ�����',
   ENTITYCOLUMNNAME     VARCHAR(100) COMMENT '��Ӧ��ʵ���ֶ���',
   ENTITYCOLUMNCODE     VARCHAR(100) COMMENT '��Ӧ��ʵ���ֶα���',
   ISAUTOGENERATE       VARCHAR(1) COMMENT 'н������ʱ����ֵ',
   MUSTSELECTED         VARCHAR(1) COMMENT 'н�ʱ�׼��ѡ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (SALARYITEMID)
);

ALTER TABLE T_HR_SALARYITEM COMMENT 'н�ʼ���������(#)';

/*==============================================================*/
/* Table: T_HR_SALARYLEVEL                                      */
/*==============================================================*/
CREATE TABLE T_HR_SALARYLEVEL
(
   SALARYLEVELID        VARCHAR(50) NOT NULL COMMENT 'н�ʵȼ�ID',
   POSTLEVELID          VARCHAR(50) COMMENT '��λְ��ID',
   SALARYLEVEL          VARCHAR(50) COMMENT 'н�ʵȼ�',
   SALARYSUM            NUMERIC(8,0) COMMENT 'н�ʽ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (SALARYLEVELID)
);

ALTER TABLE T_HR_SALARYLEVEL COMMENT 'н�ʵȼ���';

/*==============================================================*/
/* Table: T_HR_SALARYRECORDBATCH                                */
/*==============================================================*/
CREATE TABLE T_HR_SALARYRECORDBATCH
(
   MONTHLYBATCHID       VARCHAR(50) NOT NULL COMMENT '�¶���������ID',
   BALANCEYEAR          NUMERIC(8,0) COMMENT '�������',
   BALANCEMONTH         NUMERIC(8,0) COMMENT '�����·�',
   BALANCEDATE          DATETIME COMMENT '��������',
   BALANCEOBJECTTYPE    VARCHAR(1) COMMENT '�����������',
   BALANCEOBJECTID      VARCHAR(50) COMMENT '�������Id',
   BALANCEOBJECTNAME    VARCHAR(500) COMMENT '���������',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (MONTHLYBATCHID)
);

ALTER TABLE T_HR_SALARYRECORDBATCH COMMENT 'н�ʼ�¼������˱�';

/*==============================================================*/
/* Table: T_HR_SALARYSOLUTION                                   */
/*==============================================================*/
CREATE TABLE T_HR_SALARYSOLUTION
(
   SALARYSOLUTIONID     VARCHAR(50) NOT NULL COMMENT 'н�ʷ���ID',
   AREADIFFERENCEID     VARCHAR(50) COMMENT '��������ID',
   SALARYSYSTEMID       VARCHAR(50) COMMENT 'н����ϵ��ID',
   SALARYSOLUTIONNAME   VARCHAR(500) COMMENT 'н�ʷ�����',
   SALARYCOUNTDAY       VARCHAR(50) COMMENT 'н�ʽ�����',
   SALARYCOUNTALERTDAY  VARCHAR(50) COMMENT '������������',
   PAYDAY               VARCHAR(50) COMMENT 'н�ʷ�����',
   BANKNAME             VARCHAR(50) COMMENT 'н������',
   BANKACCOUNTNO        VARCHAR(50) COMMENT 'н�������ʺ�',
   PAYTYPE              VARCHAR(50) COMMENT '0���д�����1�ֽ������������Ĭ�����õ�',
   PAYALERTDAY          VARCHAR(50) COMMENT '������������',
   SALARYPRECISION      VARCHAR(50) COMMENT 'н�ʾ���',
   TAXESBASIC           NUMERIC(8,0) COMMENT '��˰����',
   TAXESCOSTRATE        NUMERIC(8,0) COMMENT '��˰ϵ��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   MINIMUMSALARY        VARCHAR(2000) COMMENT '��͹���',
   PRIMARY KEY (SALARYSOLUTIONID)
);

ALTER TABLE T_HR_SALARYSOLUTION COMMENT 'н�ʷ���';

/*==============================================================*/
/* Table: T_HR_SALARYSOLUTIONASSIGN                             */
/*==============================================================*/
CREATE TABLE T_HR_SALARYSOLUTIONASSIGN
(
   SALARYSOLUTIONASSIGNID VARCHAR(50) NOT NULL COMMENT 'н�ʷ���Ӧ��ID',
   ASSIGNEDOBJECTID     VARCHAR(50) COMMENT '�������ID',
   ASSIGNEDOBJECTTYPE   VARCHAR(50) COMMENT '����������',
   SALARYSOLUTIONID     VARCHAR(50) COMMENT 'н�ʷ���ID',
   STARTDATE            VARCHAR(50) COMMENT '��Ч�ڿ�ʼʱ��',
   ENDDATE              VARCHAR(50) COMMENT '��Ч�ڽ���ʱ��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (SALARYSOLUTIONASSIGNID)
);

ALTER TABLE T_HR_SALARYSOLUTIONASSIGN COMMENT 'н�ʷ���Ӧ��';

/*==============================================================*/
/* Table: T_HR_SALARYSOLUTIONITEM                               */
/*==============================================================*/
CREATE TABLE T_HR_SALARYSOLUTIONITEM
(
   SOLUTIONITEMID       VARCHAR(50) NOT NULL COMMENT 'н�ʷ���н����ID',
   SALARYITEMID         VARCHAR(50) COMMENT 'н����ID',
   SALARYSOLUTIONID     VARCHAR(50) COMMENT 'н�ʷ���ID',
   ORDERNUMBER          NUMERIC(8,0) COMMENT '�����',
   PRIMARY KEY (SOLUTIONITEMID)
);

ALTER TABLE T_HR_SALARYSOLUTIONITEM COMMENT 'н�ʷ���н����(#)';

/*==============================================================*/
/* Table: T_HR_SALARYSTANDARD                                   */
/*==============================================================*/
CREATE TABLE T_HR_SALARYSTANDARD
(
   SALARYSTANDARDID     VARCHAR(50) NOT NULL COMMENT 'н�ʱ�׼ID',
   SALARYSOLUTIONID     VARCHAR(50) COMMENT 'н�ʷ���ID',
   SALARYSTANDARDNAME   VARCHAR(200) COMMENT 'н�ʱ�׼����',
   BASESALARY           NUMERIC(8,0) COMMENT '������λн��',
   SALARYLEVELID        VARCHAR(50) COMMENT 'н�ʵȼ�ID',
   POSTSALARY           NUMERIC(8,0) COMMENT '��λ����',
   SECURITYALLOWANCE    NUMERIC(8,0) COMMENT '���ܽ���',
   HOUSINGALLOWANCE     NUMERIC(8,0) COMMENT 'ס������',
   AREADIFALLOWANCE     NUMERIC(8,0) COMMENT '�������첹��',
   FOODALLOWANCE        NUMERIC(8,0) COMMENT '�ͷѲ���',
   OTHERADDDEDUCT       NUMERIC(8,0) COMMENT '�����ӿۿ�',
   OTHERADDDEDUCTDESC   VARCHAR(200) COMMENT '�ӿۿ�˵��',
   HOUSINGALLOWANCEDEDUCT NUMERIC(8,0) COMMENT 'ס�������ۿ�',
   PERSONALSIRATIO      NUMERIC(8,0) COMMENT '�����籣��',
   PERSONALINCOMERATIO  NUMERIC(8,0) COMMENT '��������˰��',
   OTHERSUBJOIN         NUMERIC(8,0) COMMENT '�������ۿ�',
   OTHERSUBJOINDESC     VARCHAR(50) COMMENT '����˵��',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   ORDERNUM             NUMERIC(8,0) COMMENT '�����',
   PRIMARY KEY (SALARYSTANDARDID)
);

ALTER TABLE T_HR_SALARYSTANDARD COMMENT 'н�ʱ�׼';

/*==============================================================*/
/* Index: IDX_SALAIDID                                          */
/*==============================================================*/
CREATE INDEX IDX_SALAIDID ON T_HR_SALARYSTANDARD
(
   SALARYLEVELID,
   SALARYSOLUTIONID
);

/*==============================================================*/
/* Table: T_HR_SALARYSTANDARDITEM                               */
/*==============================================================*/
CREATE TABLE T_HR_SALARYSTANDARDITEM
(
   STANDRECORDITEMID    VARCHAR(50) NOT NULL COMMENT 'н�ʱ�׼н����ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   SALARYITEMID         VARCHAR(50) COMMENT 'н����ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   ORDERNUMBER          NUMERIC(8,0) COMMENT '�����',
   SUM                  VARCHAR(2000) COMMENT '���',
   PRIMARY KEY (STANDRECORDITEMID)
);

ALTER TABLE T_HR_SALARYSTANDARDITEM COMMENT 'н�ʱ�׼н����(#)';

/*==============================================================*/
/* Table: T_HR_SALARYSYSTEM                                     */
/*==============================================================*/
CREATE TABLE T_HR_SALARYSYSTEM
(
   SALARYSYSTEMID       VARCHAR(50) NOT NULL COMMENT 'н����ϵ��ID',
   SALARYSYSTEMNAME     VARCHAR(200) COMMENT 'н����ϵ����',
   CHECKSTATE           VARCHAR(1) COMMENT '���״̬',
   EDITSTATE            VARCHAR(1) COMMENT '�༭״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   STARTSALARYLEVEL     NUMERIC(8,0) COMMENT '��ʼн�ʼ���',
   ENDSALARYLEVEL       NUMERIC(8,0) COMMENT '����н�ʼ���',
   PRIMARY KEY (SALARYSYSTEMID)
);

ALTER TABLE T_HR_SALARYSYSTEM COMMENT 'н����ϵ��';

/*==============================================================*/
/* Table: T_HR_SALARYTAXES                                      */
/*==============================================================*/
CREATE TABLE T_HR_SALARYTAXES
(
   SALARYTAXESID        VARCHAR(50) NOT NULL COMMENT 'н��˰��ID',
   SALARYSOLUTIONID     VARCHAR(50) COMMENT 'н�ʷ���ID',
   TAXESSUM             NUMERIC(8,0) COMMENT '˰�����',
   TAXESRATE            NUMERIC(8,0) COMMENT '˰��˰��',
   CALCULATEDEDUCT      NUMERIC(8,0) COMMENT '����۳�',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   MINITAXESSUM         NUMERIC(8,0) COMMENT '��С˰�����',
   PRIMARY KEY (SALARYTAXESID)
);

ALTER TABLE T_HR_SALARYTAXES COMMENT 'н��˰��';

/*==============================================================*/
/* Table: T_HR_SAMPLETABLE                                      */
/*==============================================================*/
CREATE TABLE T_HR_SAMPLETABLE
(
   SAMPLETABLEID        VARCHAR(50) NOT NULL COMMENT '����ID',
   EMPLOYEEID           VARCHAR(50) COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (SAMPLETABLEID)
);

ALTER TABLE T_HR_SAMPLETABLE COMMENT 'ʾ������';

/*==============================================================*/
/* Table: T_HR_SAMPLETABLE2                                     */
/*==============================================================*/
CREATE TABLE T_HR_SAMPLETABLE2
(
   EMPLOYEEID           VARCHAR(50) NOT NULL COMMENT 'Ա��ID',
   EMPLOYEECODE         VARCHAR(50) COMMENT 'Ա�����',
   EMPLOYEENAME         VARCHAR(50) COMMENT 'Ա������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (EMPLOYEEID)
);

ALTER TABLE T_HR_SAMPLETABLE2 COMMENT 'ʾ����';

/*==============================================================*/
/* Table: T_HR_SCHEDULINGTEMPLATEDETAIL                         */
/*==============================================================*/
CREATE TABLE T_HR_SCHEDULINGTEMPLATEDETAIL
(
   TEMPLATEDETAILID     VARCHAR(50) NOT NULL COMMENT 'ģ����ϸID',
   TEMPLATEMASTERID     VARCHAR(50) COMMENT '�Ű�ģ������ID',
   SHIFTDEFINEID        VARCHAR(50) COMMENT '���ID',
   SCHEDULINGDATE       VARCHAR(50) COMMENT '����������',
   SCHEDULINGINDEX      NUMERIC(8,0) COMMENT '���������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   PRIMARY KEY (TEMPLATEDETAILID)
);

ALTER TABLE T_HR_SCHEDULINGTEMPLATEDETAIL COMMENT '�Ű�ģ����ϸ';

/*==============================================================*/
/* Table: T_HR_SCHEDULINGTEMPLATEMASTER                         */
/*==============================================================*/
CREATE TABLE T_HR_SCHEDULINGTEMPLATEMASTER
(
   TEMPLATEMASTERID     VARCHAR(50) NOT NULL COMMENT '�Ű�ģ������ID',
   TEMPLATENAME         VARCHAR(50) COMMENT 'ģ������',
   SCHEDULINGCIRCLETYPE VARCHAR(50) COMMENT '0�£�1�ܣ�2��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   PRIMARY KEY (TEMPLATEMASTERID)
);

ALTER TABLE T_HR_SCHEDULINGTEMPLATEMASTER COMMENT '�Ű�ģ����ϸ';

/*==============================================================*/
/* Table: T_HR_SHIFTDEFINE                                      */
/*==============================================================*/
CREATE TABLE T_HR_SHIFTDEFINE
(
   SHIFTDEFINEID        VARCHAR(50) NOT NULL COMMENT '���ID',
   SHIFTNAME            VARCHAR(50) COMMENT '�������',
   FIRSTSTARTTIME       VARCHAR(50) COMMENT '��һ���ϰ࿪ʼʱ��',
   FIRSTENDTIME         VARCHAR(50) COMMENT '��һ���ϰ����ʱ��',
   FIRSTCARDSTARTTIME   VARCHAR(50) COMMENT '��һ���ϰ���Ч�򿨿�ʼʱ��',
   FIRSTCARDENDTIME     VARCHAR(50) COMMENT '��һ���ϰ���Ч�򿨽���ʱ��',
   NEEDFIRSTCARD        VARCHAR(1) COMMENT '��һ���ϰ��Ƿ��',
   SECONDSTARTTIME      VARCHAR(50) COMMENT '�ڶ����ϰ࿪ʼʱ��',
   SECONDENDTIME        VARCHAR(50) COMMENT '�ڶ����ϰ����ʱ��',
   NEEDSECONDCARD       VARCHAR(1) COMMENT '�ڶ����ϰ��Ƿ��',
   SECONDCARDSTARTTIME  VARCHAR(50) COMMENT '�ڶ����ϰ���Ч�򿨿�ʼʱ��',
   SECONDCARDENDTIME    VARCHAR(50) COMMENT '�ڶ����ϰ���Ч�򿨽���ʱ��',
   THIRDSTARTTIME       VARCHAR(50) COMMENT '�������ϰ࿪ʼʱ��',
   THIRDENDTIME         VARCHAR(50) COMMENT '�������ϰ����ʱ��',
   NEEDTHIRDCARD        VARCHAR(1) COMMENT '�������ϰ��Ƿ��',
   THIRDCARDSTARTTIME   VARCHAR(50) COMMENT '�������ϰ���Ч�򿨿�ʼʱ��',
   THIRDCARDENDTIME     VARCHAR(50) COMMENT '�������ϰ���Ч�򿨽���ʱ��',
   FOURTHSTARTTIME      VARCHAR(50) COMMENT '���Ķ��ϰ࿪ʼʱ��',
   FOURTHENDTIME        VARCHAR(50) COMMENT '���Ķ��ϰ����ʱ��',
   NEEDFOURTHCARD       VARCHAR(50) COMMENT '���Ķ��ϰ��Ƿ��',
   FOURTHCARDSTARTTIME  VARCHAR(50) COMMENT '���Ķ��ϰ���Ч�򿨿�ʼʱ��',
   FOURTHCARDENDTIME    VARCHAR(50) COMMENT '���Ķ��ϰ���Ч�򿨽���ʱ��',
   WORKTIME             NUMERIC(8,0) COMMENT '����ʱ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   NEEDFIRSTOFFCARD     VARCHAR(1) COMMENT '��һ���°��Ƿ��',
   FIRSTOFFCARDSTARTTIME VARCHAR(50) COMMENT '��һ���°���Ч�򿨿�ʼʱ��',
   FIRSTOFFCARDENDTIME  VARCHAR(50) COMMENT '��һ���°���Ч�򿨽���ʱ��',
   NEEDSECONDOFFCARD    VARCHAR(1) COMMENT '�ڶ����°��Ƿ��',
   SECONDOFFCARDSTARTTIME VARCHAR(50) COMMENT '�ڶ����°���Ч�򿨿�ʼʱ��',
   SECONDOFFCARDENDTIME VARCHAR(50) COMMENT '�ڶ����°���Ч�򿨽���ʱ��',
   NEEDTHIRDOFFCARD     VARCHAR(1) COMMENT '�������°��Ƿ��',
   THIRDOFFCARDENDTIME  VARCHAR(50) COMMENT '�������°���Ч�򿨽���ʱ��',
   THIRDOFFCARDSTARTTIME VARCHAR(50) COMMENT '�������°���Ч�򿨿�ʼʱ��',
   NEEDFOURTHOFFCARD    VARCHAR(50) COMMENT '���Ķ��°��Ƿ��',
   FOURTHOFFCARDENDTIME VARCHAR(50) COMMENT '���Ķ��°���Ч�򿨽���ʱ��',
   FOURTHOFFCARDSTARTTIME VARCHAR(50) COMMENT '���Ķ��°���Ч�򿨿�ʼʱ��',
   PRIMARY KEY (SHIFTDEFINEID)
);

ALTER TABLE T_HR_SHIFTDEFINE COMMENT '��ζ���';

/*==============================================================*/
/* Table: T_HR_SPOTCHECKGROUP                                   */
/*==============================================================*/
CREATE TABLE T_HR_SPOTCHECKGROUP
(
   SPOTCHECKGROUPID     VARCHAR(50) NOT NULL,
   SPOTCHECKGROUPNAME   VARCHAR(50),
   COMPANYID            VARCHAR(50),
   COMPANYNAME          VARCHAR(50),
   DEPARTMENTID         VARCHAR(50),
   DEPARTMENTNAME       VARCHAR(50),
   POSTID               VARCHAR(50),
   POSTNAME             VARCHAR(50),
   POSTLEVEL            VARCHAR(1),
   EMPLOYEEID           VARCHAR(50),
   EMPLOYEENAME         VARCHAR(50),
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SPOTCHECKGROUPID)
);

ALTER TABLE T_HR_SPOTCHECKGROUP COMMENT '����鶨��';

/*==============================================================*/
/* Table: T_HR_SPOTCHECKER                                      */
/*==============================================================*/
CREATE TABLE T_HR_SPOTCHECKER
(
   SPOTCHECKERID        VARCHAR(50) NOT NULL,
   SPOTCHECKGROUPID     VARCHAR(50),
   EMPLOYEEID           VARCHAR(50),
   EMPLOYEENAME         VARCHAR(50),
   COMPANYID            VARCHAR(50),
   COMPANYNAME          VARCHAR(50),
   DEPARTMENTID         VARCHAR(50),
   DEPARTMENTNAME       VARCHAR(50),
   POSTID               VARCHAR(50),
   POSTNAME             VARCHAR(50),
   POSTLEVEL            VARCHAR(50),
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SPOTCHECKERID)
);

ALTER TABLE T_HR_SPOTCHECKER COMMENT '�����Ա';

/*==============================================================*/
/* Table: T_HR_STANDREWARDARCHIVE                               */
/*==============================================================*/
CREATE TABLE T_HR_STANDREWARDARCHIVE
(
   STANDREWARDARCHIVEID VARCHAR(50) NOT NULL COMMENT 'н�ʱ�׼��Ч��ID',
   SALARYARCHIVEID      VARCHAR(50) COMMENT 'н�ʵ���ID',
   PERFORMANCEREWARDID  VARCHAR(50) COMMENT '��Ч����ID',
   SUM                  NUMERIC(8,0) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (STANDREWARDARCHIVEID)
);

ALTER TABLE T_HR_STANDREWARDARCHIVE COMMENT 'н�ʱ�׼��Ч������';

/*==============================================================*/
/* Table: T_HR_STANDREWARDARCHIVEHIS                            */
/*==============================================================*/
CREATE TABLE T_HR_STANDREWARDARCHIVEHIS
(
   STANDREWARDARCHIVEID VARCHAR(50) NOT NULL COMMENT 'н�ʱ�׼��Ч��ID',
   SALARYARCHIVEID      VARCHAR(50) COMMENT 'н�ʵ���ID',
   PERFORMANCEREWARDID  VARCHAR(50) COMMENT '��Ч����ID',
   SUM                  NUMERIC(8,0) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (STANDREWARDARCHIVEID)
);

ALTER TABLE T_HR_STANDREWARDARCHIVEHIS COMMENT 'н�ʱ�׼��Ч��������ʷ';

/*==============================================================*/
/* Table: T_HR_STANDARDPERFORMANCEREWARD                        */
/*==============================================================*/
CREATE TABLE T_HR_STANDARDPERFORMANCEREWARD
(
   STANDARDPERFORMANCEREWARDID VARCHAR(50) NOT NULL COMMENT 'н�ʱ�׼��Ч��ID',
   SALARYSTANDARDID     VARCHAR(50) COMMENT 'н�ʱ�׼ID',
   PERFORMANCEREWARDSETID VARCHAR(50) COMMENT '��Ч����ID',
   SUM                  NUMERIC(8,0) COMMENT '���',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (STANDARDPERFORMANCEREWARDID)
);

ALTER TABLE T_HR_STANDARDPERFORMANCEREWARD COMMENT 'н�ʱ�׼��Ч��';

/*==============================================================*/
/* Table: T_HR_SYSTEMSETTING                                    */
/*==============================================================*/
CREATE TABLE T_HR_SYSTEMSETTING
(
   SYSTEMSETTINGID      VARCHAR(50) NOT NULL COMMENT 'ϵͳ����ID',
   MODELTYPE            VARCHAR(50) COMMENT 'ģ������:0 ȫ�ֲ���;1��֯�ܹ�����,2���¹������,3���ڹ������,4н�ʹ������,5��Ч�������',
   MODELVALUE           VARCHAR(50) COMMENT 'ģ������ֵ',
   PARAMETERNAME        VARCHAR(50) COMMENT '��������',
   PARAMETERVALUE       VARCHAR(50) COMMENT '����ֵ',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (SYSTEMSETTINGID)
);

ALTER TABLE T_HR_SYSTEMSETTING COMMENT 'ϵͳ������';

/*==============================================================*/
/* Table: T_HR_SYSTEMSETTING2                                   */
/*==============================================================*/
CREATE TABLE T_HR_SYSTEMSETTING2
(
   SYSTEMSETTINGID      VARCHAR(50) NOT NULL,
   MODELNAME            VARCHAR(36) COMMENT 'ģ������
            ����ģ��
            ����ģ��
            н��ģ��',
   MODELCODE            VARCHAR(36),
   PARAMETERNAME        VARCHAR(50),
   PARAMETERCODE        VARCHAR(50),
   PARAMETERVALUE       VARCHAR(100),
   PARAMETERDESC        VARCHAR(50),
   REMARK               VARCHAR(2000),
   UPDATEDATE           DATETIME ,
   UPDATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME ,
   CREATEUSERID         VARCHAR(50),
   PRIMARY KEY (SYSTEMSETTINGID)
);

ALTER TABLE T_HR_SYSTEMSETTING2 COMMENT 'ϵͳ���ñ�';

/*==============================================================*/
/* Table: T_HR_VACATIONSET                                      */
/*==============================================================*/
CREATE TABLE T_HR_VACATIONSET
(
   VACATIONID           VARCHAR(50) NOT NULL COMMENT '��������ID',
   VACATIONNAME         VARCHAR(50) COMMENT '������������',
   ASSIGNEDOBJECTTYPE   VARCHAR(50) COMMENT '����������',
   ASSIGNEDOBJECTID     VARCHAR(2000) COMMENT '�������ID',
   VACATIONYEAR         VARCHAR(50) COMMENT '�������',
   COUNTYTYPE           VARCHAR(1) COMMENT '����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   PRIMARY KEY (VACATIONID)
);

ALTER TABLE T_HR_VACATIONSET COMMENT '��������';

/*==============================================================*/
/* Table: T_OA_ACCIDENTRECORD                                   */
/*==============================================================*/
CREATE TABLE T_OA_ACCIDENTRECORD
(
   ACCIDENTRECORDID     VARCHAR(50) NOT NULL,
   ASSETID              VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(200) NOT NULL,
   ACCIDENTDATE         DATETIME NOT NULL,
   FLAG                 VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δ����,1:�Ѵ���',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ACCIDENTRECORDID)
);

ALTER TABLE T_OA_ACCIDENTRECORD COMMENT 'T_OA_ACCIDENTRECORD';

/*==============================================================*/
/* Table: T_OA_AGENTDATESET                                     */
/*==============================================================*/
CREATE TABLE T_OA_AGENTDATESET
(
   AGENTDATESETID       VARCHAR(50) NOT NULL,
   MODELCODE            VARCHAR(50) NOT NULL,
   USERID               VARCHAR(50) NOT NULL,
   EFFECTIVEDATE        DATETIME NOT NULL,
   PLANEXPIRATIONDATE   DATETIME NOT NULL,
   EXPIRATIONDATE       DATETIME,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (AGENTDATESETID)
);

ALTER TABLE T_OA_AGENTDATESET COMMENT 'ʹ�ô���ʱЧ���ñ�';

/*==============================================================*/
/* Table: T_OA_AGENTSET                                         */
/*==============================================================*/
CREATE TABLE T_OA_AGENTSET
(
   AGENTSETID           VARCHAR(50) NOT NULL,
   SYSCODE              VARCHAR(50) NOT NULL,
   MODELCODE            VARCHAR(50) NOT NULL,
   USERID               VARCHAR(50) NOT NULL,
   AGENTPOSTID          VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (AGENTSETID)
);

ALTER TABLE T_OA_AGENTSET COMMENT '��������';

/*==============================================================*/
/* Table: T_OA_APPROVALINFO                                     */
/*==============================================================*/
CREATE TABLE T_OA_APPROVALINFO
(
   APPROVALID           VARCHAR(50) NOT NULL,
   APPROVALCODE         VARCHAR(200) NOT NULL,
   APPROVALTITLE        VARCHAR(200) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���޷��ã�1���з���',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��1������У�2�����ͨ����3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   TYPEAPPROVAL         VARCHAR(50),
   TYPEAPPROVALONE      VARCHAR(50),
   TYPEAPPROVALTWO      VARCHAR(50),
   TYPEAPPROVALTHREE    VARCHAR(50),
   ISPERSONFLOW         VARCHAR(50),
   ISSHOW               VARCHAR(50) DEFAULT '1' COMMENT '�Ƿ���ʾ��0 ����ʾ  1 ��ʾ',
   ISMULTPERSON         VARCHAR(50) DEFAULT '0' COMMENT '�Ƿ�ѡ�������ˣ�0 һ��  1 ѡ��������',
   PRIMARY KEY (APPROVALID)
);

ALTER TABLE T_OA_APPROVALINFO COMMENT 'T_OA_APPROVALINFO';

/*==============================================================*/
/* Index: IDX_CREATEUSERID                                      */
/*==============================================================*/
CREATE INDEX IDX_CREATEUSERID ON T_OA_APPROVALINFO
(
   CREATEUSERID
);

/*==============================================================*/
/* Table: T_OA_APPROVALINFOTEMPLET                              */
/*==============================================================*/
CREATE TABLE T_OA_APPROVALINFOTEMPLET
(
   APPROVALID           VARCHAR(50) NOT NULL,
   APPROVALTITLE        VARCHAR(200) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   TYPEAPPROVAL         VARCHAR(50),
   TYPEAPPROVALONE      VARCHAR(50),
   TYPEAPPROVALTWO      VARCHAR(50),
   TYPEAPPROVALTHREE    VARCHAR(50),
   PRIMARY KEY (APPROVALID)
);

ALTER TABLE T_OA_APPROVALINFOTEMPLET COMMENT 'T_OA_APPROVALINFOTEMPLET';

/*==============================================================*/
/* Table: T_OA_APPROVALTYPESET                                  */
/*==============================================================*/
CREATE TABLE T_OA_APPROVALTYPESET
(
   TYPESETID            VARCHAR(50) NOT NULL COMMENT '��������ID',
   ORGANIZATIONID       VARCHAR(50) COMMENT '��֯�ܹ�ID',
   ORGANIZATIONTYPE     VARCHAR(50) COMMENT '��֯�ܹ�����',
   TYPEAPPROVAL         VARCHAR(2000) COMMENT '������������ֵ',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL COMMENT '������˾',
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL COMMENT '��������',
   OWNERPOSTID          VARCHAR(50) NOT NULL COMMENT '������λ',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�����',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (TYPESETID)
);

ALTER TABLE T_OA_APPROVALTYPESET COMMENT '����������������';

/*==============================================================*/
/* Table: T_OA_ARCHIVES                                         */
/*==============================================================*/
CREATE TABLE T_OA_ARCHIVES
(
   ARCHIVESID           VARCHAR(50) NOT NULL,
   COMPANYID            VARCHAR(50) NOT NULL,
   ARCHIVESTITLE        VARCHAR(200) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   SOURCEFLAG           VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0:�Զ����룬1������,��ԭ�����ɽ���',
   RECORDTYPE           VARCHAR(50) NOT NULL COMMENT 'SENDDOC�����ǹ�˾���ĵ�',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ARCHIVESID)
);

ALTER TABLE T_OA_ARCHIVES COMMENT '���и����ϴ���OA_FILEUPLOAD_T,ģ����ȡARCHIVES';

/*==============================================================*/
/* Table: T_OA_AREAALLOWANCE                                    */
/*==============================================================*/
CREATE TABLE T_OA_AREAALLOWANCE
(
   AREAALLOWANCEID      VARCHAR(50) NOT NULL COMMENT '��������ID',
   AREADIFFERENCEID     VARCHAR(50) COMMENT '��������ID',
   POSTLEVEL            VARCHAR(50) COMMENT '��λ�ȼ�',
   ACCOMMODATION        NUMERIC(8,0) COMMENT 'ס�޲�������',
   TRANSPORTATIONSUBSIDIES NUMERIC(8,0) COMMENT '��ͨ��������',
   MEALSUBSIDIES        NUMERIC(8,0) COMMENT '�ͷѲ���',
   OVERSEASSUBSIDIES    NUMERIC(8,0) COMMENT 'פ�ⲹ����׼',
   TRAFFICMEALALLOWANCE NUMERIC(8,0),
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   TRAVELSOLUTIONSID    VARCHAR(50) COMMENT '����id',
   PRIMARY KEY (AREAALLOWANCEID)
);

ALTER TABLE T_OA_AREAALLOWANCE COMMENT '�������첹��';

/*==============================================================*/
/* Table: T_OA_AREACITY                                         */
/*==============================================================*/
CREATE TABLE T_OA_AREACITY
(
   AREACITYID           VARCHAR(50) NOT NULL COMMENT '�����������ID',
   AREADIFFERENCEID     VARCHAR(50) COMMENT '��������ID',
   CITY                 VARCHAR(10) COMMENT '���ڵس��У�ϵͳ�ֵ��ж���',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (AREACITYID)
);

ALTER TABLE T_OA_AREACITY COMMENT '�����������';

/*==============================================================*/
/* Table: T_OA_AREADIFFERENCE                                   */
/*==============================================================*/
CREATE TABLE T_OA_AREADIFFERENCE
(
   AREADIFFERENCEID     VARCHAR(50) NOT NULL COMMENT '��������ID',
   AREACATEGORY         VARCHAR(2000) COMMENT '����������',
   AREAINDEX            NUMERIC(8,0) COMMENT '�����������',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�����',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   TRAVELSOLUTIONSID    VARCHAR(50) COMMENT '����id',
   PRIMARY KEY (AREADIFFERENCEID)
);

ALTER TABLE T_OA_AREADIFFERENCE COMMENT '������������';

/*==============================================================*/
/* Table: T_OA_BUSINESSREPORT                                   */
/*==============================================================*/
CREATE TABLE T_OA_BUSINESSREPORT
(
   BUSINESSREPORTID     VARCHAR(50) NOT NULL COMMENT '�����ID',
   BUSINESSTRIPID       VARCHAR(50) COMMENT '��������ID',
   TEL                  VARCHAR(50) COMMENT '��ϵ�绰',
   CONTENT              VARCHAR(2000) COMMENT '�����',
   CHECKSTATE           VARCHAR(1) DEFAULT '0' COMMENT '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0 COMMENT '�����ܶ�',
   REMARKS              VARCHAR(200) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '������',
   OWNERNAME            VARCHAR(50) COMMENT '��������',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λ',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEUSERNAME       VARCHAR(50) COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '������λID',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�����',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (BUSINESSREPORTID)
);

ALTER TABLE T_OA_BUSINESSREPORT COMMENT '�����';

/*==============================================================*/
/* Table: T_OA_BUSINESSREPORTDETAIL                             */
/*==============================================================*/
CREATE TABLE T_OA_BUSINESSREPORTDETAIL
(
   BUSINESSREPORTDETAILID VARCHAR(50) NOT NULL COMMENT '�����ӱ�ID',
   BUSINESSREPORTID     VARCHAR(50) NOT NULL COMMENT '�����ID',
   STARTDATE            DATETIME COMMENT '��ʼʱ��',
   ENDDATE              DATETIME COMMENT '����ʱ��',
   BUSINESSDAYS         VARCHAR(50) COMMENT '��������',
   DEPCITY              VARCHAR(50) NOT NULL COMMENT 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DESTCITY             VARCHAR(50) NOT NULL COMMENT 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   PRIVATEAFFAIR        VARCHAR(1) COMMENT '˽��',
   TYPEOFTRAVELTOOLS    VARCHAR(50) COMMENT '�����Ľ�ͨ��������',
   TAKETHETOOLLEVEL     VARCHAR(50) COMMENT '��ͨ���ߵļ���(���磺�ɻ�ͷ�Ȳ�)',
   GOOUTTOMEET          VARCHAR(1) COMMENT '�ڲ�������ڲ���ѵ',
   COMPANYCAR           VARCHAR(1) COMMENT '��˾�ɳ�',
   PRIMARY KEY (BUSINESSREPORTDETAILID)
);

ALTER TABLE T_OA_BUSINESSREPORTDETAIL COMMENT '������ӱ�';

/*==============================================================*/
/* Table: T_OA_BUSINESSTRIP                                     */
/*==============================================================*/
CREATE TABLE T_OA_BUSINESSTRIP
(
   BUSINESSTRIPID       VARCHAR(50) NOT NULL COMMENT '��������ID',
   TEL                  VARCHAR(50) COMMENT '������ϵ�绰',
   ISAGENT              VARCHAR(1) DEFAULT '0' COMMENT '0:�����ã�1:����',
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���޷��ã�1���з���',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0 COMMENT '����ܶ�',
   CHECKSTATE           VARCHAR(1) COMMENT '0��δ�ύ��1������У�2�����ͨ����3�����δͨ��',
   CONTENT              VARCHAR(2000) COMMENT '��������',
   REMARKS              VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '������ID',
   OWNERNAME            VARCHAR(50) COMMENT '����������',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λ',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEUSERNAME       VARCHAR(50) COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '������λID',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�����',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   STARTDATE            DATETIME COMMENT '��ʼʱ��',
   ENDDATE              DATETIME COMMENT '����ʱ��',
   DEPCITY              VARCHAR(50) COMMENT '��������',
   DESTCITY             VARCHAR(50) COMMENT 'Ŀ�ĳ���',
   OWNERPOSTNAME        VARCHAR(100),
   OWNERDEPARTMENTNAME  VARCHAR(100),
   OWNERCOMPANYNAME     VARCHAR(100),
   POSTLEVEL            VARCHAR(10),
   STARTCITYNAME        VARCHAR(10),
   ENDCITYNAME          VARCHAR(10),
   ISALTERTRAVE         VARCHAR(10),
   ALTERDETAILBASE      VARCHAR(10) COMMENT '��һ������ĳ�������',
   ALTERDETAILBEFORE    VARCHAR(2000) COMMENT '�޸��г�֮ǰ��������',
   ALTERDETAILATFER     VARCHAR(10) COMMENT '�޸��г�֮���������',
   ISFROMWP             VARCHAR(10) COMMENT '���Թ����ƻ�',
   PRIMARY KEY (BUSINESSTRIPID)
);

ALTER TABLE T_OA_BUSINESSTRIP COMMENT '��������';

/*==============================================================*/
/* Table: T_OA_BUSINESSTRIPDETAIL                               */
/*==============================================================*/
CREATE TABLE T_OA_BUSINESSTRIPDETAIL
(
   BUSINESSTRIPDETAILID VARCHAR(50) NOT NULL COMMENT '�����ӱ�ID',
   BUSINESSTRIPID       VARCHAR(50) NOT NULL COMMENT '��������ID',
   STARTDATE            DATETIME COMMENT '��ʼʱ��',
   ENDDATE              DATETIME COMMENT '����ʱ��',
   DEPCITY              VARCHAR(50) NOT NULL COMMENT 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DESTCITY             VARCHAR(50) NOT NULL COMMENT 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   PRIVATEAFFAIR        VARCHAR(1) COMMENT '˽��',
   TYPEOFTRAVELTOOLS    VARCHAR(50) COMMENT '�����Ľ�ͨ��������',
   TAKETHETOOLLEVEL     VARCHAR(50) COMMENT '��ͨ���ߵļ���(���磺�ɻ�ͷ�Ȳ�)',
   GOOUTTOMEET          VARCHAR(1),
   COMPANYCAR           VARCHAR(1) COMMENT '��˾�ɳ�',
   BUSINESSDAYS         VARCHAR(50) COMMENT '��������',
   STARTCITYNAME        VARCHAR(2000),
   ENDCITYNAME          VARCHAR(2000),
   PRIMARY KEY (BUSINESSTRIPDETAILID)
);

ALTER TABLE T_OA_BUSINESSTRIPDETAIL COMMENT '���������ӱ�';

/*==============================================================*/
/* Table: T_OA_BUSINESSTRIPDETAIL_BAK                           */
/*==============================================================*/
CREATE TABLE T_OA_BUSINESSTRIPDETAIL_BAK
(
   BUSINESSTRIPDETAILID VARCHAR(50) NOT NULL,
   BUSINESSTRIPID       VARCHAR(50) NOT NULL,
   STARTDATE            DATETIME,
   ENDDATE              DATETIME,
   DEPCITY              VARCHAR(50) NOT NULL,
   DESTCITY             VARCHAR(50) NOT NULL,
   PRIVATEAFFAIR        VARCHAR(1),
   TYPEOFTRAVELTOOLS    VARCHAR(50),
   TAKETHETOOLLEVEL     VARCHAR(50),
   GOOUTTOMEET          VARCHAR(1),
   COMPANYCAR           VARCHAR(1),
   BUSINESSDAYS         VARCHAR(50),
   STARTCITYNAME        VARCHAR(2000),
   ENDCITYNAME          VARCHAR(2000)
);

ALTER TABLE T_OA_BUSINESSTRIPDETAIL_BAK COMMENT 'T_OA_BUSINESSTRIPDETAIL_BAK';

/*==============================================================*/
/* Table: T_OA_BUSINESSTRIP_BAK                                 */
/*==============================================================*/
CREATE TABLE T_OA_BUSINESSTRIP_BAK
(
   BUSINESSTRIPID       VARCHAR(50) NOT NULL,
   TEL                  VARCHAR(50),
   ISAGENT              VARCHAR(1),
   CHARGEMONEY          NUMERIC(8,0),
   CHECKSTATE           VARCHAR(1),
   CONTENT              VARCHAR(2000),
   REMARKS              VARCHAR(200),
   OWNERID              VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   STARTDATE            DATETIME,
   ENDDATE              DATETIME,
   DEPCITY              VARCHAR(50),
   DESTCITY             VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(2000),
   OWNERDEPARTMENTNAME  VARCHAR(2000),
   OWNERCOMPANYNAME     VARCHAR(2000),
   POSTLEVEL            VARCHAR(2000),
   STARTCITYNAME        VARCHAR(2000),
   ENDCITYNAME          VARCHAR(2000),
   ISALTERTRAVE         VARCHAR(2000)
);

ALTER TABLE T_OA_BUSINESSTRIP_BAK COMMENT 'T_OA_BUSINESSTRIP_BAK';

/*==============================================================*/
/* Table: T_OA_CALENDAR                                         */
/*==============================================================*/
CREATE TABLE T_OA_CALENDAR
(
   CALENDARID           VARCHAR(50) NOT NULL,
   TITLE                VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(1000) NOT NULL,
   REMINDERRMODEL       VARCHAR(50) NOT NULL,
   PLANTIME             DATETIME NOT NULL,
   REPARTREMINDER       VARCHAR(50) NOT NULL COMMENT 'NOTHING�����ظ���DAY��ÿ�죬WEEK�����ܣ�MONTH�����£�YEAR������',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CALENDARID)
);

ALTER TABLE T_OA_CALENDAR COMMENT 'T_OA_CALENDAR';

/*==============================================================*/
/* Table: T_OA_CANTAKETHEPLANELINE                              */
/*==============================================================*/
CREATE TABLE T_OA_CANTAKETHEPLANELINE
(
   CANTAKETHEPLANELINEID VARCHAR(50) NOT NULL COMMENT 'ID',
   TRAVELSOLUTIONSID    VARCHAR(50) COMMENT '����id',
   REGIONAL             VARCHAR(50) COMMENT '���磺���������ֵ��ж���',
   DEPCITY              VARCHAR(50) NOT NULL COMMENT 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DESTCITY             VARCHAR(50) NOT NULL COMMENT 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   LANDTIME             VARCHAR(20) COMMENT '½·����ʱ��',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEDATE           DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (CANTAKETHEPLANELINEID)
);

ALTER TABLE T_OA_CANTAKETHEPLANELINE COMMENT '����ɳ����ɻ���·����';

/*==============================================================*/
/* Table: T_OA_CONSERVATION                                     */
/*==============================================================*/
CREATE TABLE T_OA_CONSERVATION
(
   CONSERVATIONID       VARCHAR(50) NOT NULL,
   ASSETID              VARCHAR(50) NOT NULL,
   CONSERVATYPE         VARCHAR(50) NOT NULL COMMENT '��ϵͳ�ֵ���л�ȡ',
   CONTENT              VARCHAR(200) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   REPAIRDATE           DATETIME NOT NULL,
   RETRIEVEDATE         DATETIME NOT NULL,
   CONSERVATIONCOMPANY  VARCHAR(200) NOT NULL,
   CONSERVATIONRANGE    NUMERIC(8,0),
   REMARK               VARCHAR(200),
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���޷��ã�1���з���',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CONSERVATIONID)
);

ALTER TABLE T_OA_CONSERVATION COMMENT 'T_OA_CONSERVATION';

/*==============================================================*/
/* Table: T_OA_CONSERVATIONRECORD                               */
/*==============================================================*/
CREATE TABLE T_OA_CONSERVATIONRECORD
(
   CONSERVATIONRECORDID VARCHAR(50) NOT NULL,
   CONSERVATIONID       VARCHAR(50) NOT NULL,
   CONSERVATYPE         VARCHAR(50) NOT NULL COMMENT '��ϵͳ�ֵ���л�ȡ',
   CONTENT              VARCHAR(200) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   REPAIRDATE           DATETIME NOT NULL,
   RETRIEVEDATE         DATETIME NOT NULL,
   CONSERVATIONRANGE    NUMERIC(8,0),
   REMARK               VARCHAR(200),
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���޷��ã�1���з���',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CONSERVATIONRECORDID)
);

ALTER TABLE T_OA_CONSERVATIONRECORD COMMENT 'T_OA_CONSERVATIONRECORD';

/*==============================================================*/
/* Table: T_OA_CONTRACTAPP                                      */
/*==============================================================*/
CREATE TABLE T_OA_CONTRACTAPP
(
   CONTRACTAPPID        VARCHAR(50) NOT NULL,
   CONTRACTCODE         VARCHAR(50) NOT NULL,
   CONTRACTTYPEID       VARCHAR(50) NOT NULL,
   CONTRACTLEVEL        VARCHAR(50) NOT NULL,
   PARTYA               VARCHAR(50) NOT NULL,
   PARTYB               VARCHAR(50) NOT NULL,
   STARTDATE            DATETIME NOT NULL,
   ENDDATE              DATETIME NOT NULL COMMENT '��ͬ����ʱ��',
   CONTRACTFLAG         VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:�����ͬ��1��Ա����ͬ',
   EXPIRATIONREMINDER   NUMERIC(8,0) NOT NULL DEFAULT 0 COMMENT '0:�����ͬ��1��Ա����ͬ',
   CONTRACTTITLE        VARCHAR(100) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CONTRACTAPPID)
);

ALTER TABLE T_OA_CONTRACTAPP COMMENT 'T_OA_CONTRACTAPP';

/*==============================================================*/
/* Table: T_OA_CONTRACTPRINT                                    */
/*==============================================================*/
CREATE TABLE T_OA_CONTRACTPRINT
(
   CONTRACTPRINTID      VARCHAR(50) NOT NULL,
   CONTRACTAPPID        VARCHAR(50) NOT NULL,
   NUM                  NUMERIC(8,0) NOT NULL,
   SIGNDATE             DATETIME,
   ISUPLOAD             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δ�ϴ���1:���Ǵ�',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CONTRACTPRINTID)
);

ALTER TABLE T_OA_CONTRACTPRINT COMMENT 'T_OA_CONTRACTPRINT';

/*==============================================================*/
/* Table: T_OA_CONTRACTTEMPLATE                                 */
/*==============================================================*/
CREATE TABLE T_OA_CONTRACTTEMPLATE
(
   CONTRACTTEMPLATEID   VARCHAR(50) NOT NULL,
   CONTRACTTEMPLATENAME VARCHAR(50) NOT NULL,
   CONTRACTTYPEID       VARCHAR(50) NOT NULL,
   CONTRACTLEVEL        VARCHAR(50) NOT NULL,
   CONTRACTTITLE        VARCHAR(100) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CONTRACTTEMPLATEID)
);

ALTER TABLE T_OA_CONTRACTTEMPLATE COMMENT 'T_OA_CONTRACTTEMPLATE';

/*==============================================================*/
/* Table: T_OA_CONTRACTTYPE                                     */
/*==============================================================*/
CREATE TABLE T_OA_CONTRACTTYPE
(
   CONTRACTTYPEID       VARCHAR(50) NOT NULL,
   CONTRACTTYPE         VARCHAR(50),
   CONTRACTLEVEL        VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(600) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CONTRACTTYPEID)
);

ALTER TABLE T_OA_CONTRACTTYPE COMMENT 'T_OA_CONTRACTTYPE';

/*==============================================================*/
/* Table: T_OA_CONTRACTVIEW                                     */
/*==============================================================*/
CREATE TABLE T_OA_CONTRACTVIEW
(
   CONTRACTVIEWID       VARCHAR(50) NOT NULL,
   CONTRACTPRINTID      VARCHAR(50) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (CONTRACTVIEWID)
);

ALTER TABLE T_OA_CONTRACTVIEW COMMENT 'T_OA_CONTRACTVIEW';

/*==============================================================*/
/* Table: T_OA_COSTRECORD                                       */
/*==============================================================*/
CREATE TABLE T_OA_COSTRECORD
(
   COSTRECORDID         VARCHAR(50) NOT NULL,
   ASSETID              VARCHAR(50) NOT NULL,
   MODELNAME            VARCHAR(50),
   FORMID               VARCHAR(50),
   CONSTTYPE            VARCHAR(50) NOT NULL COMMENT 'ͨ���ֵ��ȡ��������',
   CONTENT              VARCHAR(50) NOT NULL,
   COST                 NUMERIC(8,0) NOT NULL DEFAULT 0,
   COSTDATE             DATETIME NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (COSTRECORDID)
);

ALTER TABLE T_OA_COSTRECORD COMMENT 'T_OA_COSTRECORD';

/*==============================================================*/
/* Table: T_OA_DISTRIBUTEUSER                                   */
/*==============================================================*/
CREATE TABLE T_OA_DISTRIBUTEUSER
(
   DISTRIBUTEUSERID     VARCHAR(50) NOT NULL,
   MODELNAME            VARCHAR(50) NOT NULL,
   FORMID               VARCHAR(50) NOT NULL,
   VIEWTYPE             VARCHAR(1) NOT NULL DEFAULT '3' COMMENT '1������˾��2�������ţ�3�����û�',
   VIEWER               VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   VIEWNAME             VARCHAR(100),
   PRIMARY KEY (MODELNAME, FORMID, VIEWTYPE, VIEWER)
);

ALTER TABLE T_OA_DISTRIBUTEUSER COMMENT 'T_OA_DISTRIBUTEUSER';

/*==============================================================*/
/* Table: T_OA_GIFTAPPLYDETAIL                                  */
/*==============================================================*/
CREATE TABLE T_OA_GIFTAPPLYDETAIL
(
   GIFTAPPLYDETAILID    VARCHAR(50) NOT NULL COMMENT '��Ʒ�������뵥��ϸID',
   GIFTAPPLYMASTERID    VARCHAR(50) COMMENT '��Ʒ�����걨��ID',
   SENDERNAME           VARCHAR(50) COMMENT '����������',
   SENDERPHONE          VARCHAR(50) COMMENT '�����˵绰',
   SENDUNITNAME         VARCHAR(50) COMMENT '������λ����',
   RECIPIENTID          VARCHAR(50) COMMENT '�ռ���ID',
   RECIPIENTNAME        VARCHAR(50) COMMENT '�ռ�������',
   RECIPIENTPHONE       VARCHAR(50) COMMENT '�ռ��˵绰',
   RECIPIENTUNITID      VARCHAR(50) COMMENT '�ռ��˵�λID',
   RECIPIENTUNITNAME    VARCHAR(50) COMMENT '�ռ��˵�λ����',
   ADRESSDETAIL         VARCHAR(200) COMMENT '��ϸ��ַ',
   PROVINCE             VARCHAR(50) COMMENT '����ʡ��',
   CITY                 VARCHAR(50) COMMENT '������',
   AREA                 VARCHAR(50) COMMENT '��\��',
   COUNT                NUMERIC(8,0) NOT NULL COMMENT '����',
   SENDREQUIRE          VARCHAR(200) COMMENT '����Ҫ��',
   REMARK               VARCHAR(200) COMMENT '��ע',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) NOT NULL COMMENT '�޸���ID',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   UPDATEDATE           DATETIME NOT NULL COMMENT '�޸�ʱ��',
   ITEMSTATES           VARCHAR(50) COMMENT '��Ŀ״̬',
   PRIMARY KEY (GIFTAPPLYDETAILID)
);

ALTER TABLE T_OA_GIFTAPPLYDETAIL COMMENT '��Ʒ�������뵥��ϸ';

/*==============================================================*/
/* Table: T_OA_GIFTAPPLYMASTER                                  */
/*==============================================================*/
CREATE TABLE T_OA_GIFTAPPLYMASTER
(
   GIFTAPPLYMASTERID    VARCHAR(50) NOT NULL COMMENT '��Ʒ�����걨��ID',
   GIFTPLANID           VARCHAR(50) COMMENT '��Ʒ���ͼƻ�ID',
   GIFTAPPLYMASTERCODE  VARCHAR(50) COMMENT '��Ʒ�����걨�����',
   SENDTYPE             VARCHAR(50) COMMENT '1:�ڲ�Ա�����������ͻ�',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL COMMENT '�걨�˹�˾ID',
   OWNERCOMPANYNAME     VARCHAR(50) COMMENT '�걨�˹�˾����',
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL COMMENT '�걨�˲���ID',
   OWNERDEPARTMENTNAME  VARCHAR(50) COMMENT '�걨�˲�������',
   OWNERPOSTID          VARCHAR(50) NOT NULL COMMENT '�걨�˸�λID',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '�걨�˸�λ����',
   OWNERID              VARCHAR(50) NOT NULL COMMENT '�걨��ID',
   OWNERNAME            VARCHAR(50) COMMENT '�걨������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '�����˹�˾ID',
   CREATECOMPANYNAME    VARCHAR(50) COMMENT '�����˹�˾����',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '�����˲���ID',
   CREATEDEPARTMENTNAME VARCHAR(50) COMMENT '�����˲�������',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '�����˸�λID',
   CREATEPOSTNAME       VARCHAR(50) COMMENT '�����˸�λ����',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) NOT NULL COMMENT '�޸���ID',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   UPDATEDATE           DATETIME NOT NULL COMMENT '�޸�ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   EDITSTATES           VARCHAR(50) NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled',
   CHECKSTATES          VARCHAR(50) NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved',
   PRIMARY KEY (GIFTAPPLYMASTERID)
);

ALTER TABLE T_OA_GIFTAPPLYMASTER COMMENT '��Ʒ�����걨��';

/*==============================================================*/
/* Table: T_OA_GIFTPLAN                                         */
/*==============================================================*/
CREATE TABLE T_OA_GIFTPLAN
(
   GIFTPLANID           VARCHAR(50) NOT NULL COMMENT '��Ʒ���ͼƻ�ID',
   GIFTPLANCODE         VARCHAR(50) COMMENT '��Ʒ���ͼƻ�����',
   TITLE                VARCHAR(50) COMMENT '����',
   APPLYSTARTDATE       DATETIME NOT NULL COMMENT '�걨��ʼʱ��',
   APPLYENDDATE         DATETIME NOT NULL COMMENT '�걨����ʱ��',
   GIFTINFO             VARCHAR(2000) COMMENT '��Ʒ��Ϣ',
   GIFTPRICE            NUMERIC(8,0) COMMENT '��Ʒ�۸�',
   UNITMASTERCOUNT      NUMERIC(8,0) COMMENT '��λ�����������',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL COMMENT '�ƻ������˹�˾ID',
   OWNERCOMPANYNAME     VARCHAR(50) COMMENT '�ƻ������˹�˾����',
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL COMMENT '�ƻ������˲���ID',
   OWNERDEPARTMENTNAME  VARCHAR(50) COMMENT '�ƻ������˲�������',
   OWNERPOSTID          VARCHAR(50) NOT NULL COMMENT '�ƻ������˸�λID',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '�ƻ������˸�λ����',
   OWNERID              VARCHAR(50) NOT NULL COMMENT '�ƻ�������ID',
   OWNERNAME            VARCHAR(50) COMMENT '�ƻ�����������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '�����˹�˾ID',
   CREATECOMPANYNAME    VARCHAR(50) COMMENT '�����˹�˾����',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '�����˲���ID',
   CREATEDEPARTMENTNAME VARCHAR(50) COMMENT '�����˲�������',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '�����˸�λID',
   CREATEPOSTNAME       VARCHAR(50) COMMENT '�����˸�λ����',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) NOT NULL COMMENT '�޸���ID',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   UPDATEDATE           DATETIME NOT NULL COMMENT '�޸�ʱ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   EDITSTATES           VARCHAR(50) NOT NULL COMMENT '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled',
   CHECKSTATES          VARCHAR(50) NOT NULL COMMENT '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved',
   PRIMARY KEY (GIFTPLANID)
);

ALTER TABLE T_OA_GIFTPLAN COMMENT '��Ʒ���ͼƻ�';

/*==============================================================*/
/* Table: T_OA_GRADED                                           */
/*==============================================================*/
CREATE TABLE T_OA_GRADED
(
   GRADEDID             VARCHAR(50) NOT NULL,
   GRADED               VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (GRADED)
);

ALTER TABLE T_OA_GRADED COMMENT 'T_OA_GRADED';

/*==============================================================*/
/* Table: T_OA_HIREAPP                                          */
/*==============================================================*/
CREATE TABLE T_OA_HIREAPP
(
   HIREAPPID            VARCHAR(50) NOT NULL,
   HOUSELISTID          VARCHAR(50) NOT NULL,
   RENTCOST             NUMERIC(8,0) NOT NULL DEFAULT 0,
   DEPOSIT              NUMERIC(8,0) NOT NULL DEFAULT 0,
   MANAGECOST           NUMERIC(8,0) NOT NULL DEFAULT 0,
   STARTDATE            DATETIME NOT NULL,
   ENDDATE              DATETIME NOT NULL COMMENT 'Ԥ�Ƶ���ʱ�䣬ʵ�ʵ������˷�ʱ��Ϊ׼',
   BACKDATE             DATETIME COMMENT '�˷�ʱ�޸�',
   RENTTYPE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0�����⣻1�����⣻',
   SETTLEMENTTYPE       VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0�����ʿۣ�1���ֽ�',
   ISBACK               VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δ�ˣ�1������',
   ISOK                 VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δȷ�ϣ�1�������ϣ�2��ȡ��',
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��1������У�2�����ͨ����3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (HIREAPPID)
);

ALTER TABLE T_OA_HIREAPP COMMENT 'T_OA_HIREAPP';

/*==============================================================*/
/* Table: T_OA_HIRERECORD                                       */
/*==============================================================*/
CREATE TABLE T_OA_HIRERECORD
(
   HIRERECORD           VARCHAR(50) NOT NULL,
   HIREAPPID            VARCHAR(50) NOT NULL,
   RENTER               VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '0�����⣻1�����⣻',
   RENTCOST             NUMERIC(8,0) NOT NULL DEFAULT 0,
   MANAGECOST           NUMERIC(8,0) NOT NULL DEFAULT 0,
   WATER                NUMERIC(8,0) DEFAULT 0,
   ELECTRICITY          NUMERIC(8,0) DEFAULT 0,
   OTHERCOST            NUMERIC(8,0) DEFAULT 0,
   WATERNUM             NUMERIC(8,0) DEFAULT 0,
   ELECTRICITYNUM       NUMERIC(8,0) DEFAULT 0,
   SETTLEMENTDATE       DATETIME NOT NULL,
   SETTLEMENTTYPE       VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0�����ʿۣ�1���ֽ�',
   ISSETTLEMENT         VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δ���㣬1���ѽ���',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (HIRERECORD)
);

ALTER TABLE T_OA_HIRERECORD COMMENT 'T_OA_HIRERECORD';

/*==============================================================*/
/* Table: T_OA_HOUSEINFO                                        */
/*==============================================================*/
CREATE TABLE T_OA_HOUSEINFO
(
   HOUSEID              VARCHAR(50) NOT NULL,
   UPTOWN               VARCHAR(50) NOT NULL,
   HOUSENAME            VARCHAR(50) NOT NULL,
   FLOOR                NUMERIC(8,0) NOT NULL,
   ROOMCODE             VARCHAR(50) NOT NULL,
   RENTCOST             NUMERIC(8,0) NOT NULL DEFAULT 0,
   DEPOSIT              NUMERIC(8,0) NOT NULL DEFAULT 0,
   SHAREDRENTCOST       NUMERIC(8,0) NOT NULL DEFAULT 0,
   SHAREDDEPOSIT        NUMERIC(8,0) NOT NULL DEFAULT 0,
   MANAGECOST           NUMERIC(8,0) NOT NULL DEFAULT 0,
   NUMBER               NUMERIC(8,0) NOT NULL DEFAULT 0,
   RENTNUMBER           NUMERIC(8,0) NOT NULL DEFAULT 0,
   REMARK               VARCHAR(2000),
   CONTENT              LONGBLOB NOT NULL,
   ISRENT               VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δ���⣬1���ѳ���',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL ,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (HOUSEID)
);

ALTER TABLE T_OA_HOUSEINFO COMMENT 'T_OA_HOUSEINFO';

/*==============================================================*/
/* Table: T_OA_HOUSEINFOISSUANCE                                */
/*==============================================================*/
CREATE TABLE T_OA_HOUSEINFOISSUANCE
(
   ISSUANCEID           VARCHAR(50) NOT NULL,
   ISSUANCETITLE        VARCHAR(200) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ISSUANCEID)
);

ALTER TABLE T_OA_HOUSEINFOISSUANCE COMMENT 'T_OA_HOUSEINFOISSUANCE';

/*==============================================================*/
/* Table: T_OA_HOUSELIST                                        */
/*==============================================================*/
CREATE TABLE T_OA_HOUSELIST
(
   HOUSELISTID          VARCHAR(50) NOT NULL,
   ISSUANCEID           VARCHAR(50) NOT NULL,
   HOUSEID              VARCHAR(50) NOT NULL,
   RENTCOST             NUMERIC(8,0) NOT NULL DEFAULT 0,
   DEPOSIT              NUMERIC(8,0) NOT NULL DEFAULT 0,
   SHAREDRENTCOST       NUMERIC(8,0) NOT NULL DEFAULT 0,
   SHAREDDEPOSIT        NUMERIC(8,0) NOT NULL DEFAULT 0,
   MANAGECOST           NUMERIC(8,0) NOT NULL DEFAULT 0,
   CONTENT              TEXT NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (HOUSELISTID)
);

ALTER TABLE T_OA_HOUSELIST COMMENT 'T_OA_HOUSELIST';

/*==============================================================*/
/* Table: T_OA_LENDARCHIVES                                     */
/*==============================================================*/
CREATE TABLE T_OA_LENDARCHIVES
(
   LENDARCHIVESID       VARCHAR(50) NOT NULL,
   ARCHIVESID           VARCHAR(50) NOT NULL,
   STARTDATE            DATETIME NOT NULL,
   ENDDATE              DATETIME,
   PLANENDDATE          DATETIME NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (LENDARCHIVESID)
);

ALTER TABLE T_OA_LENDARCHIVES COMMENT 'ֻ����ԭ���Ĳ��ܽ��ģ�OA_ARCHIVES_T�е�FLAGΪ1��';

/*==============================================================*/
/* Table: T_OA_LICENSEDETAIL                                    */
/*==============================================================*/
CREATE TABLE T_OA_LICENSEDETAIL
(
   LICENSEDETAILID      VARCHAR(50) NOT NULL,
   LICENSEMASTERID      VARCHAR(50) NOT NULL,
   REGISTERTYPE         VARCHAR(50) NOT NULL COMMENT '��¼��컹�Ǳ���ȣ����ֵ��ж���',
   LEGALPERSON          VARCHAR(50) NOT NULL,
   ADDRESS              VARCHAR(200) NOT NULL,
   LICENCENO            VARCHAR(100) NOT NULL,
   BUSSINESSAREA        VARCHAR(1000) NOT NULL,
   REGISTERCHARGE       VARCHAR(50) DEFAULT '0',
   FROMDATE             DATETIME NOT NULL,
   TODATE               DATETIME,
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (LICENSEDETAILID)
);

ALTER TABLE T_OA_LICENSEDETAIL COMMENT 'T_OA_LICENSEDETAIL';

/*==============================================================*/
/* Table: T_OA_LICENSEMASTER                                    */
/*==============================================================*/
CREATE TABLE T_OA_LICENSEMASTER
(
   LICENSEMASTERID      VARCHAR(50) NOT NULL,
   ORGCODE              VARCHAR(50),
   LICENSENAME          VARCHAR(200) NOT NULL COMMENT '�ֵ��ж���',
   POSITION             VARCHAR(200) NOT NULL,
   LEGALPERSON          VARCHAR(50) NOT NULL COMMENT '���ӱ��ж���',
   ADDRESS              VARCHAR(200) NOT NULL COMMENT '���ӱ��ж���',
   LICENCENO            VARCHAR(100) NOT NULL COMMENT '���ӱ��ж���',
   BUSSINESSAREA        VARCHAR(1000) NOT NULL COMMENT '���ӱ��ж���',
   FROMDATE             DATETIME COMMENT '���ӱ��ж���',
   TODATE               DATETIME COMMENT '���ӱ��ж���',
   DAY                  NUMERIC(8,0) NOT NULL DEFAULT 0 COMMENT '���õ��ڶ�����ǰ����',
   LENDFLAG             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δ�����1���ѽ��',
   ISVALID              VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:��Ч��1����Ч',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (LICENSEMASTERID)
);

ALTER TABLE T_OA_LICENSEMASTER COMMENT 'T_OA_LICENSEMASTER';

/*==============================================================*/
/* Table: T_OA_LICENSEUSER                                      */
/*==============================================================*/
CREATE TABLE T_OA_LICENSEUSER
(
   LICENSEUSERID        VARCHAR(50) NOT NULL,
   LICENSEMASTERID      VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(500) NOT NULL,
   STARTDATE            DATETIME NOT NULL,
   ENDDATE              DATETIME NOT NULL,
   HASRETURN            VARCHAR(1) NOT NULL COMMENT '0:δ����1���ѻ�',
   CHECKSTATE           VARCHAR(1) NOT NULL COMMENT '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (LICENSEUSERID)
);

ALTER TABLE T_OA_LICENSEUSER COMMENT 'T_OA_LICENSEUSER';

/*==============================================================*/
/* Table: T_OA_MAINTENANCEAPP                                   */
/*==============================================================*/
CREATE TABLE T_OA_MAINTENANCEAPP
(
   MAINTENANCEAPPID     VARCHAR(50) NOT NULL,
   ASSETID              VARCHAR(50) NOT NULL,
   MAINTENANCETYPE      VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(200) NOT NULL,
   REPAIRDATE           DATETIME NOT NULL,
   RETRIEVEDATE         DATETIME NOT NULL,
   REPAIRCOMPANY        VARCHAR(50) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   REMARK               VARCHAR(200),
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���޷��ã�1���з���',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MAINTENANCEAPPID)
);

ALTER TABLE T_OA_MAINTENANCEAPP COMMENT 'T_OA_MAINTENANCEAPP';

/*==============================================================*/
/* Table: T_OA_MAINTENANCERECORD                                */
/*==============================================================*/
CREATE TABLE T_OA_MAINTENANCERECORD
(
   MAINTENANCERECORDID  VARCHAR(50) NOT NULL,
   MAINTENANCEAPPID     VARCHAR(50) NOT NULL,
   MAINTENANCETYPE      VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(200) NOT NULL,
   REPAIRDATE           DATETIME NOT NULL,
   RETRIEVEDATE         DATETIME NOT NULL,
   REPAIRCOMPANY        VARCHAR(50) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   REMARK               VARCHAR(200),
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���޷��ã�1���з���',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MAINTENANCERECORDID)
);

ALTER TABLE T_OA_MAINTENANCERECORD COMMENT 'T_OA_MAINTENANCERECORD';

/*==============================================================*/
/* Table: T_OA_MEETINGCONTENT                                   */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGCONTENT
(
   MEETINGCONTENTID     VARCHAR(50) NOT NULL,
   MEETINGINFOID        VARCHAR(50) NOT NULL,
   MEETINGUSERID        VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   CONTENT              TEXT NOT NULL,
   PRIMARY KEY (MEETINGCONTENTID)
);

ALTER TABLE T_OA_MEETINGCONTENT COMMENT 'T_OA_MEETINGCONTENT';

/*==============================================================*/
/* Table: T_OA_MEETINGINFO                                      */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGINFO
(
   MEETINGINFOID        VARCHAR(50) NOT NULL,
   ISAUTO               VARCHAR(1) NOT NULL DEFAULT '0',
   MEETINGROOMNAME      VARCHAR(100),
   STARTTIME            DATETIME NOT NULL,
   ENDTIME              DATETIME NOT NULL,
   COUNT                NUMERIC(8,0) NOT NULL DEFAULT 2,
   MEETINGTITLE         VARCHAR(100) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   DEPARTNAME           VARCHAR(100) NOT NULL,
   HOSTID               VARCHAR(50) NOT NULL,
   HOSTNAME             VARCHAR(50) NOT NULL,
   RECORDUSERID         VARCHAR(50) NOT NULL,
   RECORDUSERNAME       VARCHAR(50) NOT NULL,
   MEETINGTYPE          VARCHAR(100) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   ISCANCEL             VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0��ȡ����1������',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGINFOID)
);

ALTER TABLE T_OA_MEETINGINFO COMMENT 'T_OA_MEETINGINFO';

/*==============================================================*/
/* Table: T_OA_MEETINGMESSAGE                                   */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGMESSAGE
(
   MEETINGMESSAGEID     VARCHAR(50) NOT NULL DEFAULT '0',
   MEETINGINFOID        VARCHAR(50) NOT NULL,
   TITLE                VARCHAR(200) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGMESSAGEID)
);

ALTER TABLE T_OA_MEETINGMESSAGE COMMENT 'T_OA_MEETINGMESSAGE';

/*==============================================================*/
/* Table: T_OA_MEETINGROOM                                      */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGROOM
(
   MEETINGROOMID        VARCHAR(50) NOT NULL,
   MEETINGROOMNAME      VARCHAR(100) NOT NULL,
   LOCATION             VARCHAR(100),
   COMPANYID            VARCHAR(50) NOT NULL,
   SEAT                 NUMERIC(8,0) NOT NULL,
   AREA                 NUMERIC(8,0) NOT NULL,
   ROSTRUM              VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���ޣ�1����',
   VIDEO                VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���ޣ�1����',
   AUDIO                VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0���ޣ�1����',
   NETWORK              VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0���ޣ�1����',
   WIFI                 VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���ޣ�1����',
   TEL                  VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���ޣ�1����',
   PROJECTOR            VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0���ޣ�1����',
   AIRCONDITIONING      VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0���ޣ�1����',
   WATERDISPENSER       VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���ޣ�1����',
   REMARK               VARCHAR(200),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGROOMNAME)
);

ALTER TABLE T_OA_MEETINGROOM COMMENT 'T_OA_MEETINGROOM';

/*==============================================================*/
/* Table: T_OA_MEETINGROOMAPP                                   */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGROOMAPP
(
   MEETINGROOMAPPID     VARCHAR(50) NOT NULL,
   MEETINGROOMNAME      VARCHAR(100) NOT NULL,
   STARTTIME            DATETIME NOT NULL,
   ENDTIME              DATETIME NOT NULL,
   DEPARTNAME           VARCHAR(100) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��1�������У�2������ͨ����3��������ͨ��',
   ISCANCEL             VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0��ȡ����1������',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGROOMAPPID)
);

ALTER TABLE T_OA_MEETINGROOMAPP COMMENT 'T_OA_MEETINGROOMAPP';

/*==============================================================*/
/* Table: T_OA_MEETINGROOMTIMECHANGE                            */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGROOMTIMECHANGE
(
   MEETINGROOMTIMECHANGEID VARCHAR(50) NOT NULL,
   MEETINGROOMAPPID     VARCHAR(50) NOT NULL,
   STARTTIME            DATETIME NOT NULL,
   ENDTIME              DATETIME NOT NULL,
   REASON               VARCHAR(2000),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGROOMTIMECHANGEID)
);

ALTER TABLE T_OA_MEETINGROOMTIMECHANGE COMMENT 'T_OA_MEETINGROOMTIMECHANGE';

/*==============================================================*/
/* Table: T_OA_MEETINGSTAFF                                     */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGSTAFF
(
   MEETINGSTAFFID       VARCHAR(50),
   MEETINGINFOID        VARCHAR(50) NOT NULL,
   MEETINGUSERID        VARCHAR(50) NOT NULL,
   FILENAME             VARCHAR(50),
   CONFIRMFLAG          VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δȷ�ϣ�1����ȷ��,2:���μ�,���ϴ�����,3:���μ�',
   REMARK               VARCHAR(200),
   ISOK                 VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δȷ�ϣ�1����ȷ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL ,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGINFOID, MEETINGUSERID)
);

ALTER TABLE T_OA_MEETINGSTAFF COMMENT 'T_OA_MEETINGSTAFF';

/*==============================================================*/
/* Table: T_OA_MEETINGTEMPLATE                                  */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGTEMPLATE
(
   MEETINGTEMPLATEID    VARCHAR(50) NOT NULL,
   TEMPLATENAME         VARCHAR(100) NOT NULL,
   MEETINGTYPE          VARCHAR(100) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGTEMPLATEID)
);

ALTER TABLE T_OA_MEETINGTEMPLATE COMMENT 'T_OA_MEETINGTEMPLATE';

/*==============================================================*/
/* Table: T_OA_MEETINGTIMECHANGE                                */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGTIMECHANGE
(
   MEETINGTIMECHANGEID  VARCHAR(50) NOT NULL,
   MEETINGINFOID        VARCHAR(50) NOT NULL,
   STARTTIME            DATETIME NOT NULL,
   ENDTIME              DATETIME NOT NULL,
   REASON               VARCHAR(2000),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGTIMECHANGEID)
);

ALTER TABLE T_OA_MEETINGTIMECHANGE COMMENT 'T_OA_MEETINGTIMECHANGE';

/*==============================================================*/
/* Table: T_OA_MEETINGTYPE                                      */
/*==============================================================*/
CREATE TABLE T_OA_MEETINGTYPE
(
   MEETINGTYPEID        VARCHAR(50) NOT NULL,
   MEETINGTYPE          VARCHAR(100) NOT NULL,
   ISAUTO               VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0����1����',
   CYCLE                NUMERIC(8,0),
   REMINDDAY            NUMERIC(8,0),
   CONVENER             VARCHAR(50),
   CONVENERNAME         VARCHAR(50),
   CONTENT              LONGBLOB,
   REMARK               VARCHAR(1000),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MEETINGTYPE)
);

ALTER TABLE T_OA_MEETINGTYPE COMMENT 'T_OA_MEETINGTYPE';

/*==============================================================*/
/* Table: T_OA_ORDERMEAL                                        */
/*==============================================================*/
CREATE TABLE T_OA_ORDERMEAL
(
   ORDERMEALID          VARCHAR(50) NOT NULL,
   ORDERMEALTITLE       VARCHAR(100) NOT NULL,
   CONTENT              VARCHAR(1000) NOT NULL DEFAULT '0' COMMENT '0:δ����;1:�Ѷ���',
   REMARK               VARCHAR(2000),
   ORDERMEALFLAG        VARCHAR(1) NOT NULL COMMENT '0:ȡ����1���Ѷ�,2:����',
   TEL                  VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ORDERMEALID)
);

ALTER TABLE T_OA_ORDERMEAL COMMENT 'T_OA_ORDERMEAL';

/*==============================================================*/
/* Table: T_OA_ORGANIZATION                                     */
/*==============================================================*/
CREATE TABLE T_OA_ORGANIZATION
(
   ORGANIZATIONID       VARCHAR(50) NOT NULL,
   ORGCODE              VARCHAR(50) NOT NULL,
   ORGNAME              VARCHAR(200) NOT NULL,
   LEGALPERSON          VARCHAR(50) NOT NULL,
   ADDRESS              VARCHAR(200) NOT NULL,
   LICENCENO            VARCHAR(100) NOT NULL,
   BUSSINESSAREA        VARCHAR(1000) NOT NULL,
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���޷��ã�1���з���',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ORGCODE)
);

ALTER TABLE T_OA_ORGANIZATION COMMENT 'T_OA_ORGANIZATION';

/*==============================================================*/
/* Table: T_OA_PRIORITIES                                       */
/*==============================================================*/
CREATE TABLE T_OA_PRIORITIES
(
   PRIORITIESID         VARCHAR(50) NOT NULL,
   PRIORITIES           VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (PRIORITIES)
);

ALTER TABLE T_OA_PRIORITIES COMMENT 'T_OA_PRIORITIES';

/*==============================================================*/
/* Table: T_OA_PROGRAMAPPLICATIONS                              */
/*==============================================================*/
CREATE TABLE T_OA_PROGRAMAPPLICATIONS
(
   PROGRAMAPPLICATIONSID VARCHAR(50) NOT NULL COMMENT '����Ӧ��ID',
   TRAVELSOLUTIONSID    VARCHAR(50) COMMENT '����id',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL COMMENT '������˾',
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL COMMENT '��������',
   OWNERPOSTID          VARCHAR(50) NOT NULL COMMENT '������λ',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEDATE           DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   OWNERID              VARCHAR(50) COMMENT '������ID',
   PRIMARY KEY (PROGRAMAPPLICATIONSID)
);

ALTER TABLE T_OA_PROGRAMAPPLICATIONS COMMENT '�����Ӧ��';

/*==============================================================*/
/* Table: T_OA_REIMBURSEMENTDETAIL                              */
/*==============================================================*/
CREATE TABLE T_OA_REIMBURSEMENTDETAIL
(
   REIMBURSEMENTDETAILID VARCHAR(50) NOT NULL COMMENT 'REIMBURSEMENTDETAILID',
   TRAVELREIMBURSEMENTID VARCHAR(50) COMMENT '�����ID',
   STARTDATE            DATETIME COMMENT '��ʼʱ��',
   ENDDATE              DATETIME COMMENT '����ʱ��',
   DEPCITY              VARCHAR(50) NOT NULL COMMENT 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DESTCITY             VARCHAR(50) NOT NULL COMMENT 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   BUSINESSDAYS         VARCHAR(50) COMMENT '�ܼƳ����ʱ��',
   TYPEOFTRAVELTOOLS    VARCHAR(50) COMMENT '�����Ľ�ͨ��������',
   TAKETHETOOLLEVEL     VARCHAR(50) COMMENT '��ͨ���ߵļ���(���磺�ɻ�ͷ�Ȳ�)',
   TRANSPORTCOSTS       NUMERIC(8,0) COMMENT '������ͨ���߷���',
   ACCOMMODATION        NUMERIC(8,0) COMMENT 'ס�޲�������',
   TRANSPORTATIONSUBSIDIES NUMERIC(8,0) COMMENT '��ͨ��������',
   MEALSUBSIDIES        NUMERIC(8,0) COMMENT '�ͷѲ���',
   OTHERCOSTS           NUMERIC(8,0) COMMENT '��������',
   PRIVATEAFFAIR        VARCHAR(1) COMMENT '˽��',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATEDATE           DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   GOOUTTOMEET          VARCHAR(1),
   COMPANYCAR           VARCHAR(1) COMMENT '��˾�ɳ�',
   THENUMBEROFNIGHTS    VARCHAR(50) COMMENT 'ס������',
   STARTCITYNAME        VARCHAR(2000),
   ENDCITYNAME          VARCHAR(2000),
   COMPUTINGTIME        VARCHAR(50) COMMENT '�ܼƳ����ʱ��',
   PRIMARY KEY (REIMBURSEMENTDETAILID)
);

ALTER TABLE T_OA_REIMBURSEMENTDETAIL COMMENT '������ӱ�';

/*==============================================================*/
/* Table: T_OA_REQUIRE                                          */
/*==============================================================*/
CREATE TABLE T_OA_REQUIRE
(
   REQUIREID            VARCHAR(50) NOT NULL,
   REQUIREMASTERID      VARCHAR(50) NOT NULL,
   APPTITLE             VARCHAR(100) NOT NULL,
   CONTENT              VARCHAR(2000) NOT NULL,
   STARTDATE            DATETIME NOT NULL,
   ENDDATE              DATETIME NOT NULL,
   OPTFLAG              VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���ɲ��1������',
   WAY                  VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��������1��ʵ��',
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (REQUIREID)
);

ALTER TABLE T_OA_REQUIRE COMMENT 'T_OA_REQUIRE';

/*==============================================================*/
/* Table: T_OA_REQUIREDETAIL                                    */
/*==============================================================*/
CREATE TABLE T_OA_REQUIREDETAIL
(
   REQUIREDETAILID      VARCHAR(50) NOT NULL,
   REQUIREMASTERID      VARCHAR(50),
   SUBJECTID            NUMERIC(8,0) NOT NULL COMMENT '��Ŀ˳���',
   CODE                 VARCHAR(100) NOT NULL COMMENT '����ʾ���룬��1��2��3��A��B��C',
   CONTENT              VARCHAR(200) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (REQUIREDETAILID)
);

ALTER TABLE T_OA_REQUIREDETAIL COMMENT 'T_OA_REQUIREDETAIL';

/*==============================================================*/
/* Table: T_OA_REQUIREDETAIL2                                   */
/*==============================================================*/
CREATE TABLE T_OA_REQUIREDETAIL2
(
   REQUIREDETAIL2ID     VARCHAR(50) NOT NULL,
   REQUIREMASTERID      VARCHAR(50) NOT NULL,
   SUBJECTID            NUMERIC(8,0) NOT NULL,
   CONTENT              VARCHAR(200) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (REQUIREMASTERID, SUBJECTID)
);

ALTER TABLE T_OA_REQUIREDETAIL2 COMMENT 'T_OA_REQUIREDETAIL2';

/*==============================================================*/
/* Table: T_OA_REQUIREDISTRIBUTE                                */
/*==============================================================*/
CREATE TABLE T_OA_REQUIREDISTRIBUTE
(
   REQUIREDISTRIBUTEID  VARCHAR(50) NOT NULL,
   REQUIREID            VARCHAR(50) NOT NULL,
   DISTRIBUTETITLE      VARCHAR(100) NOT NULL,
   CONTENT              VARCHAR(2000) NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (REQUIREDISTRIBUTEID)
);

ALTER TABLE T_OA_REQUIREDISTRIBUTE COMMENT 'T_OA_REQUIREDISTRIBUTE';

/*==============================================================*/
/* Table: T_OA_REQUIREMASTER                                    */
/*==============================================================*/
CREATE TABLE T_OA_REQUIREMASTER
(
   REQUIREMASTERID      VARCHAR(50) NOT NULL,
   REQUIRETITLE         VARCHAR(100) NOT NULL,
   CONTENT              TEXT NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (REQUIREMASTERID)
);

ALTER TABLE T_OA_REQUIREMASTER COMMENT 'T_OA_REQUIREMASTER';

/*==============================================================*/
/* Table: T_OA_REQUIRERESULT                                    */
/*==============================================================*/
CREATE TABLE T_OA_REQUIRERESULT
(
   REQUIRERESULTID      VARCHAR(50) NOT NULL,
   REQUIREID            VARCHAR(50) NOT NULL,
   REQUIREMASTERID      VARCHAR(50) NOT NULL,
   SUBJECTID            NUMERIC(8,0) NOT NULL,
   RESULT               VARCHAR(200) NOT NULL,
   CONTENT              VARCHAR(500),
   UPDATEDATE           DATETIME,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   CODE                 VARCHAR(50),
   PRIMARY KEY (REQUIRERESULTID)
);

ALTER TABLE T_OA_REQUIRERESULT COMMENT 'T_OA_REQUIRERESULT';

/*==============================================================*/
/* Table: T_OA_SATISFACTIONDETAIL                               */
/*==============================================================*/
CREATE TABLE T_OA_SATISFACTIONDETAIL
(
   SATISFACTIONDETAILID VARCHAR(50) NOT NULL,
   SATISFACTIONMASTERID VARCHAR(50) NOT NULL,
   SUBJECTID            NUMERIC(8,0) NOT NULL,
   CONTENT              VARCHAR(200) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SATISFACTIONMASTERID, SUBJECTID)
);

ALTER TABLE T_OA_SATISFACTIONDETAIL COMMENT 'T_OA_SATISFACTIONDETAIL';

/*==============================================================*/
/* Table: T_OA_SATISFACTIONDISTRIBUTE                           */
/*==============================================================*/
CREATE TABLE T_OA_SATISFACTIONDISTRIBUTE
(
   SATISFACTIONDISTRIBUTEID VARCHAR(50) NOT NULL,
   SATISFACTIONREQUIREID VARCHAR(50) NOT NULL,
   DISTRIBUTETITLE      VARCHAR(100) NOT NULL,
   CONTENT              VARCHAR(2000) NOT NULL,
   ANSWERID             VARCHAR(50) NOT NULL COMMENT '����ѡ�д�ID���ϵ�Ϊ�����������',
   PERCENTAGE           NUMERIC(8,0) NOT NULL DEFAULT 0 COMMENT '���ðٷֱȶ���Ϊ����',
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SATISFACTIONDISTRIBUTEID)
);

ALTER TABLE T_OA_SATISFACTIONDISTRIBUTE COMMENT 'T_OA_SATISFACTIONDISTRIBUTE';

/*==============================================================*/
/* Table: T_OA_SATISFACTIONMASTER                               */
/*==============================================================*/
CREATE TABLE T_OA_SATISFACTIONMASTER
(
   SATISFACTIONMASTERID VARCHAR(50) NOT NULL,
   SATISFACTIONTITLE    VARCHAR(100) NOT NULL,
   CONTENT              TEXT NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SATISFACTIONMASTERID)
);

ALTER TABLE T_OA_SATISFACTIONMASTER COMMENT 'T_OA_SATISFACTIONMASTER';

/*==============================================================*/
/* Table: T_OA_SATISFACTIONREQUIRE                              */
/*==============================================================*/
CREATE TABLE T_OA_SATISFACTIONREQUIRE
(
   SATISFACTIONREQUIREID VARCHAR(50) NOT NULL,
   SATISFACTIONMASTERID VARCHAR(50) NOT NULL,
   SATISFACTIONTITLE    VARCHAR(100) NOT NULL,
   CONTENT              VARCHAR(2000) NOT NULL,
   ANSWERGROUPID        VARCHAR(50) NOT NULL,
   STARTDATE            DATETIME NOT NULL,
   ENDDATE              DATETIME NOT NULL,
   OPTFLAG              VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���ɲ��1������',
   WAY                  VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��������1��ʵ��',
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SATISFACTIONREQUIREID)
);

ALTER TABLE T_OA_SATISFACTIONREQUIRE COMMENT 'T_OA_SATISFACTIONREQUIRE';

/*==============================================================*/
/* Table: T_OA_SATISFACTIONRESULT                               */
/*==============================================================*/
CREATE TABLE T_OA_SATISFACTIONRESULT
(
   SATISFACTIONRESULTID VARCHAR(50) NOT NULL,
   SATISFACTIONREQUIREID VARCHAR(50) NOT NULL,
   SUBJECTID            NUMERIC(8,0) NOT NULL,
   RESULT               VARCHAR(200) NOT NULL,
   CONTENT              VARCHAR(500),
   UPDATEDATE           DATETIME,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   PRIMARY KEY (SATISFACTIONRESULTID)
);

ALTER TABLE T_OA_SATISFACTIONRESULT COMMENT 'T_OA_SATISFACTIONRESULT';

/*==============================================================*/
/* Table: T_OA_SENDDOC                                          */
/*==============================================================*/
CREATE TABLE T_OA_SENDDOC
(
   SENDDOCID            VARCHAR(50) NOT NULL,
   GRADED               VARCHAR(50),
   PRIORITIES           VARCHAR(50),
   SENDDOCTITLE         VARCHAR(100),
   KEYWORDS             VARCHAR(50),
   SEND                 VARCHAR(200),
   CC                   VARCHAR(200),
   SENDDOCTYPE          VARCHAR(50),
   CONTENT              LONGBLOB,
   DEPARTID             VARCHAR(50),
   NUM                  VARCHAR(100),
   TEL                  VARCHAR(50),
   CHECKSTATE           VARCHAR(1) DEFAULT '0' COMMENT '0:δ�ύ;1:�����У�2������ͨ����3��δͨ��',
   ISDISTRIBUTE         VARCHAR(1) COMMENT '0:δ�ַ���1���ѷַ�',
   ISSAVE               VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:δ�鵵��1���ѹ鵵',
   OWNERID              VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PUBLISHDATE          DATETIME COMMENT '����ʱ��',
   ISREDDOC             VARCHAR(1) DEFAULT '0',
   ISTOP                VARCHAR(1) DEFAULT '0' COMMENT '�Ƿ��ö���0���ö� 1�ö�',
   TOPSTARTDATE         DATETIME COMMENT '�ö���ʼ����',
   TOPENDDATE           DATETIME COMMENT '�ö���������',
   PRIMARY KEY (SENDDOCID)
);

ALTER TABLE T_OA_SENDDOC COMMENT 'T_OA_SENDDOC';

/*==============================================================*/
/* Table: T_OA_SENDDOCTEMPLATE                                  */
/*==============================================================*/
CREATE TABLE T_OA_SENDDOCTEMPLATE
(
   SENDDOCTEMPLATEID    VARCHAR(50) NOT NULL,
   TEMPLATENAME         VARCHAR(50) NOT NULL,
   GRADED               VARCHAR(50) NOT NULL,
   PRIORITIES           VARCHAR(50) NOT NULL,
   SENDDOCTITLE         VARCHAR(100) NOT NULL,
   SENDDOCTYPE          VARCHAR(50) NOT NULL,
   CONTENT              LONGBLOB NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SENDDOCTEMPLATEID)
);

ALTER TABLE T_OA_SENDDOCTEMPLATE COMMENT 'T_OA_SENDDOCTEMPLATE';

/*==============================================================*/
/* Table: T_OA_SENDDOCTYPE                                      */
/*==============================================================*/
CREATE TABLE T_OA_SENDDOCTYPE
(
   SENDDOCTYPEID        VARCHAR(50) NOT NULL,
   SENDDOCTYPE          VARCHAR(50) NOT NULL,
   OPTFLAG              VARCHAR(1) NOT NULL COMMENT '0:���鵵��1:�鵵',
   REMARK               VARCHAR(200) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SENDDOCTYPE)
);

ALTER TABLE T_OA_SENDDOCTYPE COMMENT 'T_OA_SENDDOCTYPE';

/*==============================================================*/
/* Table: T_OA_TAKETHESTANDARDTRANSPORT                         */
/*==============================================================*/
CREATE TABLE T_OA_TAKETHESTANDARDTRANSPORT
(
   TAKETHESTANDARDTRANSPORTID VARCHAR(50) NOT NULL COMMENT 'ID',
   TRAVELSOLUTIONSID    VARCHAR(50) COMMENT '����id',
   STARTPOSTLEVEL       VARCHAR(50) COMMENT '��λ�ĵȼ����磨H����',
   ENDPOSTLEVEL         VARCHAR(100) COMMENT '��λ�ĵȼ����磨H����',
   LANDTIME             NUMERIC(8,0) COMMENT '½·����ʱ�䣬�ӷɻ���·�������������',
   TYPEOFTRAVELTOOLS    VARCHAR(50) COMMENT '���ߵ�����(�磺�ɻ�)',
   TAKETHETOOLLEVEL     VARCHAR(50) COMMENT '���磺�ɻ���ͷ�Ȳգ�',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEDATE           DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   PRIMARY KEY (TAKETHESTANDARDTRANSPORTID)
);

ALTER TABLE T_OA_TAKETHESTANDARDTRANSPORT COMMENT '���ͨ���߳�����׼����';

/*==============================================================*/
/* Table: T_OA_TRAVELREIMBURSEMENT                              */
/*==============================================================*/
CREATE TABLE T_OA_TRAVELREIMBURSEMENT
(
   TRAVELREIMBURSEMENTID VARCHAR(50) NOT NULL COMMENT '�����ID',
   BUSINESSREPORTID     VARCHAR(50) COMMENT '�����ID',
   CLAIMSWERE           VARCHAR(50) COMMENT '������',
   CLAIMSWERENAME       VARCHAR(50) COMMENT '��������',
   REIMBURSEMENTTIME    DATETIME  COMMENT '����ʱ��',
   COMPUTINGTIME        VARCHAR(50) COMMENT '�ܼƳ����ʱ��',
   TEL                  VARCHAR(50) COMMENT '��ϵ�绰',
   THETOTALCOST         NUMERIC(8,0) COMMENT '���γ���ķ����ܺ�',
   REIMBURSEMENTOFCOSTS NUMERIC(8,0) COMMENT '���γ���ı��������ܺ�',
   CHECKSTATE           VARCHAR(1) DEFAULT '0' COMMENT '0��δ�ύ��1������У�2�����ͨ����3�����δͨ��',
   REMARKS              VARCHAR(1000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '������ID',
   OWNERNAME            VARCHAR(50) COMMENT '����������',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λ',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEUSERNAME       VARCHAR(50) COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '������λID',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   NOBUDGETCLAIMS       VARCHAR(50),
   BUSINESSTRIPID       VARCHAR(50) COMMENT '��������ID',
   CONTENT              VARCHAR(2000) COMMENT '��������',
   OWNERPOSTNAME        VARCHAR(2000),
   OWNERDEPARTMENTNAME  VARCHAR(2000),
   OWNERCOMPANYNAME     VARCHAR(2000),
   POSTLEVEL            VARCHAR(2000),
   STARTCITYNAME        VARCHAR(2000),
   ENDCITYNAME          VARCHAR(2000),
   ISFROMWP             VARCHAR(2000) COMMENT '���Թ����ƻ�',
   PRIMARY KEY (TRAVELREIMBURSEMENTID)
);

ALTER TABLE T_OA_TRAVELREIMBURSEMENT COMMENT '�����';

/*==============================================================*/
/* Table: T_OA_TRAVELSOLUTIONS                                  */
/*==============================================================*/
CREATE TABLE T_OA_TRAVELSOLUTIONS
(
   TRAVELSOLUTIONSID    VARCHAR(50) NOT NULL COMMENT '����id',
   PROGRAMMENAME        VARCHAR(50) COMMENT '���������Ƿ���һ��',
   ANDFROMTHATDAY       VARCHAR(50) COMMENT '���������Ƿ���һ��',
   CUSTOMDAY            VARCHAR(20) COMMENT '����Сʱ��һ��',
   CUSTOMHALFDAY        VARCHAR(20) COMMENT '����Сʱ�����',
   RANGEPOSTLEVEL       VARCHAR(20) NOT NULL COMMENT '����һ������Ĳ���������ñ���',
   RANGEDAYS            VARCHAR(20) NOT NULL COMMENT '���ٷ�Χ���������ܹ�����',
   MAXIMUMRANGEDAYS     VARCHAR(20) NOT NULL COMMENT '�����������',
   MINIMUMINTERVALDAYS  VARCHAR(20) NOT NULL COMMENT '������С����',
   INTERVALRATIO        VARCHAR(20) NOT NULL COMMENT '�������',
   OWNERCOMPANYID       VARCHAR(50) NOT NULL COMMENT '������˾',
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL COMMENT '��������',
   OWNERPOSTID          VARCHAR(50) NOT NULL COMMENT '������λ',
   CREATEUSERID         VARCHAR(50) NOT NULL COMMENT '������',
   CREATEUSERNAME       VARCHAR(50) NOT NULL COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) NOT NULL COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) NOT NULL COMMENT '������λID',
   CREATEDATE           DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�����',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   NOALLOWANCEPOSTLEVEL VARCHAR(50) COMMENT '�޲�������С��λ����',
   PRIMARY KEY (TRAVELSOLUTIONSID)
);

ALTER TABLE T_OA_TRAVELSOLUTIONS COMMENT '�����';

/*==============================================================*/
/* Table: T_OA_VEHICLE                                          */
/*==============================================================*/
CREATE TABLE T_OA_VEHICLE
(
   VEHICLEID            VARCHAR(50) NOT NULL,
   ASSETID              VARCHAR(50) NOT NULL,
   VEHICLEMODEL         VARCHAR(50) NOT NULL,
   VIN                  VARCHAR(50) NOT NULL,
   VEHICLEBRANDS        VARCHAR(50) NOT NULL,
   VEHICLETYPE          VARCHAR(50) NOT NULL,
   WEIGHT               NUMERIC(8,0),
   SEATQUANTITY         NUMERIC(8,0),
   BUYDATE              DATETIME NOT NULL,
   BUYPRICE             NUMERIC(8,0) NOT NULL,
   INITIALRANGE         NUMERIC(8,0) NOT NULL,
   INTERVALRANGE        NUMERIC(8,0) NOT NULL,
   MAINTENANCECYCLE     NUMERIC(8,0) NOT NULL,
   MAINTENANCEREMIND    NUMERIC(8,0) NOT NULL,
   MAINTAINCOMPANY      VARCHAR(50) NOT NULL,
   MAINTAINTEL          VARCHAR(50) NOT NULL,
   COMPANYID            VARCHAR(50) NOT NULL,
   VEHICLEFLAG          VARCHAR(1) DEFAULT '0' COMMENT '0:δʹ�ã�1����ʹ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ASSETID)
);

ALTER TABLE T_OA_VEHICLE COMMENT 'T_OA_VEHICLE';

/*==============================================================*/
/* Table: T_OA_VEHICLECARD                                      */
/*==============================================================*/
CREATE TABLE T_OA_VEHICLECARD
(
   VEHICLECARDID        VARCHAR(50) NOT NULL,
   ASSETID              VARCHAR(50) NOT NULL,
   CARDNAME             VARCHAR(50) NOT NULL,
   CARDTYPE             VARCHAR(50) NOT NULL,
   EFFECTDATE           DATETIME NOT NULL,
   INVALIDDATE          DATETIME NOT NULL,
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CONTENT              VARCHAR(200) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (VEHICLECARDID)
);

ALTER TABLE T_OA_VEHICLECARD COMMENT 'T_OA_VEHICLECARD';

/*==============================================================*/
/* Table: T_OA_VEHICLEDISPATCH                                  */
/*==============================================================*/
CREATE TABLE T_OA_VEHICLEDISPATCH
(
   VEHICLEDISPATCHID    VARCHAR(50) NOT NULL,
   ASSETID              VARCHAR(50),
   STARTTIME            DATETIME NOT NULL,
   ENDTIME              DATETIME NOT NULL,
   NUM                  VARCHAR(50) NOT NULL DEFAULT '1',
   ROUTE                VARCHAR(200) NOT NULL,
   DRIVER               VARCHAR(50) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(200),
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   ISCANCEL             VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0��ȡ����1������',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (VEHICLEDISPATCHID)
);

ALTER TABLE T_OA_VEHICLEDISPATCH COMMENT 'T_OA_VEHICLEDISPATCH';

/*==============================================================*/
/* Table: T_OA_VEHICLEDISPATCHDETAIL                            */
/*==============================================================*/
CREATE TABLE T_OA_VEHICLEDISPATCHDETAIL
(
   VEHICLEDISPATCHDETAILID VARCHAR(50) NOT NULL,
   VEHICLEDISPATCHID    VARCHAR(50) NOT NULL,
   VEHICLEUSEAPPID      VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (VEHICLEDISPATCHDETAILID)
);

ALTER TABLE T_OA_VEHICLEDISPATCHDETAIL COMMENT 'T_OA_VEHICLEDISPATCHDETAIL';

/*==============================================================*/
/* Table: T_OA_VEHICLEDISPATCHRECORD                            */
/*==============================================================*/
CREATE TABLE T_OA_VEHICLEDISPATCHRECORD
(
   VEHICLEDISPATCHRECORDID VARCHAR(50) NOT NULL,
   VEHICLEDISPATCHDETAILID VARCHAR(50) NOT NULL,
   STARTTIME            DATETIME NOT NULL,
   ENDTIME              DATETIME NOT NULL,
   NUM                  VARCHAR(50) NOT NULL DEFAULT '1',
   ROUTE                VARCHAR(200) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   FUEL                 NUMERIC(8,0) NOT NULL,
   THISRANGE            NUMERIC(8,0) NOT NULL,
   CONTENT              VARCHAR(200),
   ISCHARGE             VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0���޷��ã�1���з���',
   CHARGEMONEY          NUMERIC(8,0) DEFAULT 0,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (VEHICLEDISPATCHRECORDID)
);

ALTER TABLE T_OA_VEHICLEDISPATCHRECORD COMMENT 'T_OA_VEHICLEDISPATCHRECORD';

/*==============================================================*/
/* Table: T_OA_VEHICLEUSEAPP                                    */
/*==============================================================*/
CREATE TABLE T_OA_VEHICLEUSEAPP
(
   VEHICLEUSEAPPID      VARCHAR(50) NOT NULL,
   STARTTIME            DATETIME NOT NULL,
   ENDTIME              DATETIME NOT NULL,
   NUM                  VARCHAR(50) NOT NULL DEFAULT '1',
   ROUTE                VARCHAR(200) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   CONTENT              VARCHAR(200),
   DEPARTMENTID         VARCHAR(50) NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (VEHICLEUSEAPPID)
);

ALTER TABLE T_OA_VEHICLEUSEAPP COMMENT 'T_OA_VEHICLEUSEAPP';

/*==============================================================*/
/* Table: T_OA_VIEWSENDDOC                                      */
/*==============================================================*/
CREATE TABLE T_OA_VIEWSENDDOC
(
   VIEWSENDDOCID        VARCHAR(50) NOT NULL,
   SENDDOCID            VARCHAR(50),
   OWNERID              VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   OWNERCOMPANYNAME     VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERDEPARTMENTNAME  VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERPOSTNAME        VARCHAR(50),
   CREATEDATE           DATETIME,
   ISVIEW               VARCHAR(2) COMMENT '�Ƿ�鿴 0��δ�鿴 1���Ѳ鿴',
   CREATEUSERID         VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   PRIMARY KEY (VIEWSENDDOCID)
);

ALTER TABLE T_OA_VIEWSENDDOC COMMENT 'T_OA_VIEWSENDDOC';

/*==============================================================*/
/* Table: T_OA_WELFAREDETAIL                                    */
/*==============================================================*/
CREATE TABLE T_OA_WELFAREDETAIL
(
   WELFAREDETAILID      VARCHAR(50) NOT NULL,
   WELFAREID            VARCHAR(50) NOT NULL,
   POSTID               VARCHAR(50),
   POSTLEVELA           VARCHAR(50),
   POSTLEVELB           VARCHAR(50),
   ISLEVEL              VARCHAR(1) NOT NULL COMMENT '0����λ��1������',
   STANDARD             NUMERIC(8,0) DEFAULT 0,
   REMARK               VARCHAR(1000),
   PRIMARY KEY (WELFAREDETAILID)
);

ALTER TABLE T_OA_WELFAREDETAIL COMMENT 'T_OA_WELFAREDETAIL';

/*==============================================================*/
/* Table: T_OA_WELFAREDISTRIBUTEDETAIL                          */
/*==============================================================*/
CREATE TABLE T_OA_WELFAREDISTRIBUTEDETAIL
(
   WELFAREDISTRIBUTEDETAILID VARCHAR(50) NOT NULL,
   WELFAREDISTRIBUTEMASTERID VARCHAR(50),
   USERID               VARCHAR(50) NOT NULL,
   STANDARD             NUMERIC(8,0) DEFAULT 0,
   REMARK               VARCHAR(1000),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (WELFAREDISTRIBUTEDETAILID)
);

ALTER TABLE T_OA_WELFAREDISTRIBUTEDETAIL COMMENT '��������׼����ÿ���˱��η��ż�¼';

/*==============================================================*/
/* Table: T_OA_WELFAREDISTRIBUTEMASTER                          */
/*==============================================================*/
CREATE TABLE T_OA_WELFAREDISTRIBUTEMASTER
(
   WELFAREDISTRIBUTEMASTERID VARCHAR(50) NOT NULL,
   WELFAREID            VARCHAR(50),
   WELFAREDISTRIBUTETITLE VARCHAR(1000) NOT NULL,
   DISTRIBUTEDATE       DATETIME NOT NULL,
   CONTENT              VARCHAR(2000) NOT NULL,
   ISWAGE               VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0:���湤�ʷ���1���湤�ʷ�',
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (WELFAREDISTRIBUTEMASTERID)
);

ALTER TABLE T_OA_WELFAREDISTRIBUTEMASTER COMMENT 'T_OA_WELFAREDISTRIBUTEMASTER';

/*==============================================================*/
/* Table: T_OA_WELFAREDISTRIBUTEUNDO                            */
/*==============================================================*/
CREATE TABLE T_OA_WELFAREDISTRIBUTEUNDO
(
   WELFAREDISTRIBUTEUNDOID VARCHAR(50) NOT NULL,
   WELFAREDISTRIBUTEMASTERID VARCHAR(50) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   CHECKSTATE           VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   REMARK               VARCHAR(2000) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (WELFAREDISTRIBUTEUNDOID)
);

ALTER TABLE T_OA_WELFAREDISTRIBUTEUNDO COMMENT 'T_OA_WELFAREDISTRIBUTEUNDO';

/*==============================================================*/
/* Table: T_OA_WELFAREMASERT                                    */
/*==============================================================*/
CREATE TABLE T_OA_WELFAREMASERT
(
   WELFAREID            VARCHAR(50) NOT NULL,
   WELFAREPROID         VARCHAR(50) NOT NULL,
   TEL                  VARCHAR(50) NOT NULL,
   STARTDATE            DATETIME NOT NULL,
   ENDDATE              DATETIME,
   REMARK               VARCHAR(1000),
   CHECKSTATE           VARCHAR(1) NOT NULL COMMENT '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   COMPANYID            VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL ,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (WELFAREID)
);

ALTER TABLE T_OA_WELFAREMASERT COMMENT 'T_OA_WELFAREMASERT';

/*==============================================================*/
/* Table: T_OA_WORKRECORD                                       */
/*==============================================================*/
CREATE TABLE T_OA_WORKRECORD
(
   WORKRECORDID         VARCHAR(50) NOT NULL,
   TITLE                VARCHAR(50) NOT NULL,
   PLANTIME             DATETIME NOT NULL,
   CONTENT              VARCHAR(4000) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (WORKRECORDID)
);

ALTER TABLE T_OA_WORKRECORD COMMENT 'T_OA_WORKRECORD';

/*==============================================================*/
/* Table: T_PF_MODULEDEPENDS                                    */
/*==============================================================*/
CREATE TABLE T_PF_MODULEDEPENDS
(
   DEPENDID             VARCHAR(50) NOT NULL COMMENT '��������ϵͳID��������Ŀ���ܻ��ж�������',
   MODULEID             VARCHAR(50) NOT NULL COMMENT '����ĿID',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (DEPENDID, MODULEID)
);

ALTER TABLE T_PF_MODULEDEPENDS COMMENT '����Ŀ������,ָ����Ŀ��������ϵ.�ڼ��ع����н�������������';

/*==============================================================*/
/* Table: T_PF_MODULEINFO                                       */
/*==============================================================*/
CREATE TABLE T_PF_MODULEINFO
(
   MODULEID             VARCHAR(50) NOT NULL COMMENT '����ĿID',
   MODULECODE           VARCHAR(50) NOT NULL COMMENT '����Ŀ���',
   MODULENAME           VARCHAR(200) NOT NULL COMMENT '����Ŀ����',
   MODULETYPE           VARCHAR(500) COMMENT 'ģ�����ͣ�Typeȫ�ƣ�����DLL�汾��Ϣ
            EG:
            TopNamespace.SubNameSpace.ContainingClass+NestedClass, MyAssembly, Version=1.3.0.0, Culture=neutral, PublicKeyToken=b17a5c561934e089',
   PARENTMODULEID       VARCHAR(50) COMMENT '������ģ��ID������Ϊ��',
   MODULEICON           VARCHAR(200) COMMENT 'ͼ���ַ',
   VERSION              VARCHAR(500) NOT NULL COMMENT '��ǰ�汾�ţ��汾������Ŀ�����ļ��й�ϵ��',
   FILENAME             VARCHAR(200) COMMENT '�ļ�����',
   FILEPATH             VARCHAR(200) COMMENT '�ļ�·��',
   ENTERASSEMBLY        VARCHAR(200) COMMENT '��ڳ���',
   ISSAVE               VARCHAR(1) DEFAULT '1' COMMENT '�Ƿ�־û� 0:�����г־û�   1:�־û�',
   CLIENTID             VARCHAR(200) COMMENT '�ͻ���ID',
   SERVERID             VARCHAR(200) COMMENT '�����ID',
   USESTATE             VARCHAR(1) DEFAULT '0' COMMENT 'ʹ��״̬ 0:δ���� 1:����',
   HOSTADDRESS          VARCHAR(200) COMMENT '��Ŀ����������ַ',
   DESCRIPTION          VARCHAR(2000) COMMENT '��ǰ�汾������Ϣ�����º����Ϣ��д����ʷ��¼��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MODULEID)
);

ALTER TABLE T_PF_MODULEINFO COMMENT 'ƽ̨������ģ����Ϣ���ñ����г�������Ա�д�ϵͳȨ��';

/*==============================================================*/
/* Table: T_PF_MODULEUPDATELOG                                  */
/*==============================================================*/
CREATE TABLE T_PF_MODULEUPDATELOG
(
   MODULELOGID          VARCHAR(50) NOT NULL COMMENT '���¼�¼ID',
   MODULEID             VARCHAR(50) COMMENT '����ĿID',
   VERSION              VARCHAR(50) COMMENT '�汾ID������Ŀ�ĸ��°汾���汾������Ŀ�����ļ��й�ϵ��',
   DESCRIPTION          VARCHAR(2000) COMMENT '�汾������Ϣ���Ե�ǰ�汾�������ݽ���������',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MODULELOGID)
);

ALTER TABLE T_PF_MODULEUPDATELOG COMMENT '��ϵͳ���¼�¼�����ڼ�¼��ǰϵͳ�ĸ�����Ϣ���˼�¼�������ڲ鿴ϵͳ����ʷ�汾�͸�����Ϣ��';

/*==============================================================*/
/* Table: T_PF_MODULE_RESOURCE                                  */
/*==============================================================*/
CREATE TABLE T_PF_MODULE_RESOURCE
(
   MODULEINFOID         VARCHAR(50) NOT NULL COMMENT '����ID',
   RESOURCEID           VARCHAR(50) COMMENT '��ԴID',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MODULEINFOID)
);

ALTER TABLE T_PF_MODULE_RESOURCE COMMENT 'ϵͳ-��Դ��ϵ��';

/*==============================================================*/
/* Table: T_PF_PUBLICPART                                       */
/*==============================================================*/
CREATE TABLE T_PF_PUBLICPART
(
   PARTID               VARCHAR(50) NOT NULL COMMENT '���ID',
   MODULEID             VARCHAR(50) COMMENT '����ĿID',
   PARTKEY              VARCHAR(50) COMMENT 'Ψһ',
   PIOCPATH             VARCHAR(200) COMMENT 'ͼ��·��',
   TITEL                VARCHAR(200) NOT NULL COMMENT '����',
   FULLNAME             VARCHAR(200) NOT NULL COMMENT '����·��',
   ASSEMPLYNAME         VARCHAR(200) NOT NULL COMMENT '����������',
   PARAMS               VARCHAR(500) COMMENT '��ʼ����',
   SMTPFTATE            VARCHAR(1) NOT NULL DEFAULT '0' COMMENT 'ʹ��״̬  0: δ���� 1:  ����',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (PARTID)
);

ALTER TABLE T_PF_PUBLICPART COMMENT 'ϵͳ����������ṩ��ϵͳ��Ĺ������ģ�顣';

/*==============================================================*/
/* Table: T_PF_RESOURCE                                         */
/*==============================================================*/
CREATE TABLE T_PF_RESOURCE
(
   RESOURCEID           VARCHAR(50) NOT NULL COMMENT '��ԴID',
   RESOURCENAME         VARCHAR(50) COMMENT '��Դ����',
   FILEPATH             VARCHAR(50) COMMENT '��Դ·��',
   VERSION              VARCHAR(50) COMMENT '��Դ�汾',
   TYPE                 VARCHAR(50) COMMENT '��Դ����',
   STATE                VARCHAR(50) DEFAULT '0' COMMENT '��Դ״̬
            0:δ����
            1:����',
   DESCRIPTION          VARCHAR(2000) COMMENT '��Դ����',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (RESOURCEID)
);

ALTER TABLE T_PF_RESOURCE COMMENT 'ϵͳ��Դ�����';

/*==============================================================*/
/* Table: T_PF_RESOURCEHOST                                     */
/*==============================================================*/
CREATE TABLE T_PF_RESOURCEHOST
(
   HOSTID               VARCHAR(50) NOT NULL COMMENT '����ID,Ψһ,����',
   HOSTNAME             VARCHAR(50) COMMENT '��Դ��������',
   HOSTADDRESS          VARCHAR(200) COMMENT '������ַ�����ڸ���������ַ����ͬ��',
   DESCRIPTION          VARCHAR(500) COMMENT '������Ϣ������������ĸ�Ҫ����',
   HOSTVERSION          VARCHAR(50) COMMENT '�����汾,������ǰ�������汾.',
   ISMAINHOST           VARCHAR(1) DEFAULT '0' COMMENT '�������������Ϊ������������������������������������������Դͬ����
            0��������������Ĭ��
            1����������',
   ISACCESS             VARCHAR(1) DEFAULT '0' COMMENT '�����Ƿ񿪷Ÿ��������ʣ����ɷ���״̬�£�������������֪ͨ�ӷ��������и��¡�
            0�����ɷ��ʣ�Ĭ��
            1���ɷ���',
   SYNCDATE             DATETIME COMMENT '���ͬ��ʱ�䡣���������������ӷ������ĸ���ʱ����졣',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (HOSTID)
);

ALTER TABLE T_PF_RESOURCEHOST COMMENT '��Դ�����������б����ڼ�¼�ֲ�ʽ���漰����������Ϣ���������ӷ�������ͬ�����¡�';

/*==============================================================*/
/* Table: T_PF_RESOURCEMAPPING                                  */
/*==============================================================*/
CREATE TABLE T_PF_RESOURCEMAPPING
(
   MAPPINGID            VARCHAR(50) NOT NULL,
   HOSTID               VARCHAR(50) COMMENT '����ID,Ψһ,����',
   STARTIP              VARCHAR(50),
   ENDIP                VARCHAR(50),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (MAPPINGID)
);

ALTER TABLE T_PF_RESOURCEMAPPING COMMENT '��Դ����ӳ����ʷ�Χ,������Դ���������Զ�Ӧ����ɷ��ʵ�IP��Χ�����û�IP���������¼�У���Ĭ��ָ������Դ������';

/*==============================================================*/
/* Table: T_PF_SHORTCUT                                         */
/*==============================================================*/
CREATE TABLE T_PF_SHORTCUT
(
   SHORTCUTID           VARCHAR(50) NOT NULL COMMENT '��ݼ�ID',
   MODULEID             VARCHAR(50) COMMENT '����ĿID',
   TITEL                VARCHAR(200) NOT NULL COMMENT '����',
   ASSEMPLYNAME         VARCHAR(200) NOT NULL COMMENT '����������',
   ICONPATH             VARCHAR(200) COMMENT 'ͼ��·��',
   FULLNAME             VARCHAR(200) NOT NULL COMMENT '����·��',
   ISSYSNEED            VARCHAR(1) DEFAULT '0' COMMENT '�Ƿ��ɾ��
            0:�����ԣ�1������',
   PARAMS               VARCHAR(500) COMMENT '��ʼ����',
   USERSTATE            VARCHAR(1) NOT NULL DEFAULT '0' COMMENT 'ʹ��״̬
            0:δ����  1:����',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (SHORTCUTID)
);

ALTER TABLE T_PF_SHORTCUT COMMENT 'ƽ̨��ݷ�ʽ';

/*==============================================================*/
/* Table: T_PF_SYSTEMCONFIG                                     */
/*==============================================================*/
CREATE TABLE T_PF_SYSTEMCONFIG
(
   USERCONFIGID         VARCHAR(50) NOT NULL COMMENT '����ID',
   USERID               VARCHAR(50) COMMENT '�û�ID',
   CONFIGNAME           VARCHAR(50) COMMENT '������',
   CONFIGINFO           VARCHAR(2000) COMMENT '������Ϣ��ʹ���Զ���XML��ʽ������',
   CONFIGTYPE           VARCHAR(2) DEFAULT '3' COMMENT '�������� 0: ϵͳ 1:����Ա 2:�û�',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (USERCONFIGID)
);

ALTER TABLE T_PF_SYSTEMCONFIG COMMENT 'ϵͳ������Ϣ��';

/*==============================================================*/
/* Table: T_PF_SYSTEMERROR                                      */
/*==============================================================*/
CREATE TABLE T_PF_SYSTEMERROR
(
   ERRORID              VARCHAR(50) NOT NULL COMMENT '������־ID',
   ERRORCODE            VARCHAR(50) COMMENT '��־���',
   APPNAME              VARCHAR(50) COMMENT '����ϵͳ',
   MODELNAME            VARCHAR(50) COMMENT '����ģ��',
   ERRORTITEL           VARCHAR(200) COMMENT '�������',
   CATEGORY             VARCHAR(2) DEFAULT '2' COMMENT '��������
            0: ����
            1: �쳣
            2: ��Ϣ
            3: ����',
   PRIORITY             VARCHAR(2) COMMENT '����ȼ������س̶ȡ�
            0: ��
            1: ��
            2: ��
            3: ��',
   MESSAGE              VARCHAR(2000) COMMENT '������ϸ���ݣ��п������Զ����쳣��ϵͳ�������쳣��',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ERRORID)
);

ALTER TABLE T_PF_SYSTEMERROR COMMENT 'ϵͳ���д�����־�����ڼ�¼ϵͳ�����쳣��Ϊ�û��ṩ��������Ϊ����Ա�ṩ������ҹ���';

/*==============================================================*/
/* Table: T_PF_USER_SHORTCUT                                    */
/*==============================================================*/
CREATE TABLE T_PF_USER_SHORTCUT
(
   USERSHORTCUTID       VARCHAR(50) NOT NULL COMMENT '����ID',
   SHORTCUTID           VARCHAR(50) COMMENT '��ݼ�ID',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (USERSHORTCUTID)
);

ALTER TABLE T_PF_USER_SHORTCUT COMMENT '�û���ݷ�ʽ���ñ���¼�û����ã�����Ŀ�ݼ���';

/*==============================================================*/
/* Table: T_PF_USER_WEBPART                                     */
/*==============================================================*/
CREATE TABLE T_PF_USER_WEBPART
(
   USERWEBPARTID        VARCHAR(50) NOT NULL COMMENT '����ID',
   WEBPARTID            VARCHAR(50) COMMENT 'WebPartID',
   USERID               VARCHAR(50) NOT NULL COMMENT '�û�ID',
   TEMPLATENAME         VARCHAR(200) NOT NULL COMMENT '�û�����ģ��',
   PARAMS               VARCHAR(500) COMMENT '�û����ò���',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (USERWEBPARTID)
);

ALTER TABLE T_PF_USER_WEBPART COMMENT '�û�WEBPART���ñ�';

/*==============================================================*/
/* Table: T_PF_WEBPART                                          */
/*==============================================================*/
CREATE TABLE T_PF_WEBPART
(
   WEBPARTID            VARCHAR(50) NOT NULL COMMENT 'WebPartID',
   MODULEID             VARCHAR(50) COMMENT '����ĿID',
   ICONPATH             VARCHAR(200) COMMENT 'ͼ��·��',
   TITEL                VARCHAR(200) NOT NULL COMMENT '����',
   FULLNAME             VARCHAR(200) NOT NULL COMMENT '����·��',
   ASSEMPLYNAME         VARCHAR(200) NOT NULL COMMENT '����������',
   ISSYSNEED            VARCHAR(1) DEFAULT '0' COMMENT '�Ƿ��ɾ�� 0:�����ԣ�1������',
   PARAMS               VARCHAR(500) COMMENT '��ʼ����',
   TEMPLATENAME         VARCHAR(200) NOT NULL COMMENT 'Ĭ��ģ��',
   OWNERID              VARCHAR(50) NOT NULL,
   SMTPFTATE            VARCHAR(1) NOT NULL DEFAULT '0' COMMENT '0: δ���� 1: ����',
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (WEBPARTID)
);

ALTER TABLE T_PF_WEBPART COMMENT 'ƽ̨WEBPART��Ϣ��';

/*==============================================================*/
/* Table: T_SYS_AREACITY                                        */
/*==============================================================*/
CREATE TABLE T_SYS_AREACITY
(
   CITYID               NUMERIC(38,0) NOT NULL,
   PROVINCEID           NUMERIC(38,0) NOT NULL,
   CITYNAME             VARCHAR(50),
   ZIPCODE              VARCHAR(50)
);

ALTER TABLE T_SYS_AREACITY COMMENT 'T_SYS_AREACITY';

/*==============================================================*/
/* Table: T_SYS_AREADISTRICT                                    */
/*==============================================================*/
CREATE TABLE T_SYS_AREADISTRICT
(
   DISTRICTID           NUMERIC(38,0) NOT NULL,
   CITYID               NUMERIC(38,0) NOT NULL,
   DISTRICTNAME         VARCHAR(50)
);

ALTER TABLE T_SYS_AREADISTRICT COMMENT 'T_SYS_AREADISTRICT';

/*==============================================================*/
/* Table: T_SYS_AREAPROVINCE                                    */
/*==============================================================*/
CREATE TABLE T_SYS_AREAPROVINCE
(
   PROVINCEID           NUMERIC(38,0) NOT NULL,
   PROVINCENAME         VARCHAR(50),
   COUNTRYID            NUMERIC(38,0)
);

ALTER TABLE T_SYS_AREAPROVINCE COMMENT 'T_SYS_AREAPROVINCE';

/*==============================================================*/
/* Table: T_SYS_COUNTRY                                         */
/*==============================================================*/
CREATE TABLE T_SYS_COUNTRY
(
   COUNTRYID            VARCHAR(50) NOT NULL COMMENT '����ID',
   COUNTRYNAME          VARCHAR(50) COMMENT '��������',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (COUNTRYID)
);

ALTER TABLE T_SYS_COUNTRY COMMENT '����';

/*==============================================================*/
/* Table: T_SYS_DICTIONARY                                      */
/*==============================================================*/
CREATE TABLE T_SYS_DICTIONARY
(
   DICTIONARYID         VARCHAR(50) NOT NULL COMMENT '�ֵ�ID',
   DICTIONCATEGORY      VARCHAR(50) COMMENT '�ֵ�����',
   DICTIONARYNAME       VARCHAR(50) COMMENT '�ֵ�����',
   DICTIONARYVALUE      NUMERIC(8,0) COMMENT '�ֵ�ֵ',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   DICTIONCATEGORYNAME  VARCHAR(50) COMMENT '�ֵ�������',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   FATHERID             VARCHAR(50) COMMENT '���ֵ�ID',
   SYSTEMNAME           VARCHAR(100) COMMENT 'ϵͳ������:����Common,������Դ����:HR,�칫�Զ���OA,����LM',
   SYSTEMCODE           VARCHAR(100) COMMENT 'ϵͳ���ͱ���',
   ORDERNUMBER          NUMERIC(8,0) COMMENT '�����',
   SYSTEMNEED           VARCHAR(1) COMMENT 'ϵͳ�����ֵ�:�û������޸�',
   PRIMARY KEY (DICTIONARYID)
);

ALTER TABLE T_SYS_DICTIONARY COMMENT 'ϵͳ�����ֵ�';

/*==============================================================*/
/* Table: T_SYS_ENTITYMENUBAK                                   */
/*==============================================================*/
CREATE TABLE T_SYS_ENTITYMENUBAK
(
   ENTITYMENUID         VARCHAR(50) NOT NULL,
   SYSTEMTYPE           VARCHAR(50) NOT NULL,
   ENTITYNAME           VARCHAR(200),
   ENTITYCODE           VARCHAR(200),
   HASSYSTEMMENU        VARCHAR(1),
   SUPERIORID           VARCHAR(50),
   MENUCODE             VARCHAR(50) NOT NULL,
   ORDERNUMBER          NUMERIC(38,0) NOT NULL,
   MENUNAME             VARCHAR(50) NOT NULL,
   MENUICONPATH         VARCHAR(100),
   URLADDRESS           VARCHAR(500),
   REMARK               VARCHAR(2000),
   CREATEUSER           VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSER           VARCHAR(50),
   UPDATEDATE           DATETIME,
   CHILDSYSTEMNAME      VARCHAR(500)
);

ALTER TABLE T_SYS_ENTITYMENUBAK COMMENT 'T_SYS_ENTITYMENUBAK';

/*==============================================================*/
/* Table: T_SYS_ENTITYMENU                                      */
/*==============================================================*/
CREATE TABLE T_SYS_ENTITYMENU
(
   ENTITYMENUID         VARCHAR(50) NOT NULL COMMENT 'ʵ��˵�ID',
   SYSTEMTYPE           VARCHAR(50) NOT NULL COMMENT 'ϵͳ����',
   ENTITYNAME           VARCHAR(200) COMMENT 'ʵ������',
   ENTITYCODE           VARCHAR(200) COMMENT 'ʵ�����',
   HASSYSTEMMENU        VARCHAR(1) COMMENT '�Ƿ���ϵͳ�˵�',
   SUPERIORID           VARCHAR(50) COMMENT '�����˵�ID',
   MENUCODE             VARCHAR(50) NOT NULL COMMENT '�˵����',
   ORDERNUMBER          NUMERIC(38,0) NOT NULL COMMENT '�˵����',
   MENUNAME             VARCHAR(50) NOT NULL COMMENT '�˵�����',
   MENUICONPATH         VARCHAR(100) COMMENT '�˵�ͼ���ַ',
   URLADDRESS           VARCHAR(500) COMMENT '���ӵ�ַ',
   REMARK               VARCHAR(2000) COMMENT '��ע��0 hr  1 oa 2���� 3fb 6 �ʲ� 7 Ȩ�� 8 ����  9���� 10�ɹ� 13�ճ�����',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   CHILDSYSTEMNAME      VARCHAR(500) COMMENT '��ϵͳ����',
   ISAUTHORITY          VARCHAR(1) DEFAULT '0' COMMENT '�Ƿ���Ȩ�޿���',
   HELPTITLE            VARCHAR(100) COMMENT '��������',
   HELPFILEPATH         VARCHAR(500) COMMENT '�����ļ���ַ',
   PRIMARY KEY (ENTITYMENUID)
);

ALTER TABLE T_SYS_ENTITYMENU COMMENT 'ϵͳʵ��˵�';

/*==============================================================*/
/* Index: IDX_MENUCODE                                          */
/*==============================================================*/
CREATE INDEX IDX_MENUCODE ON T_SYS_ENTITYMENU
(
   MENUCODE
);

/*==============================================================*/
/* Table: T_SYS_ENTITYMENUCUSTOMPERM                            */
/*==============================================================*/
CREATE TABLE T_SYS_ENTITYMENUCUSTOMPERM
(
   ENTITYMENUCUSTOMPERMID VARCHAR(50) NOT NULL COMMENT '�Զ���˵�Ȩ��ID',
   PERMISSIONID         VARCHAR(50) COMMENT 'Ȩ��ID',
   ENTITYMENUID         VARCHAR(50) COMMENT 'ʵ��˵�ID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   COMPANYNAME          VARCHAR(100) COMMENT '��˾����',
   DEPARTMENTID         VARCHAR(50) COMMENT '����ID',
   DEPARTMENTNAME       VARCHAR(50) COMMENT '��������',
   POSTID               VARCHAR(50) COMMENT '��λID',
   POSTNAME             VARCHAR(50) COMMENT '��λ����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   STARTDATE            DATETIME COMMENT '��ʼʱ��',
   ENDDATE              DATETIME COMMENT 'ʧЧʱ��',
   ROLEID               VARCHAR(50) COMMENT '��ɫID',
   PRIMARY KEY (ENTITYMENUCUSTOMPERMID)
);

ALTER TABLE T_SYS_ENTITYMENUCUSTOMPERM COMMENT '��ɫ����ҪȨ�޿��Ƶ�ʵ���Ȩ�޹�ϵ
��ɫ��ÿ��ʵ�����ɾ�Ĳ��Ȩ��
��ɫ��ʵ���Ȩ�޷�Χ���ǶԸ�';

/*==============================================================*/
/* Index: T_ENTROL                                              */
/*==============================================================*/
CREATE INDEX T_ENTROL ON T_SYS_ENTITYMENUCUSTOMPERM
(
   ENTITYMENUID,
   ROLEID
);

/*==============================================================*/
/* Table: T_SYS_FBADMIN                                         */
/*==============================================================*/
CREATE TABLE T_SYS_FBADMIN
(
   FBADMINID            VARCHAR(50) NOT NULL COMMENT 'Ԥ�����ԱID',
   SYSUSERID            VARCHAR(50) COMMENT 'Ȩ���û�ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λ',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���ID',
   ADDUSERNAME          VARCHAR(50) COMMENT '����������',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   ISSUPPERADMIN        VARCHAR(50) COMMENT '�Ƿ񳬼�����Ա Ĭ��1',
   ISCOMPANYADMIN       VARCHAR(50) COMMENT '�Ƿ��ǹ�˾����Ա Ĭ��1  (��)  0������',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   ROLENAME             VARCHAR(50) COMMENT '��˾���+"����Ԥ�����Ա"',
   REMARK               VARCHAR(200) COMMENT '��ע',
   EMPLOYEEID           VARCHAR(50) COMMENT '����ȨԱ��ID',
   EMPLOYEECOMPANYID    VARCHAR(50) COMMENT '����ȨԱ�����ڹ�˾ID(���Ǽ�ְ)',
   EMPLOYEEDEPARTMENTID VARCHAR(50) COMMENT '����ȨԱ�����ڲ���ID(���Ǽ�ְ)',
   EMPLOYEEPOSTID       VARCHAR(50) COMMENT '����ȨԱ�����ڸ�λID(���Ǽ�ְ)',
   PRIMARY KEY (FBADMINID)
);

ALTER TABLE T_SYS_FBADMIN COMMENT 'Ԥ�����Ա';

/*==============================================================*/
/* Table: T_SYS_FBADMINROLE                                     */
/*==============================================================*/
CREATE TABLE T_SYS_FBADMINROLE
(
   FBADMINROLEID        VARCHAR(50) NOT NULL COMMENT '����Ա��ɫID',
   FBADMINID            VARCHAR(50) COMMENT 'Ԥ�����ԱID',
   ROLEID               VARCHAR(50) COMMENT '��ɫID',
   ADDDATE              DATETIME COMMENT '���ʱ��',
   PRIMARY KEY (FBADMINROLEID)
);

ALTER TABLE T_SYS_FBADMINROLE COMMENT 'Ԥ�����Ա�ͽ�ɫ������';

/*==============================================================*/
/* Table: T_SYS_FILEUPLOAD                                      */
/*==============================================================*/
CREATE TABLE T_SYS_FILEUPLOAD
(
   FILEUPLOADID         VARCHAR(50) NOT NULL,
   SYSTEMCODE           VARCHAR(50) NOT NULL,
   COMPANYID            VARCHAR(50) NOT NULL,
   MODELNAME            VARCHAR(50) NOT NULL,
   FORMID               VARCHAR(50) NOT NULL,
   FILENAME             VARCHAR(2000) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (FILEUPLOADID)
);

ALTER TABLE T_SYS_FILEUPLOAD COMMENT 'T_SYS_FILEUPLOAD';

/*==============================================================*/
/* Index: IDX_FORMID_FILEUPLOAD                                 */
/*==============================================================*/
CREATE INDEX IDX_FORMID_FILEUPLOAD ON T_SYS_FILEUPLOAD
(
   FORMID
);

/*==============================================================*/
/* Table: T_SYS_PROVINCECITY                                    */
/*==============================================================*/
CREATE TABLE T_SYS_PROVINCECITY
(
   PROVINCEID           VARCHAR(50) NOT NULL COMMENT 'ʡ��ID',
   AREANAME             VARCHAR(50) COMMENT '����',
   COUNTRYID            VARCHAR(50) COMMENT '��������',
   FATHERID             VARCHAR(50) COMMENT '��ID',
   ISPROVINCE           VARCHAR(32) COMMENT '�Ƿ�ʡ',
   ISCITY               VARCHAR(32) COMMENT '�Ƿ���',
   ISCOUNTRYTOWN        VARCHAR(32) COMMENT '�Ƿ���',
   AREAVALUE            NUMERIC(38,0) COMMENT '����ֵ',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (PROVINCEID)
);

ALTER TABLE T_SYS_PROVINCECITY COMMENT '��Ҫ��¼ʡ�С�����Ϣ';

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
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   ENTITYMENUID         VARCHAR(50) COMMENT 'ʵ��˵�ID',
   ISCOMMOM             VARCHAR(1) COMMENT '�Ƿ񹫹�Ȩ����',
   PERMISSIONCODE       VARCHAR(200) COMMENT 'Ȩ�ޱ���',
   PRIMARY KEY (PERMISSIONID)
);

ALTER TABLE T_SYS_PERMISSION COMMENT '����Ȩ��
��,ɾ,��,��,����,����,����,��ӡ,��������....';

/*==============================================================*/
/* Table: T_SYS_REPORTMANAGE                                    */
/*==============================================================*/
CREATE TABLE T_SYS_REPORTMANAGE
(
   REPORTID             VARCHAR(50) NOT NULL COMMENT '����ID',
   REPORTNAME           VARCHAR(50) NOT NULL COMMENT '��������',
   CATEGORY             VARCHAR(50) NOT NULL COMMENT '�������',
   REMARK               VARCHAR(1000) COMMENT '��������',
   REPORTPATH           VARCHAR(200) NOT NULL COMMENT '����·��',
   REPORTRDLNAME        VARCHAR(200) NOT NULL COMMENT '�����ļ�����',
   REPORTSTATE          NUMERIC(38,0) NOT NULL DEFAULT 0 COMMENT '����״̬',
   CREATEDATE           DATETIME COMMENT '��������',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   ROLEIDS              VARCHAR(2000) COMMENT '��ɫIDS',
   ALLOWEXPORT          NUMERIC(38,0) DEFAULT 0 COMMENT '�Ƿ�������(0 �������� 1������)',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   PRIMARY KEY (REPORTID)
);

ALTER TABLE T_SYS_REPORTMANAGE COMMENT '�������';

/*==============================================================*/
/* Table: T_SYS_REPORTPERSON                                    */
/*==============================================================*/
CREATE TABLE T_SYS_REPORTPERSON
(
   CATEGORYID           VARCHAR(50) NOT NULL COMMENT '����',
   CATEGORYNAME         VARCHAR(50) NOT NULL COMMENT '��������',
   CREATEDATE           DATETIME NOT NULL COMMENT '����ʱ��',
   USERID               VARCHAR(50) NOT NULL COMMENT '������',
   USERNAME             VARCHAR(50) COMMENT '����������',
   ISREPORT             NUMERIC(38,0) COMMENT '�Ƿ����ļ���(0:�� 1����)',
   REPORTID             VARCHAR(50) COMMENT '����ID',
   REPORTNAME           VARCHAR(50) COMMENT '��������',
   PARENTID             VARCHAR(50) COMMENT 'ParentID',
   PRIMARY KEY (CATEGORYID)
);

ALTER TABLE T_SYS_REPORTPERSON COMMENT '���˱���';

/*==============================================================*/
/* Table: T_SYS_REPORTROLE                                      */
/*==============================================================*/
CREATE TABLE T_SYS_REPORTROLE
(
   REPORTROLEID         VARCHAR(50) NOT NULL COMMENT '����',
   REPORTID             VARCHAR(50) NOT NULL COMMENT '����ID',
   ROLEID               VARCHAR(50) NOT NULL COMMENT '��ɫID',
   ROLENAME             VARCHAR(100) NOT NULL COMMENT '��ɫ����',
   CREATEDATE           DATETIME NOT NULL COMMENT '��������',
   COMPANYID            VARCHAR(50),
   COMPANYNAME          VARCHAR(100),
   PRIMARY KEY (REPORTROLEID)
);

ALTER TABLE T_SYS_REPORTROLE COMMENT 'T_SYS_REPORTROLE';

/*==============================================================*/
/* Table: T_SYS_ROLE_BAK                                        */
/*==============================================================*/
CREATE TABLE T_SYS_ROLE_BAK
(
   ROLEID               VARCHAR(50) NOT NULL,
   SYSTEMTYPE           VARCHAR(50),
   ROLENAME             VARCHAR(50),
   REMARK               VARCHAR(2000),
   CREATEUSER           VARCHAR(50),
   CREATEDATE           DATETIME,
   UPDATEUSER           VARCHAR(50),
   UPDATEDATE           DATETIME,
   OWNERCOMPANYID       VARCHAR(50),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50)
);

ALTER TABLE T_SYS_ROLE_BAK COMMENT 'T_SYS_ROLE_BAK';

/*==============================================================*/
/* Table: T_SYS_RTF                                             */
/*==============================================================*/
CREATE TABLE T_SYS_RTF
(
   RTFID                VARCHAR(50) NOT NULL,
   SYSTEMCODE           VARCHAR(50) NOT NULL,
   COMPANYID            VARCHAR(50) NOT NULL,
   MODELNAME            VARCHAR(50) NOT NULL,
   FORMID               VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   CONTENT              LONGBLOB,
   PRIMARY KEY (RTFID)
);

ALTER TABLE T_SYS_RTF COMMENT 'T_SYS_RTF';

/*==============================================================*/
/* Index: IDX_RTFFORID                                          */
/*==============================================================*/
CREATE INDEX IDX_RTFFORID ON T_SYS_RTF
(
   FORMID
);

/*==============================================================*/
/* Table: T_SYS_ROLE                                            */
/*==============================================================*/
CREATE TABLE T_SYS_ROLE
(
   ROLEID               VARCHAR(50) NOT NULL COMMENT '��ɫID',
   SYSTEMTYPE           VARCHAR(50) COMMENT 'ϵͳ����',
   ROLENAME             VARCHAR(50) COMMENT '��ɫ����',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '��������',
   CREATECOMPANYID      VARCHAR(50) COMMENT '������˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '��������ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '������λID',
   CHECKSTATE           VARCHAR(50) COMMENT '���״̬��  0 δ�ύ  1 �����  2 ���ͨ��  3 ��˲�ͨ��',
   ISAUTHORY            VARCHAR(50) COMMENT '�Ƿ���Ȩ�޿��� Ĭ��Ϊ ��0    ��0  ����Ȩ�޿���    1 ��Ȩ�޿���',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸��û���',
   PRIMARY KEY (ROLEID)
);

ALTER TABLE T_SYS_ROLE COMMENT '��ɫ';

/*==============================================================*/
/* Table: T_SYS_ROLEENTITYMENU                                  */
/*==============================================================*/
CREATE TABLE T_SYS_ROLEENTITYMENU
(
   ROLEENTITYMENUID     VARCHAR(50) NOT NULL COMMENT '��ɫʵ��˵�ID',
   ROLEID               VARCHAR(50) NOT NULL COMMENT '��ɫID',
   ENTITYMENUID         VARCHAR(50) NOT NULL COMMENT 'ʵ��˵�ID',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (ROLEENTITYMENUID)
);

ALTER TABLE T_SYS_ROLEENTITYMENU COMMENT '��ɫʵ��˵�';

/*==============================================================*/
/* Table: T_SYS_ROLEMENUPERMISSION                              */
/*==============================================================*/
CREATE TABLE T_SYS_ROLEMENUPERMISSION
(
   ROLEMENUPERMID       VARCHAR(50) NOT NULL COMMENT '��ɫ�˵�Ȩ��ID',
   PERMISSIONID         VARCHAR(50) COMMENT 'Ȩ��ID',
   ROLEENTITYMENUID     VARCHAR(50) COMMENT '��ɫʵ��˵�ID',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   EXTENDVALUE          VARCHAR(50) COMMENT '��չֵ',
   DATARANGE            VARCHAR(50) COMMENT '���ݷ�Χ',
   PRIMARY KEY (ROLEMENUPERMID)
);

ALTER TABLE T_SYS_ROLEMENUPERMISSION COMMENT '��ɫ�˵�Ȩ��';

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
   STATE                VARCHAR(50) COMMENT '״̬��0 ���ã�1 ʹ��',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   ISMANGER             NUMERIC(38,0) COMMENT '�Ƿ�Ϊ����Ա',
   ISFLOWMANAGER        VARCHAR(1) DEFAULT '0' COMMENT '�Ƿ������̹���Ա',
   ISENGINEMANAGER      VARCHAR(1) DEFAULT '0' COMMENT '�Ƿ����������Ա',
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
   LOGTYPE              VARCHAR(2) COMMENT '0,��Ϊ��־
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

ALTER TABLE T_SYS_USERDATALOG COMMENT '�û�������־��';

/*==============================================================*/
/* Table: T_SYS_USERLOGINRECORD                                 */
/*==============================================================*/
CREATE TABLE T_SYS_USERLOGINRECORD
(
   LOGINRECORDID        VARCHAR(50) NOT NULL COMMENT '��¼ϵͳ��¼ID',
   USERNAME             VARCHAR(50) NOT NULL COMMENT 'Ա��ϵͳ�ʺ�',
   LOGINDATE            DATETIME COMMENT '��¼����',
   LOGINTIME            VARCHAR(50) COMMENT '��¼ʱ��',
   LOGINIP              VARCHAR(50) COMMENT '��¼IP',
   ONLINESTATE          VARCHAR(1) COMMENT '����״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '����Ա����λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '����Ա������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '����Ա����˾ID',
   OWNERNAME            VARCHAR(50) COMMENT '����Ա������',
   OWNERPOSTNAME        VARCHAR(50) COMMENT '����Ա����λ����',
   OWNERCOMPANYNAME     VARCHAR(50) COMMENT '����Ա����������',
   OWNERDEPARTMENTNAME  VARCHAR(50) COMMENT '����Ա����˾����',
   LOGINYEAR            NUMERIC(8,0) COMMENT '��¼���',
   LOGINMONTH           NUMERIC(8,0) COMMENT '��¼�·�',
   PRIMARY KEY (LOGINRECORDID)
);

ALTER TABLE T_SYS_USERLOGINRECORD COMMENT '�û���¼ϵͳ��¼��';

/*==============================================================*/
/* Index: IDX_CORDLOGINYEAR                                     */
/*==============================================================*/
CREATE INDEX IDX_CORDLOGINYEAR ON T_SYS_USERLOGINRECORD
(
   LOGINYEAR
);

/*==============================================================*/
/* Table: T_SYS_USERLOGINRECORDHIS                              */
/*==============================================================*/
CREATE TABLE T_SYS_USERLOGINRECORDHIS
(
   LOGINRECORDHISID     VARCHAR(50) NOT NULL COMMENT '��¼ϵͳ��¼ID',
   USERNAME             VARCHAR(50) NOT NULL COMMENT 'Ա��ϵͳ�ʺ�',
   LOGINDATE            DATETIME COMMENT '��¼����',
   LOGINTIME            VARCHAR(50) COMMENT '��¼ʱ��',
   LOGINIP              VARCHAR(50) COMMENT '��¼IP',
   ONLINESTATE          VARCHAR(1) COMMENT '����״̬',
   REMARK               VARCHAR(2000) COMMENT '��ע',
   PRIMARY KEY (LOGINRECORDHISID)
);

ALTER TABLE T_SYS_USERLOGINRECORDHIS COMMENT '�û���¼ϵͳ��ʷ��¼';

/*==============================================================*/
/* Table: T_SYS_USERROLE                                        */
/*==============================================================*/
CREATE TABLE T_SYS_USERROLE
(
   USERROLEID           VARCHAR(50) NOT NULL COMMENT '�û���ɫID',
   ROLEID               VARCHAR(50) COMMENT '��ɫID',
   SYSUSERID            VARCHAR(50) COMMENT 'ϵͳ�û�ID',
   CREATEUSER           VARCHAR(50) COMMENT '������',
   CREATEDATE           DATETIME COMMENT '����ʱ��',
   UPDATEUSER           VARCHAR(50) COMMENT '�޸���',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   POSTID               VARCHAR(50) COMMENT '��λID',
   EMPLOYEEPOSTID       VARCHAR(50) COMMENT 'Ա����λid',
   PRIMARY KEY (USERROLEID)
);

ALTER TABLE T_SYS_USERROLE COMMENT '�û���ɫ';

/*==============================================================*/
/* Table: T_WF_AUDITSCOPE                                       */
/*==============================================================*/
CREATE TABLE T_WF_AUDITSCOPE
(
   SCOPEID              VARCHAR(50) NOT NULL,
   COMPANYID            VARCHAR(50),
   COMPANYNAME          VARCHAR(50),
   CREATEDATE           DATETIME,
   CREATEUSERID         VARCHAR(50),
   CREATEUSER           VARCHAR(50),
   PRIMARY KEY (SCOPEID)
);

ALTER TABLE T_WF_AUDITSCOPE COMMENT 'T_WF_AUDITSCOPE';

/*==============================================================*/
/* Table: T_WF_DEFAULTMESSAGE                                   */
/*==============================================================*/
CREATE TABLE T_WF_DEFAULTMESSAGE
(
   MESSAGEID            VARCHAR(50) NOT NULL COMMENT '��ϢID(GUID)',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   SYSTEMNAME           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   MODELNAME            VARCHAR(50) COMMENT 'ģ������',
   APPLICATIONURL       VARCHAR(2000) COMMENT 'Ӧ��URL',
   AUDITSTATE           NUMERIC(8,0) COMMENT '���״̬:1�����,2���ͨ��,3��˲�ͨ��',
   MESSAGECONTENT       VARCHAR(200) COMMENT '��Ϣ����',
   CREATEDATE           DATETIME  COMMENT '��������ʱ��',
   CREATEUSERID         VARCHAR(50) COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   UPDATEUSERID         VARCHAR(50) COMMENT '�޸���ID',
   UPDATEUSERNAME       VARCHAR(50) COMMENT '�޸�������',
   UPDATEDATE           DATETIME COMMENT '�޸�����ʱ��',
   LASTDAYS             NUMERIC(8,0) DEFAULT 3 COMMENT '�ɴ������ڣ�ʣ��������'
);

ALTER TABLE T_WF_DEFAULTMESSAGE COMMENT 'ȫ��Ĭ����Ϣ,��Ϣ����û�ж���ʱ�������ȡֵ����';

/*==============================================================*/
/* Table: T_WF_DOTASK                                           */
/*==============================================================*/
CREATE TABLE T_WF_DOTASK
(
   DOTASKID             VARCHAR(50) NOT NULL COMMENT '��������ID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   ORDERID              VARCHAR(50) COMMENT '����ID',
   ORDERUSERID          VARCHAR(50) COMMENT '����������ID',
   ORDERUSERNAME        VARCHAR(50) COMMENT '��������������',
   ORDERSTATUS          NUMERIC(8,0) COMMENT '����״̬',
   MESSAGEBODY          VARCHAR(2000) COMMENT '��Ϣ��',
   APPLICATIONURL       VARCHAR(2000) COMMENT 'Ӧ��URL',
   RECEIVEUSERID        VARCHAR(50) COMMENT '�����û�ID',
   BEFOREPROCESSDATE    DATETIME COMMENT '�ɴ���ʱ�䣨��Ҫ���KPI���ˣ�',
   DOTASKTYPE           NUMERIC(8,0) COMMENT '������������(0����������1��������ѯ��3 )',
   CLOSEDDATE           DATETIME COMMENT '����ر�ʱ��',
   ENGINECODE           VARCHAR(200) COMMENT '�������',
   DOTASKSTATUS         NUMERIC(8,0) DEFAULT 0 COMMENT '��������״̬(0��δ���� 1���Ѵ��� ��2�������� 10��ɾ��)',
   MAILSTATUS           NUMERIC(8,0) DEFAULT 0 COMMENT '�ʼ�״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   RTXSTATUS            NUMERIC(8,0) DEFAULT 0 COMMENT 'RTX״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   ISALARM              NUMERIC(8,0) COMMENT '�Ƿ�������(0��δ���� 1�������ѡ�2��δ֪ )',
   APPFIELDVALUE        TEXT COMMENT 'Ӧ���ֶ�ֵ',
   FLOWXML              TEXT COMMENT '����XML',
   APPXML               TEXT COMMENT 'Ӧ��XML',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   SYSTEMNAME           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   MODELNAME            VARCHAR(100) COMMENT 'ģ������',
   CREATEDATETIME       DATETIME  COMMENT '��������',
   REMARK               VARCHAR(200) COMMENT '��ע',
   APPFIELDVALUE1       TEXT,
   FLOWXML1             TEXT,
   APPXML1              TEXT,
   WORKCODE             VARCHAR(100) COMMENT '--BPMƽ̨���̴���ID',
   ISVALID              NUMERIC(8,0) NOT NULL DEFAULT 1 COMMENT '--�Ƿ���Ч��Ĭ����Ч��1�����������ί��ʱ���������ȡ���˴���Ȩ�ޣ�������Ϊ��Ч��0��',
   VALIDSTARTIME        DATETIME COMMENT '--����ί����Ч��ʼʱ��',
   VALIDENDTIME         DATETIME COMMENT '--����ί����Ч����ʱ��',
   WORKCODECREATETYPE   NUMERIC(8,0) NOT NULL DEFAULT 1 COMMENT '--�������͡�1:�Լ��Ĵ��졿��2��������졿��3:ί�д��졿',
   PRIMARY KEY (DOTASKID)
);

ALTER TABLE T_WF_DOTASK COMMENT '���������б�';

/*==============================================================*/
/* Index: IDX_DOTAORDERID                                       */
/*==============================================================*/
CREATE INDEX IDX_DOTAORDERID ON T_WF_DOTASK
(
   ORDERID
);

/*==============================================================*/
/* Index: IDX_RECSTATUS                                         */
/*==============================================================*/
CREATE INDEX IDX_RECSTATUS ON T_WF_DOTASK
(
   RECEIVEUSERID,
   DOTASKSTATUS
);

/*==============================================================*/
/* Table: T_WF_DOTASKBAK                                        */
/*==============================================================*/
CREATE TABLE T_WF_DOTASKBAK
(
   DOTASKID             VARCHAR(50) NOT NULL COMMENT '��������ID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   ORDERID              VARCHAR(50) COMMENT '����ID',
   ORDERUSERID          VARCHAR(50) COMMENT '����������ID',
   ORDERUSERNAME        VARCHAR(50) COMMENT '��������������',
   ORDERSTATUS          NUMERIC(8,0) COMMENT '����״̬',
   MESSAGEBODY          VARCHAR(2000) COMMENT '��Ϣ��',
   APPLICATIONURL       VARCHAR(2000) COMMENT 'Ӧ��URL',
   RECEIVEUSERID        VARCHAR(50) COMMENT '�����û�ID',
   BEFOREPROCESSDATE    DATETIME COMMENT '�ɴ���ʱ�䣨��Ҫ���KPI���ˣ�',
   DOTASKTYPE           NUMERIC(8,0) COMMENT '������������(0����������1��������ѯ��3 )',
   CLOSEDDATE           DATETIME COMMENT '����ر�ʱ��',
   ENGINECODE           VARCHAR(200) COMMENT '�������',
   DOTASKSTATUS         NUMERIC(8,0) DEFAULT 0 COMMENT '��������״̬(0��δ���� 1���Ѵ��� ��2�������� 10��ɾ��)',
   MAILSTATUS           NUMERIC(8,0) DEFAULT 0 COMMENT '�ʼ�״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   RTXSTATUS            NUMERIC(8,0) DEFAULT 0 COMMENT 'RTX״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   ISALARM              NUMERIC(8,0) COMMENT '�Ƿ�������(0��δ���� 1�������ѡ�2��δ֪ )',
   APPFIELDVALUE        TEXT COMMENT 'Ӧ���ֶ�ֵ',
   FLOWXML              TEXT COMMENT '����XML',
   APPXML               TEXT COMMENT 'Ӧ��XML',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   SYSTEMNAME           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   MODELNAME            VARCHAR(100) COMMENT 'ģ������',
   CREATEDATETIME       DATETIME  COMMENT '��������',
   REMARK               VARCHAR(200) COMMENT '��ע',
   APPFIELDVALUE1       TEXT,
   FLOWXML1             TEXT,
   APPXML1              TEXT,
   WORKCODE             VARCHAR(100) COMMENT '--BPMƽ̨���̴���ID',
   ISVALID              NUMERIC(8,0) NOT NULL DEFAULT 1 COMMENT '--�Ƿ���Ч��Ĭ����Ч��1�����������ί��ʱ���������ȡ���˴���Ȩ�ޣ�������Ϊ��Ч��0��',
   VALIDSTARTIME        DATETIME COMMENT '--����ί����Ч��ʼʱ��',
   VALIDENDTIME         DATETIME COMMENT '--����ί����Ч����ʱ��',
   WORKCODECREATETYPE   NUMERIC(8,0) NOT NULL DEFAULT 1 COMMENT '--�������͡�1:�Լ��Ĵ��졿��2��������졿��3:ί�д��졿',
   PRIMARY KEY (DOTASKID)
);

ALTER TABLE T_WF_DOTASKBAK COMMENT '���������б�';

/*==============================================================*/
/* Index: IDX_DOTAORDERIDSS                                     */
/*==============================================================*/
CREATE INDEX IDX_DOTAORDERIDSS ON T_WF_DOTASKBAK
(
   ORDERID
);

/*==============================================================*/
/* Index: IDX_RECSTATUSSS                                       */
/*==============================================================*/
CREATE INDEX IDX_RECSTATUSSS ON T_WF_DOTASKBAK
(
   RECEIVEUSERID,
   DOTASKSTATUS
);

/*==============================================================*/
/* Table: T_WF_DOTASKBAK0801                                    */
/*==============================================================*/
CREATE TABLE T_WF_DOTASKBAK0801
(
   DOTASKID             VARCHAR(50) NOT NULL,
   COMPANYID            VARCHAR(50),
   ORDERID              VARCHAR(50),
   ORDERUSERID          VARCHAR(50),
   ORDERUSERNAME        VARCHAR(50),
   ORDERSTATUS          NUMERIC(8,0),
   MESSAGEBODY          VARCHAR(2000),
   APPLICATIONURL       VARCHAR(2000),
   RECEIVEUSERID        VARCHAR(50),
   BEFOREPROCESSDATE    DATETIME,
   DOTASKTYPE           NUMERIC(8,0),
   CLOSEDDATE           DATETIME,
   ENGINECODE           VARCHAR(200),
   DOTASKSTATUS         NUMERIC(8,0),
   MAILSTATUS           NUMERIC(8,0),
   RTXSTATUS            NUMERIC(8,0),
   ISALARM              NUMERIC(8,0),
   APPFIELDVALUE        TEXT,
   FLOWXML              TEXT,
   APPXML               TEXT,
   SYSTEMCODE           VARCHAR(50),
   SYSTEMNAME           VARCHAR(50),
   MODELCODE            VARCHAR(50),
   MODELNAME            VARCHAR(100),
   CREATEDATETIME       DATETIME,
   REMARK               VARCHAR(200),
   APPFIELDVALUE1       TEXT,
   FLOWXML1             TEXT,
   APPXML1              TEXT
);

ALTER TABLE T_WF_DOTASKBAK0801 COMMENT 'T_WF_DOTASKBAK0801';

/*==============================================================*/
/* Table: T_WF_DOTASKMESSAGE                                    */
/*==============================================================*/
CREATE TABLE T_WF_DOTASKMESSAGE
(
   DOTASKMESSAGEID      VARCHAR(50) NOT NULL COMMENT '������ϢID',
   MESSAGEBODY          VARCHAR(500) COMMENT '��Ϣ��',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   RECEIVEUSERID        VARCHAR(50) COMMENT '�����û�',
   ORDERID              VARCHAR(50) COMMENT '����ID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   MESSAGESTATUS        NUMERIC(8,0) COMMENT '��Ϣ״̬(0��δ���� 1���Ѵ��� ��2����Ϣ���� )',
   MAILSTATUS           NUMERIC(8,0) COMMENT '�ʼ�״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   RTXSTATUS            NUMERIC(8,0) COMMENT 'TRX״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   CLOSEDDATE           DATETIME COMMENT '��Ϣ�ر�ʱ��',
   CREATEDATETIME       DATETIME  COMMENT '��������ʱ��',
   REMARK               VARCHAR(200) COMMENT '��ע',
   PRIMARY KEY (DOTASKMESSAGEID)
);

ALTER TABLE T_WF_DOTASKMESSAGE COMMENT '������Ϣ�б�';

/*==============================================================*/
/* Index: IDX_MESAGED_MAUS                                      */
/*==============================================================*/
CREATE INDEX IDX_MESAGED_MAUS ON T_WF_DOTASKMESSAGE
(
   MAILSTATUS,
   MESSAGESTATUS
);

/*==============================================================*/
/* Table: T_WF_DOTASKRULE                                       */
/*==============================================================*/
CREATE TABLE T_WF_DOTASKRULE
(
   DOTASKRULEID         VARCHAR(100) NOT NULL COMMENT '�����������ID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   SYSTEMNAME           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   MODELNAME            VARCHAR(50) COMMENT 'ģ������',
   TRIGGERORDERSTATUS   NUMERIC(8,0) COMMENT '���������ĵ���״̬',
   CREATEDATETIME       DATETIME  COMMENT '��������ʱ��',
   PRIMARY KEY (DOTASKRULEID)
);

ALTER TABLE T_WF_DOTASKRULE COMMENT '����������Ϣ��������';

/*==============================================================*/
/* Index: IDX_CODEMODEID                                        */
/*==============================================================*/
CREATE INDEX IDX_CODEMODEID ON T_WF_DOTASKRULE
(
   TRIGGERORDERSTATUS,
   SYSTEMCODE,
   COMPANYID,
   MODELCODE
);

/*==============================================================*/
/* Table: T_WF_DOTASKRULEDETAIL                                 */
/*==============================================================*/
CREATE TABLE T_WF_DOTASKRULEDETAIL
(
   DOTASKRULEDETAILID   VARCHAR(100) NOT NULL COMMENT '���������ϸID',
   DOTASKRULEID         VARCHAR(100) NOT NULL COMMENT '�����������ID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   SYSTEMNAME           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   TRIGGERORDERSTATUS   NUMERIC(8,0) COMMENT '���������ĵ���״̬',
   MODELNAME            VARCHAR(50) COMMENT 'ģ������',
   WCFURL               VARCHAR(200) COMMENT 'WCF��URL',
   FUNCTIONNAME         VARCHAR(50) COMMENT '������������',
   FUNCTIONPARAMTER     VARCHAR(2000) COMMENT '��������',
   PAMETERSPLITCHAR     VARCHAR(100) COMMENT '�����ֽ��',
   WCFBINDINGCONTRACT   VARCHAR(100) COMMENT 'WCF�󶨵���Լ',
   MESSAGEBODY          VARCHAR(400) COMMENT '��Ϣ��',
   LASTDAYS             NUMERIC(8,0) COMMENT '�ɴ������ڣ�ʣ��������',
   APPLICATIONURL       TEXT COMMENT 'Ӧ��URL',
   RECEIVEUSER          VARCHAR(100) COMMENT '�����û�',
   RECEIVEUSERNAME      VARCHAR(100) COMMENT '�����û���',
   OWNERCOMPANYID       VARCHAR(100) COMMENT '������˾ID',
   OWNERDEPARTMENTID    VARCHAR(100) COMMENT '��������ID',
   OWNERPOSTID          VARCHAR(100) COMMENT '������λID',
   ISDEFAULTMSG         NUMERIC(8,0) COMMENT '�Ƿ�ȱʡ��Ϣ',
   PROCESSFUNCLANGUAGE  VARCHAR(100) COMMENT '����������',
   ISOTHERSOURCE        VARCHAR(100) COMMENT '�Ƿ�������Դ',
   OTHERSYSTEMCODE      VARCHAR(100) COMMENT '����ϵͳ����',
   OTHERMODELCODE       VARCHAR(100) COMMENT '����ϵͳģ��',
   CREATEUSERNAME       VARCHAR(50) COMMENT '������',
   CREATEUSERID         VARCHAR(50) COMMENT '������ID',
   CREATEDATETIME       DATETIME  COMMENT '��������',
   REMARK               VARCHAR(200) COMMENT '��ע',
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATETIME       DATETIME,
   PRIMARY KEY (DOTASKRULEDETAILID)
);

ALTER TABLE T_WF_DOTASKRULEDETAIL COMMENT '����������Ϣ����ϸ��';

/*==============================================================*/
/* Table: T_WF_DOTASKRULEDETAIL_20140521                        */
/*==============================================================*/
CREATE TABLE T_WF_DOTASKRULEDETAIL_20140521
(
   DOTASKRULEDETAILID   VARCHAR(100) NOT NULL,
   DOTASKRULEID         VARCHAR(100) NOT NULL,
   COMPANYID            VARCHAR(50),
   SYSTEMCODE           VARCHAR(50),
   SYSTEMNAME           VARCHAR(50),
   MODELCODE            VARCHAR(50),
   TRIGGERORDERSTATUS   NUMERIC(8,0),
   MODELNAME            VARCHAR(50),
   WCFURL               VARCHAR(200),
   FUNCTIONNAME         VARCHAR(50),
   FUNCTIONPARAMTER     VARCHAR(2000),
   PAMETERSPLITCHAR     VARCHAR(100),
   WCFBINDINGCONTRACT   VARCHAR(100),
   MESSAGEBODY          VARCHAR(400),
   LASTDAYS             NUMERIC(8,0),
   APPLICATIONURL       TEXT,
   RECEIVEUSER          VARCHAR(100),
   RECEIVEUSERNAME      VARCHAR(100),
   OWNERCOMPANYID       VARCHAR(100),
   OWNERDEPARTMENTID    VARCHAR(100),
   OWNERPOSTID          VARCHAR(100),
   ISDEFAULTMSG         NUMERIC(8,0),
   PROCESSFUNCLANGUAGE  VARCHAR(100),
   ISOTHERSOURCE        VARCHAR(100),
   OTHERSYSTEMCODE      VARCHAR(100),
   OTHERMODELCODE       VARCHAR(100),
   CREATEUSERNAME       VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATETIME       DATETIME,
   REMARK               VARCHAR(200),
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATETIME       DATETIME
);

ALTER TABLE T_WF_DOTASKRULEDETAIL_20140521 COMMENT 'T_WF_DOTASKRULEDETAIL_20140521';

/*==============================================================*/
/* Table: T_WF_DOTASKRULE_20140521                              */
/*==============================================================*/
CREATE TABLE T_WF_DOTASKRULE_20140521
(
   DOTASKRULEID         VARCHAR(100) NOT NULL,
   COMPANYID            VARCHAR(50),
   SYSTEMCODE           VARCHAR(50),
   SYSTEMNAME           VARCHAR(50),
   MODELCODE            VARCHAR(50),
   MODELNAME            VARCHAR(50),
   TRIGGERORDERSTATUS   NUMERIC(8,0),
   CREATEDATETIME       DATETIME
);

ALTER TABLE T_WF_DOTASKRULE_20140521 COMMENT 'T_WF_DOTASKRULE_20140521';

/*==============================================================*/
/* Table: T_WF_ENGINEPREFIX                                     */
/*==============================================================*/
CREATE TABLE T_WF_ENGINEPREFIX
(
   PREFIXCODE           VARCHAR(100) NOT NULL COMMENT 'ǰ׺����',
   PREFIXNAME           VARCHAR(100) COMMENT 'ǰ׺����',
   DEFAULTBIT           VARCHAR(50) COMMENT 'DEFAULTBIT',
   CURRENTORDER         NUMERIC(10,0) COMMENT '��ǰ˳��',
   ORDERLENGTH          NUMERIC(10,0) COMMENT '˳�򳤶�',
   PRIMARY KEY (PREFIXCODE)
);

ALTER TABLE T_WF_ENGINEPREFIX COMMENT '����ǰ׺';

/*==============================================================*/
/* Table: T_WF_FLOW_FORWARDED                                   */
/*==============================================================*/
CREATE TABLE T_WF_FLOW_FORWARDED
(
   FORWARDEDID          VARCHAR(50) NOT NULL COMMENT '����ID',
   FLOWCODE             VARCHAR(50) NOT NULL COMMENT '����FLOWCODE',
   FORWARDEDTYPE        VARCHAR(2) NOT NULL DEFAULT '0' COMMENT 'ת�����͡�0����Աת������1����λת����',
   FORWARDEDTOUSERS     VARCHAR(2000) COMMENT 'ת��������Ҫ����XML',
   CREATEUSERID         VARCHAR(50) COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   CREATECOMPANYID      VARCHAR(50) COMMENT '�����˹�˾ID',
   CREATEDEPARTMENTID   VARCHAR(50) COMMENT '�����˲���ID',
   CREATEPOSTID         VARCHAR(50) COMMENT '�����˸�λID',
   CREATEDATE           DATETIME  COMMENT '��������',
   EDITUSERID           VARCHAR(50) COMMENT '�޸���ID',
   EDITUSERNAME         VARCHAR(50) COMMENT '�޸�������',
   EDITDATE             DATETIME COMMENT '�޸�����',
   CONDITIONEXPRESSION  VARCHAR(500) COMMENT '�������ʽ�����ģ�',
   CONDITIONEXPRESSIONEN VARCHAR(500) COMMENT '�������ʽ(�ֶ�)',
   PRIMARY KEY (FORWARDEDID)
);

ALTER TABLE T_WF_FLOW_FORWARDED COMMENT '�������ͨ���󣬸��ݲ�ͬ������ת��';

/*==============================================================*/
/* Table: T_WF_FLOW_FORWARDED140623                             */
/*==============================================================*/
CREATE TABLE T_WF_FLOW_FORWARDED140623
(
   FORWARDEDID          VARCHAR(50) NOT NULL,
   FLOWCODE             VARCHAR(50) NOT NULL,
   FORWARDEDTYPE        VARCHAR(2) NOT NULL,
   FORWARDEDTOUSERS     VARCHAR(2000),
   CREATEUSERID         VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDATE           DATETIME,
   EDITUSERID           VARCHAR(50),
   EDITUSERNAME         VARCHAR(50),
   EDITDATE             DATETIME,
   CONDITIONEXPRESSION  VARCHAR(500),
   CONDITIONEXPRESSIONEN VARCHAR(500)
);

ALTER TABLE T_WF_FLOW_FORWARDED140623 COMMENT 'T_WF_FLOW_FORWARDED140623';

/*==============================================================*/
/* Table: T_WF_FLOW_FORWARDED_AUDIT                             */
/*==============================================================*/
CREATE TABLE T_WF_FLOW_FORWARDED_AUDIT
(
   FORWARDEDID          VARCHAR(50) NOT NULL,
   FLOWDEFINEID         VARCHAR(50),
   FLOWCODE             VARCHAR(50),
   FORWARDEDTYPE        VARCHAR(2) COMMENT 'ת�����͡�0����Աת������1����λת����',
   FORWARDEDTOUSERS     VARCHAR(2000) COMMENT 'ת��������Ҫ����XML',
   CREATEUSERID         VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDATE           DATETIME,
   EDITUSERID           VARCHAR(50),
   EDITUSERNAME         VARCHAR(50),
   EDITDATE             DATETIME,
   CONDITIONEXPRESSION  VARCHAR(500),
   CONDITIONEXPRESSIONEN VARCHAR(500),
   PRIMARY KEY (FORWARDEDID)
);

ALTER TABLE T_WF_FLOW_FORWARDED_AUDIT COMMENT '�������ͨ���󣬸��ݲ�ͬ������ת��';

/*==============================================================*/
/* Table: T_WF_FORWARDHISTORY                                   */
/*==============================================================*/
CREATE TABLE T_WF_FORWARDHISTORY
(
   FORWARDHISTORYID     VARCHAR(50) NOT NULL,
   FROMOWNERID          VARCHAR(50),
   FROMOWNERNAME        VARCHAR(50),
   TOOWNERID            VARCHAR(50),
   TOOWNERNAME          VARCHAR(50),
   REMARK               VARCHAR(200),
   PERSONALRECORDID     VARCHAR(50),
   MODELCODE            VARCHAR(50) COMMENT '����ģ�����',
   MODELID              VARCHAR(50) COMMENT '����ID',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEDATE           DATETIME  COMMENT '�޸�ʱ��',
   PRIMARY KEY (FORWARDHISTORYID)
);

ALTER TABLE T_WF_FORWARDHISTORY COMMENT 'T_WF_FORWARDHISTORY';

/*==============================================================*/
/* Table: T_WF_MESSAGEBODYDEFINE                                */
/*==============================================================*/
CREATE TABLE T_WF_MESSAGEBODYDEFINE
(
   DEFINEID             VARCHAR(50) NOT NULL COMMENT 'Ĭ����ϢID',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   MESSAGEBODY          VARCHAR(500) COMMENT '��Ϣ��',
   MESSAGEURL           VARCHAR(1000) COMMENT '��Ϣ����',
   MESSAGETYPE          NUMERIC(8,0) DEFAULT 0 COMMENT '��Ϣ����',
   CREATEDATE           DATETIME  COMMENT '��������',
   CREATEUSERNAME       VARCHAR(50) COMMENT '����������',
   CREATEUSERID         VARCHAR(50) COMMENT '������',
   RECEIVEPOSTID        VARCHAR(1000) COMMENT '���ܸ�λID',
   RECEIVEPOSTNAME      VARCHAR(1000) COMMENT '���ܸ�λ����',
   RECEIVERUSERID       VARCHAR(1000) COMMENT '������ID',
   RECEIVERUSERNAME     VARCHAR(1000) COMMENT '����������',
   RECEIVETYPE          NUMERIC(8,0) DEFAULT 0 COMMENT '�������� 0�����ս�ɫ 1��������Ա',
   PRIMARY KEY (DEFINEID)
);

ALTER TABLE T_WF_MESSAGEBODYDEFINE COMMENT 'Ĭ����Ϣ���ñ��繫�ķ��ͣ������쳣��������ͬ������Ϣ����)';

/*==============================================================*/
/* Table: T_WF_MESSAGECONFIG                                    */
/*==============================================================*/
CREATE TABLE T_WF_MESSAGECONFIG
(
   MESSAGEID            VARCHAR(50),
   SYSTEMCODE           VARCHAR(50),
   SYSTEMNAME           VARCHAR(100),
   MODELCODE            VARCHAR(50),
   MODELNAME            VARCHAR(200),
   ISADMINPAGE          NUMERIC(38,0) COMMENT '�Ƿ����Ա�ᵥҳ�棬����ְ���룬Ա��ת������Щ�����Ǳ��˲��������ɹ���Ա����',
   MESSAGETYPE          NUMERIC(38,0) COMMENT '��Ϣ��������
            1����ͨ��ֻ����ʱ�䣬����������
            2����������'
);

ALTER TABLE T_WF_MESSAGECONFIG COMMENT '��˾��Ϣ���ͨ������Ҫ��ʼ����Ϣ�������ｫ����һЩ�������';

/*==============================================================*/
/* Table: T_WF_MESSAGECONFIG_DETAIL                             */
/*==============================================================*/
CREATE TABLE T_WF_MESSAGECONFIG_DETAIL
(
   SYSTEMCODE           VARCHAR(50),
   MODELCODE            VARCHAR(50),
   FIELDNAME            VARCHAR(50),
   FIELDTYPE            NUMERIC(38,0) COMMENT '1������
            2��������
            3������������
            4������ʱ��'
);

ALTER TABLE T_WF_MESSAGECONFIG_DETAIL COMMENT 'T_WF_MESSAGECONFIG_DETAIL';

/*==============================================================*/
/* Table: T_WF_MESSAGEDEFINE                                    */
/*==============================================================*/
CREATE TABLE T_WF_MESSAGEDEFINE
(
   MESSAGEDEFINEID      VARCHAR(50) NOT NULL COMMENT '��Ϣ����ID',
   MESSAGEKEY           VARCHAR(50) COMMENT '��ϢKEY',
   MESSAGEBODY          VARCHAR(400) COMMENT '��Ϣ��',
   MESSAGEURL           VARCHAR(2000) COMMENT '��ϢURL',
   CREATEDATETIME       DATETIME  COMMENT '��������ʱ��',
   CREATEUSERNAME       VARCHAR(50) COMMENT '�����û���',
   CREATEUSERID         VARCHAR(50) COMMENT '�����û�ID',
   PRIMARY KEY (MESSAGEDEFINEID)
);

ALTER TABLE T_WF_MESSAGEDEFINE COMMENT '��Ϣ����û�н���ֱ�������ݿ���д��';

/*==============================================================*/
/* Table: T_WF_MOBILEFILTER                                     */
/*==============================================================*/
CREATE TABLE T_WF_MOBILEFILTER
(
   SYSTEMCODE           VARCHAR(50) NOT NULL,
   MODELCODE            VARCHAR(100),
   MODELNAME            VARCHAR(200)
);

ALTER TABLE T_WF_MOBILEFILTER COMMENT 'T_WF_MOBILEFILTER';

/*==============================================================*/
/* Table: T_WF_PERSONALRECORD                                   */
/*==============================================================*/
CREATE TABLE T_WF_PERSONALRECORD
(
   PERSONALRECORDID     VARCHAR(50) NOT NULL COMMENT '���˵���ID',
   SYSTYPE              VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT '����ģ�����',
   MODELID              VARCHAR(50) COMMENT '����ID',
   CHECKSTATE           NUMERIC(8,0) COMMENT '1����� 2���ͨ�� 3��˲�ͨ��',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CONFIGINFO           VARCHAR(1500) COMMENT '��������',
   MODELDESCRIPTION     VARCHAR(1500) COMMENT '���ݼ�Ҫ����',
   ISFORWARD            NUMERIC(8,0) COMMENT '�Ƿ�ת��(0��ʾ��ת����1��ʾת��)',
   ISVIEW               NUMERIC(8,0) COMMENT '�Ƿ��Ѳ鿴(0��ʾδ�鿴��1��ʾ�Ѳ鿴)',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEDATE           DATETIME COMMENT '�޸�ʱ��',
   PRIMARY KEY (PERSONALRECORDID)
);

ALTER TABLE T_WF_PERSONALRECORD COMMENT 'T_WF_PERSONALRECORD';

/*==============================================================*/
/* Index: IDX_CORDCHECKSTATERID                                 */
/*==============================================================*/
CREATE INDEX IDX_CORDCHECKSTATERID ON T_WF_PERSONALRECORD
(
   OWNERID,
   CHECKSTATE,
   ISFORWARD
);

/*==============================================================*/
/* Index: IDX_SYSTYPECODELIDWARD                                */
/*==============================================================*/
CREATE INDEX IDX_SYSTYPECODELIDWARD ON T_WF_PERSONALRECORD
(
   SYSTYPE,
   MODELCODE,
   MODELID,
   ISFORWARD
);

/*==============================================================*/
/* Table: T_WF_PERSONALRECORD0801                               */
/*==============================================================*/
CREATE TABLE T_WF_PERSONALRECORD0801
(
   PERSONALRECORDID     VARCHAR(50) NOT NULL,
   SYSTYPE              VARCHAR(50),
   MODELCODE            VARCHAR(50),
   MODELID              VARCHAR(50),
   CHECKSTATE           NUMERIC(8,0),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CONFIGINFO           VARCHAR(1500),
   MODELDESCRIPTION     VARCHAR(1500),
   ISFORWARD            NUMERIC(8,0),
   ISVIEW               NUMERIC(8,0),
   CREATEDATE           DATETIME,
   UPDATEDATE           DATETIME
);

ALTER TABLE T_WF_PERSONALRECORD0801 COMMENT 'T_WF_PERSONALRECORD0801';

/*==============================================================*/
/* Table: T_WF_PORTALSETTING                                    */
/*==============================================================*/
CREATE TABLE T_WF_PORTALSETTING
(
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT 'ģ�����',
   PORTALTYPE           VARCHAR(50) COMMENT 'Portal����'
);

ALTER TABLE T_WF_PORTALSETTING COMMENT 'ģ������Portal����';

/*==============================================================*/
/* Index: INX_POTAL_MODELCODE                                   */
/*==============================================================*/
CREATE INDEX INX_POTAL_MODELCODE ON T_WF_PORTALSETTING
(
   MODELCODE
);

/*==============================================================*/
/* Index: INX_POTAL_SYSTEMCODE                                  */
/*==============================================================*/
CREATE INDEX INX_POTAL_SYSTEMCODE ON T_WF_PORTALSETTING
(
   SYSTEMCODE
);

/*==============================================================*/
/* Table: T_WF_PROCEDUREEXCEPTION                               */
/*==============================================================*/
CREATE TABLE T_WF_PROCEDUREEXCEPTION
(
   PCNAME               VARCHAR(100) COMMENT '�洢��������',
   SQLCODE              VARCHAR(100) COMMENT '�������',
   SQLERRM              VARCHAR(500) COMMENT '��������',
   CREATERDATA          DATETIME  COMMENT '������ʱ��',
   PCSQL                VARCHAR(2000) COMMENT 'SQL���'
);

ALTER TABLE T_WF_PROCEDUREEXCEPTION COMMENT '��¼�洢���̵���־';

/*==============================================================*/
/* Table: T_WF_SMSRECORD                                        */
/*==============================================================*/
CREATE TABLE T_WF_SMSRECORD
(
   SMSRECORD            VARCHAR(50) NOT NULL COMMENT '���ż�¼ID',
   BATCHNUMBER          VARCHAR(50) COMMENT '��¼��������',
   COMPANYID            VARCHAR(50) COMMENT '(���ͷ�)��˾ID',
   SENDSTATUS           NUMERIC(8,0) COMMENT '����״̬',
   ACCOUNT              VARCHAR(50) COMMENT '�����˺�',
   MOBILE               VARCHAR(50) COMMENT '�绰����',
   SENDMESSAGE          VARCHAR(200) COMMENT '��������',
   SENDTIME             DATETIME COMMENT '����ʱ��',
   OWNERID              VARCHAR(50) COMMENT '������ID',
   OWNERNAME            VARCHAR(50) COMMENT '����������',
   TASKCOUNT            NUMERIC(8,0) COMMENT '��������',
   REMARK               VARCHAR(200) COMMENT '��ע',
   RECORDDATE           DATETIME  COMMENT '��¼ʱ��',
   PRIMARY KEY (SMSRECORD)
);

ALTER TABLE T_WF_SMSRECORD COMMENT '���ŷ��ͼ�¼��';

/*==============================================================*/
/* Table: T_WF_TIMINGTRIGGERACTIVITY                            */
/*==============================================================*/
CREATE TABLE T_WF_TIMINGTRIGGERACTIVITY
(
   TRIGGERID            VARCHAR(50) NOT NULL COMMENT '����ID',
   BUSINESSID           VARCHAR(50) COMMENT 'ҵ��ϵͳʹ�õı�ʾ����Ҫ����ҵ��ϵͳɾ�������ı�ʾ��',
   TIMINGCONFIGID       VARCHAR(50) COMMENT '��ʱ��������ID�������ý����ID��',
   TRIGGERNAME          VARCHAR(100) COMMENT '��ʱ��������',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   SYSTEMNAME           VARCHAR(100) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(100) COMMENT 'ģ�����',
   MODELNAME            VARCHAR(100) COMMENT 'ģ������',
   TRIGGERACTIVITYTYPE  NUMERIC(8,0) COMMENT '��������ͣ�1�����Ż 2��������',
   TRIGGERTIME          DATETIME NOT NULL COMMENT '����ʱ��',
   TRIGGERDATE          NUMERIC(8,0) COMMENT '�������ڵ�����(��ʱû��)',
   TRIGGERROUND         NUMERIC(8,0) NOT NULL COMMENT '�������� 0 ֻ����һ�� 1 ���� 2Сʱ 3 �� 4 �� 5�� 6�� 7δ֪,8����',
   WCFURL               VARCHAR(200) COMMENT 'WCF��URL',
   FUNCTIONNAME         VARCHAR(50) COMMENT '������������',
   FUNCTIONPARAMTER     VARCHAR(2000) COMMENT '��������',
   PAMETERSPLITCHAR     VARCHAR(100) COMMENT '�����ֽ��',
   WCFBINDINGCONTRACT   VARCHAR(100) COMMENT 'WCF�󶨵���Լ',
   RECEIVERUSERID       VARCHAR(50) COMMENT '������ID',
   RECEIVEROLE          VARCHAR(50) COMMENT '�����˽�ɫ',
   RECEIVERNAME         VARCHAR(100) COMMENT '����������',
   MESSAGEBODY          VARCHAR(1000) COMMENT '������Ϣ',
   MESSAGEURL           VARCHAR(1000) COMMENT '��Ϣ����',
   TRIGGERSTATUS        NUMERIC(8,0) DEFAULT 0 COMMENT '������״̬',
   TRIGGERTYPE          VARCHAR(50) COMMENT '��������',
   TRIGGERDESCRIPTION   VARCHAR(200) COMMENT '��������',
   CONTRACTTYPE         VARCHAR(50) COMMENT '�ӿ����ͣ����棬��ʱ�ӿڣ�',
   CREATEDATETIME       DATETIME  COMMENT '��������',
   CREATEUSERID         VARCHAR(50) COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '������',
   REMARK               VARCHAR(200) COMMENT '��ע',
   TRIGGERSTART         DATETIME ,
   TRIGGEREND           DATETIME,
   TRIGGERMULTIPLE      NUMERIC(8,0),
   PRIMARY KEY (TRIGGERID)
);

ALTER TABLE T_WF_TIMINGTRIGGERACTIVITY COMMENT '��ʱ���������windows������в������ã�';

/*==============================================================*/
/* Table: T_WF_TIMINGTRIGGERCONFIG                              */
/*==============================================================*/
CREATE TABLE T_WF_TIMINGTRIGGERCONFIG
(
   TIMINGCONFIGID       VARCHAR(50) NOT NULL COMMENT '��ʱ��������ID',
   TRIGGERNAME          VARCHAR(100) COMMENT '��ʱ��������',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   SYSTEMNAME           VARCHAR(100) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(100) COMMENT 'ģ�����',
   MODELNAME            VARCHAR(100) COMMENT 'ģ������',
   TRIGGERACTIVITYTYPE  NUMERIC(8,0) COMMENT '��������ͣ�1�����Ż 2��������',
   TRIGGERTIME          DATETIME NOT NULL COMMENT '����ʱ��',
   TRIGGERDATE          NUMERIC(8,0) COMMENT '�������ڵ�����(��ʱû��)',
   TRIGGERROUND         NUMERIC(8,0) NOT NULL COMMENT '��������0 ֻ����һ�� 1 ���� 2Сʱ 3 �� 4 �� 5�� 6�� 7δ֪',
   WCFURL               VARCHAR(200) COMMENT 'WCF��URL',
   FUNCTIONNAME         VARCHAR(50) COMMENT '������������',
   FUNCTIONPARAMTER     VARCHAR(2000) COMMENT '��������',
   PAMETERSPLITCHAR     VARCHAR(100) COMMENT '�����ֽ��',
   WCFBINDINGCONTRACT   VARCHAR(100) COMMENT 'WCF�󶨵���Լ',
   RECEIVERUSERID       VARCHAR(50) COMMENT '������ID',
   RECEIVEROLE          VARCHAR(50) COMMENT '�����˽�ɫ',
   RECEIVERNAME         VARCHAR(100) COMMENT '����������',
   MESSAGEBODY          VARCHAR(2000) COMMENT '������Ϣ',
   MESSAGEURL           VARCHAR(1000) COMMENT '��Ϣ����',
   TRIGGERSTATUS        NUMERIC(8,0) COMMENT '������״̬',
   TRIGGERTYPE          VARCHAR(50) COMMENT '��������',
   TRIGGERDESCRIPTION   VARCHAR(200) COMMENT '��������',
   CONTRACTTYPE         VARCHAR(50) COMMENT '�ӿ����ͣ����棬��ʱ�ӿڣ�',
   CREATEDATETIME       DATETIME COMMENT '��������',
   CREATEUSERID         VARCHAR(50) COMMENT '������ID',
   CREATEUSERNAME       VARCHAR(50) COMMENT '������',
   REMARK               VARCHAR(200) COMMENT '��ע',
   PRIMARY KEY (TIMINGCONFIGID)
);

ALTER TABLE T_WF_TIMINGTRIGGERCONFIG COMMENT '��ʱ������Ϣ����������ý��������';

/*==============================================================*/
/* Table: T_WF_TIMINGTRIGGERRECORD                              */
/*==============================================================*/
CREATE TABLE T_WF_TIMINGTRIGGERRECORD
(
   RECORDID             VARCHAR(50) NOT NULL COMMENT '��¼ID',
   TRIGGERID            VARCHAR(50) COMMENT '����ID',
   TRIGGERNAME          VARCHAR(100) COMMENT '��ʱ��������',
   COMPANYID            VARCHAR(50) COMMENT '��˾ID',
   SYSTEMCODE           VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(100) COMMENT 'ģ�����',
   MODELNAME            VARCHAR(100) COMMENT 'ģ������',
   TRIGGERACTIVITYTYPE  NUMERIC(8,0) COMMENT '��������ͣ�1�����Ż 2��������',
   TRIGGERTIME          DATETIME COMMENT '����ʱ��',
   TRIGGERROUND         NUMERIC(8,0) COMMENT '��������',
   WCFURL               VARCHAR(1000) COMMENT 'WCF��URL',
   FUNCTIONNAME         VARCHAR(50) COMMENT '������������',
   FUNCTIONPARAMTER     VARCHAR(2000) COMMENT '��������',
   PAMETERSPLITCHAR     VARCHAR(100) COMMENT '�����ֽ��',
   WCFBINDINGCONTRACT   VARCHAR(100) COMMENT 'WCF�󶨵���Լ',
   RECEIVERUSERID       VARCHAR(50) COMMENT '������ID',
   RECEIVEROLE          VARCHAR(50) COMMENT '�����˽�ɫ',
   RECEIVERNAME         VARCHAR(100) COMMENT '����������',
   MESSAGEBODY          VARCHAR(2000) COMMENT '������Ϣ',
   MESSAGEURL           VARCHAR(1000) COMMENT '��Ϣ����',
   TRIGGERSTATUS        NUMERIC(8,0) COMMENT '������״̬',
   TRIGGERTYPE          VARCHAR(50) COMMENT '��������',
   TRIGGERDESCRIPTION   VARCHAR(200) COMMENT '��������',
   CONTRACTTYPE         VARCHAR(50) COMMENT '�ӿ����ͣ����棬��ʱ�ӿڣ�',
   CREATEUSERNAME       VARCHAR(50) COMMENT '������',
   REMARK               VARCHAR(200) COMMENT '��ע',
   RECORDDATE           DATETIME  COMMENT '��¼����',
   PRIMARY KEY (RECORDID)
);

ALTER TABLE T_WF_TIMINGTRIGGERRECORD COMMENT '��ʱ������ִ�м�¼';

/*==============================================================*/
/* Table: T_HR_BASICTABLE                                       */
/*==============================================================*/
CREATE TABLE T_HR_BASICTABLE
(
   REMARK               VARCHAR(2000),
   OWNERID              VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEDATE           DATETIME ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEDATE           DATETIME 
);

ALTER TABLE T_HR_BASICTABLE COMMENT 't_hr_basicTable';

ALTER TABLE FLOW_FLOWRECORDDETAIL_T ADD CONSTRAINT FLOW_FLOWRECORDDETAIL_T FOREIGN KEY (FLOWRECORDMASTERID)
      REFERENCES FLOW_FLOWRECORDMASTER_T (FLOWRECORDMASTERID) ON UPDATE RESTRICT;

ALTER TABLE FLOW_FLOWTOCATEGORY ADD CONSTRAINT FK_FLOW_TOCATEGORY_1 FOREIGN KEY (FLOWCATEGORYID)
      REFERENCES FLOW_FLOWCATEGORY (FLOWCATEGORYID) ON UPDATE RESTRICT;

ALTER TABLE FLOW_MODELFLOWRELATION_T ADD CONSTRAINT FK_FLOW_MODELFLOWRELATION_T FOREIGN KEY (FLOWCODE)
      REFERENCES FLOW_FLOWDEFINE_T (FLOWCODE) ON UPDATE RESTRICT;

ALTER TABLE FLOW_MODELFLOWRELATION_T ADD CONSTRAINT FK_FLOW_MODELFLOWRELATION_T1 FOREIGN KEY (MODELCODE)
      REFERENCES FLOW_MODELDEFINE_T (MODELCODE) ON UPDATE RESTRICT;

ALTER TABLE T_FB_BORROWAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_41 FOREIGN KEY (BORROWAPPLYMASTERID)
      REFERENCES T_FB_BORROWAPPLYMASTER (BORROWAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_BORROWAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_43 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_BORROWAPPLYMASTER ADD CONSTRAINT FK_REFERENCE_40 FOREIGN KEY (EXTENSIONALORDERID)
      REFERENCES T_FB_EXTENSIONALORDER (EXTENSIONALORDERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_BUDGETACCOUNT ADD CONSTRAINT FK_REFERENCE_26 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_BUDGETCHECK ADD CONSTRAINT FK_T_FB_BUD_REFERENCE_T_FB_SU2 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_CHARGEAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_49 FOREIGN KEY (CHARGEAPPLYMASTERID)
      REFERENCES T_FB_CHARGEAPPLYMASTER (CHARGEAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_CHARGEAPPLYDETAIL ADD CONSTRAINT FK_T_FB_CHA_REFERENCE_T_FB_S41 FOREIGN KEY (BORROWAPPLYDETAILID)
      REFERENCES T_FB_BORROWAPPLYDETAIL (BORROWAPPLYDETAILID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_CHARGEAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_6 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_CHARGEAPPLYMASTER ADD CONSTRAINT FK_REFERENCE_38 FOREIGN KEY (EXTENSIONALORDERID)
      REFERENCES T_FB_EXTENSIONALORDER (EXTENSIONALORDERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_CHARGEAPPLYMASTER ADD CONSTRAINT FK_REFERENCE_44 FOREIGN KEY (BORROWAPPLYMASTERID)
      REFERENCES T_FB_BORROWAPPLYMASTER (BORROWAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_CHARGEBYREPAY ADD CONSTRAINT FK_T_FB_CHA_REFERENCE_T_FB_CH1 FOREIGN KEY (CHARGEAPPLYMASTERID)
      REFERENCES T_FB_CHARGEAPPLYMASTER (CHARGEAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_COMPANYBUDGETAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_10 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_COMPANYBUDGETAPPLYDETAIL ADD CONSTRAINT FK_T_FB_COM_REFERENCE_T_FB_CO1 FOREIGN KEY (COMPANYBUDGETAPPLYMASTERID)
      REFERENCES T_FB_COMPANYBUDGETAPPLYMASTER (COMPANYBUDGETAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_COMPANYBUDGETMODDETAIL ADD CONSTRAINT FK_T_FB_COM_REFERENCE_T_FB_CO3 FOREIGN KEY (COMPANYBUDGETMODMASTERID)
      REFERENCES T_FB_COMPANYBUDGETMODMASTER (COMPANYBUDGETMODMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_COMPANYBUDGETMODDETAIL ADD CONSTRAINT FK_T_FB_COM_REFERENCE_T_FB_SU3 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_COMPANYBUDGETSUMDETAIL ADD CONSTRAINT FK_T_FB_COM_REFERENCE_T_FB_K02 FOREIGN KEY (COMPANYBUDGETAPPLYMASTERID)
      REFERENCES T_FB_COMPANYBUDGETAPPLYMASTER (COMPANYBUDGETAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_COMPANYBUDGETSUMDETAIL ADD CONSTRAINT FK_T_FB_COM_REFERENCE_T_FB_K01 FOREIGN KEY (COMPANYBUDGETSUMMASTERID)
      REFERENCES T_FB_COMPANYBUDGETSUMMASTER (COMPANYBUDGETSUMMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_COMPANYTRANSFERDETAIL ADD CONSTRAINT FK_T_FB_COM_REFERENCE_T_FC_CA1 FOREIGN KEY (COMPANYTRANSFERMASTERID)
      REFERENCES T_FB_COMPANYTRANSFERMASTER (COMPANYTRANSFERMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_COMPANYTRANSFERDETAIL ADD CONSTRAINT FK_T_FB_TRA_REFERENCE_T_FB_SU1 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_DEPTBUDGETADDDETAIL ADD CONSTRAINT FK_REFERENCE_27 FOREIGN KEY (DEPTBUDGETADDMASTERID)
      REFERENCES T_FB_DEPTBUDGETADDMASTER (DEPTBUDGETADDMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_DEPTBUDGETADDDETAIL ADD CONSTRAINT FK_REFERENCE_28 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_DEPTBUDGETAPPLYDETAIL ADD CONSTRAINT FK_T_FB_DEP_REFERENCE_T_FB_DE2 FOREIGN KEY (DEPTBUDGETAPPLYMASTERID)
      REFERENCES T_FB_DEPTBUDGETAPPLYMASTER (DEPTBUDGETAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_DEPTBUDGETAPPLYDETAIL ADD CONSTRAINT FK_T_FB_DEP_REFERENCE_T_FB_SU2 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_DEPTBUDGETSUMDETAIL ADD CONSTRAINT FK_T_FB_DEP_REFERENCE_T_FB_K04 FOREIGN KEY (DEPTBUDGETSUMMASTERID)
      REFERENCES T_FB_DEPTBUDGETSUMMASTER (DEPTBUDGETSUMMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_DEPTBUDGETSUMDETAIL ADD CONSTRAINT FK_T_FB_DEP_REFERENCE_T_FB_K03 FOREIGN KEY (DEPTBUDGETAPPLYMASTERID)
      REFERENCES T_FB_DEPTBUDGETAPPLYMASTER (DEPTBUDGETAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_DEPTTRANSFERDETAIL ADD CONSTRAINT FK_T_FB_DEP_REFERENCE_T_FC_S11 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_DEPTTRANSFERDETAIL ADD CONSTRAINT FK_T_FB_DEP_REFERENCE_T_FC_222 FOREIGN KEY (DEPTTRANSFERMASTERID)
      REFERENCES T_FB_DEPTTRANSFERMASTER (DEPTTRANSFERMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_EXTENSIONORDERDETAIL ADD CONSTRAINT FK_REFERENCE_50 FOREIGN KEY (EXTENSIONALORDERID)
      REFERENCES T_FB_EXTENSIONALORDER (EXTENSIONALORDERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_EXTENSIONORDERDETAIL ADD CONSTRAINT FK_REFERENCE_51 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_EXTENSIONALORDER ADD CONSTRAINT FK_T_FB_EXT_REFERENCE_T_FB_S91 FOREIGN KEY (EXTENSIONALTYPEID)
      REFERENCES T_FB_EXTENSIONALTYPE (EXTENSIONALTYPEID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_PERSONBUDGETADDDETAIL ADD CONSTRAINT FK_T_FB_PER_REFERENCE_T_FB_D01 FOREIGN KEY (DEPTBUDGETADDDETAILID)
      REFERENCES T_FB_DEPTBUDGETADDDETAIL (DEPTBUDGETADDDETAILID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_PERSONBUDGETADDDETAIL ADD CONSTRAINT FK_T_FB_PER_REFERENCE_T_FB_S41 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_PERSONBUDGETAPPLYDETAIL ADD CONSTRAINT FK_T_FB_PER_REFERENCE_T_FB_D02 FOREIGN KEY (DEPTBUDGETAPPLYDETAILID)
      REFERENCES T_FB_DEPTBUDGETAPPLYDETAIL (DEPTBUDGETAPPLYDETAILID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_PERSONBUDGETAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_8 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_PERSONMONEYASSIGNDETAIL ADD CONSTRAINT FK_T_FB_PER_REFERENCE_T_FB_N01 FOREIGN KEY (PERSONMONEYASSIGNMASTERID)
      REFERENCES T_FB_PERSONMONEYASSIGNMASTER (PERSONMONEYASSIGNMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_PERSONMONEYASSIGNDETAIL ADD CONSTRAINT FK_T_FB_PER_REFERENCE_T_FB_N02 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_REPAYAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_42 FOREIGN KEY (REPAYAPPLYMASTERID)
      REFERENCES T_FB_REPAYAPPLYMASTER (REPAYAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_REPAYAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_45 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_REPAYAPPLYDETAIL ADD CONSTRAINT FK_T_FB_REP_REFERENCE_T_FB_S43 FOREIGN KEY (BORROWAPPLYDETAILID)
      REFERENCES T_FB_BORROWAPPLYDETAIL (BORROWAPPLYDETAILID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_REPAYAPPLYMASTER ADD CONSTRAINT FK_T_FB_REP_REFERENCE_T_FB_S01 FOREIGN KEY (BORROWAPPLYMASTERID)
      REFERENCES T_FB_BORROWAPPLYMASTER (BORROWAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_REPAYAPPLYMASTER ADD CONSTRAINT FK_REFERENCE_48 FOREIGN KEY (EXTENSIONALORDERID)
      REFERENCES T_FB_EXTENSIONALORDER (EXTENSIONALORDERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUBJECTCOMPANYSET ADD CONSTRAINT FK_REFERENCE_16 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUMSETTINGSDETAIL ADD CONSTRAINT FK_T_FB_SUMSETTINGSMASTER FOREIGN KEY (SUMSETTINGSMASTERID)
      REFERENCES T_FB_SUMSETTINGSMASTER (SUMSETTINGSMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUBJECT ADD CONSTRAINT FK_T_FB_SUB_REFERENCE_T_FB_SU4 FOREIGN KEY (SUBJECTTYPEID)
      REFERENCES T_FB_SUBJECTTYPE (SUBJECTTYPEID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUBJECT ADD CONSTRAINT FK_REFERENCE_9 FOREIGN KEY (PARENTSUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUBJECTCOMPANY ADD CONSTRAINT FK_T_FB_COM_REFERENCE_T_FB_SU0 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUBJECTDEPTMENT ADD CONSTRAINT FK_T_FB_SUB_REFERENCE_T_FB_S01 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUBJECTDEPTMENT ADD CONSTRAINT FK_T_FB_SUB_REFERENCE_T_FB_SU1 FOREIGN KEY (SUBJECTCOMPANYID)
      REFERENCES T_FB_SUBJECTCOMPANY (SUBJECTCOMPANYID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUBJECTPOST ADD CONSTRAINT FK_T_FB_SUB_REFERENCE_T_FB_SU2 FOREIGN KEY (SUBJECTDEPTMENTID)
      REFERENCES T_FB_SUBJECTDEPTMENT (SUBJECTDEPTMENTID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_SUBJECTPOST ADD CONSTRAINT FK_T_FB_SUB_REFERENCE_T_FB_S02 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_TRAVELEXPAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_2 FOREIGN KEY (TRAVELEXPAPPLYMASTERID)
      REFERENCES T_FB_TRAVELEXPAPPLYMASTER (TRAVELEXPAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_TRAVELEXPAPPLYDETAIL ADD CONSTRAINT FK_REFERENCE_5 FOREIGN KEY (SUBJECTID)
      REFERENCES T_FB_SUBJECT (SUBJECTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_FB_TRAVELEXPAPPLYDETAIL ADD CONSTRAINT FK_T_FB_TRA_REFERENCE_T_FB_S42 FOREIGN KEY (BORROWAPPLYDETAILID)
      REFERENCES T_FB_BORROWAPPLYDETAIL (BORROWAPPLYDETAILID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_TRAVELEXPAPPLYMASTER ADD CONSTRAINT FK_REFERENCE_46 FOREIGN KEY (BORROWAPPLYMASTERID)
      REFERENCES T_FB_BORROWAPPLYMASTER (BORROWAPPLYMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_FB_TRAVELEXPAPPLYMASTER ADD CONSTRAINT FK_REFERENCE_47 FOREIGN KEY (EXTENSIONALORDERID)
      REFERENCES T_FB_EXTENSIONALORDER (EXTENSIONALORDERID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ADJUSTLEAVE ADD CONSTRAINT FK_REFERENCE_63 FOREIGN KEY (LEAVERECORDID)
      REFERENCES T_HR_EMPLOYEELEAVERECORD (LEAVERECORDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_AREAALLOWANCE ADD CONSTRAINT FK_AREADIFFERENCE_T_HR_ARE FOREIGN KEY (AREADIFFERENCEID)
      REFERENCES T_HR_AREADIFFERENCE (AREADIFFERENCEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_AREACITY ADD CONSTRAINT FK_T_HR_ARE_AREACITY FOREIGN KEY (AREADIFFERENCEID)
      REFERENCES T_HR_AREADIFFERENCE (AREADIFFERENCEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ASSESSMENTFORMDETAIL ADD CONSTRAINT FK_T_HR_ASSEDETAIL_HR_ASS FOREIGN KEY (ASSESSMENTFORMMASTERID)
      REFERENCES T_HR_ASSESSMENTFORMMASTER (ASSESSMENTFORMMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ASSESSMENTFORMDETAIL ADD CONSTRAINT FK_REFERENCE_69 FOREIGN KEY (CHECKPOINTSETID)
      REFERENCES T_HR_CHECKPOINTSET (CHECKPOINTSETID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ASSESSMENTFORMMASTER ADD CONSTRAINT FK_T_HR_ASS_EMPLOYEECHECK FOREIGN KEY (BEREGULARID)
      REFERENCES T_HR_EMPLOYEECHECK (BEREGULARID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ASSESSMENTFORMMASTER ADD CONSTRAINT FK_T_HR_FORMMASTER_T_HR_EMP FOREIGN KEY (POSTCHANGEID)
      REFERENCES T_HR_EMPLOYEEPOSTCHANGE (POSTCHANGEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDFREELEAVE ADD CONSTRAINT FK_REFERENCE_78 FOREIGN KEY (ATTENDANCESOLUTIONID)
      REFERENCES T_HR_ATTENDANCESOLUTION (ATTENDANCESOLUTIONID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDFREELEAVE ADD CONSTRAINT FK_ATTENDFREELEAVE_T_HR_LEA FOREIGN KEY (LEAVETYPESETID)
      REFERENCES T_HR_LEAVETYPESET (LEAVETYPESETID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDMONTHLYBALANCE ADD CONSTRAINT FK_T_HR_ATT_BATCH_ATT FOREIGN KEY (MONTHLYBATCHID)
      REFERENCES T_HR_ATTENDMONTHLYBATCHBALANCE (MONTHLYBATCHID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDANCEDEDUCTDETAIL ADD CONSTRAINT FK_T_HR_ATT_T_HR_DEDUCTMASTER FOREIGN KEY (DEDUCTMASTERID)
      REFERENCES T_HR_ATTENDANCEDEDUCTMASTER (DEDUCTMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDANCERECORD ADD CONSTRAINT FK_REFERENCE_64 FOREIGN KEY (WORKTIMESETID)
      REFERENCES T_HR_SHIFTDEFINE (SHIFTDEFINEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDANCESOLUTION ADD CONSTRAINT FK_REFERENCE_65 FOREIGN KEY (OVERTIMEREWARDID)
      REFERENCES T_HR_OVERTIMEREWARD (OVERTIMEREWARDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDANCESOLUTION ADD CONSTRAINT FK_REFERENCE_74 FOREIGN KEY (TEMPLATEMASTERID)
      REFERENCES T_HR_SCHEDULINGTEMPLATEMASTER (TEMPLATEMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDANCESOLUTIONASIGN ADD CONSTRAINT FK_T_HR_SOLUTIONAPL_T_HR_ATT FOREIGN KEY (ATTENDANCESOLUTIONID)
      REFERENCES T_HR_ATTENDANCESOLUTION (ATTENDANCESOLUTIONID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDANCESOLUTIONDEDUCT ADD CONSTRAINT FK_T_HR_SOLUTION_T_HR_ATT FOREIGN KEY (ATTENDANCESOLUTIONID)
      REFERENCES T_HR_ATTENDANCESOLUTION (ATTENDANCESOLUTIONID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ATTENDANCESOLUTIONDEDUCT ADD CONSTRAINT FK_T_HR_MASTER_T_HR_DETAIL FOREIGN KEY (DEDUCTMASTERID)
      REFERENCES T_HR_ATTENDANCEDEDUCTMASTER (DEDUCTMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_CHECKMODELDEFINE ADD CONSTRAINT FK_CHECKMODELFLOW_MODEL FOREIGN KEY (ORGCHECKMODELID)
      REFERENCES T_HR_ORGANIZATIONCHECKMODEL (ORGCHECKMODELID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_CHECKPOINTLEVELSET ADD CONSTRAINT FK_T_HR_CHE_POINTLEVEL FOREIGN KEY (CHECKPOINTSETID)
      REFERENCES T_HR_CHECKPOINTSET (CHECKPOINTSETID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_CHECKPOINTSET ADD CONSTRAINT FK_REFERENCE_70 FOREIGN KEY (CHECKPROJECTID)
      REFERENCES T_HR_CHECKPROJECTSET (CHECKPROJECTID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_COMPANY ADD CONSTRAINT FK_T_HR_COM_T_HR_COM FOREIGN KEY (FATHERCOMPANYID)
      REFERENCES T_HR_COMPANY (COMPANYID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_COMPANYHISTORY ADD CONSTRAINT FK_T_HR_COMHIS_T_HR_COM FOREIGN KEY (FATHERCOMPANYID)
      REFERENCES T_HR_COMPANY (COMPANYID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_CUSTOMGUERDON ADD CONSTRAINT FK_T_HR_CUSTOMGUERDON_T_HR_SAL FOREIGN KEY (SALARYSTANDARDID)
      REFERENCES T_HR_SALARYSTANDARD (SALARYSTANDARDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_CUSTOMGUERDON ADD CONSTRAINT FK_T_HR_CUS_GUERDONSET FOREIGN KEY (CUSTOMGUERDONSETID)
      REFERENCES T_HR_CUSTOMGUERDONSET (CUSTOMGUERDONSETID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_CUSTOMGUERDONARCHIVE ADD CONSTRAINT FK_T_HR_GUERDONARCHIVE_SAL FOREIGN KEY (SALARYARCHIVEID)
      REFERENCES T_HR_SALARYARCHIVE (SALARYARCHIVEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_CUSTOMGUERDONARCHIVEHIS ADD CONSTRAINT FK_T_HR_ARCHIVEHIS_T_HR_SAL FOREIGN KEY (SALARYARCHIVEID)
      REFERENCES T_HR_SALARYARCHIVEHIS (SALARYARCHIVEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_DEPARTMENT ADD CONSTRAINT FK_REFERENCE_139 FOREIGN KEY (COMPANYID)
      REFERENCES T_HR_COMPANY (COMPANYID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_DEPARTMENT ADD CONSTRAINT FK_T_HR_DEP_T_HR_DEPDIC FOREIGN KEY (DEPARTMENTDICTIONARYID)
      REFERENCES T_HR_DEPARTMENTDICTIONARY (DEPARTMENTDICTIONARYID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_DEPARTMENTHISTORY ADD CONSTRAINT FK_T_HR_DEPHIS_T_HR_DEPDIC FOREIGN KEY (DEPARTMENTDICTIONARYID)
      REFERENCES T_HR_DEPARTMENTDICTIONARY (DEPARTMENTDICTIONARYID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEE ADD CONSTRAINT FK_T_HR_EMPBASE_T_HR_RES FOREIGN KEY (RESUMEID)
      REFERENCES T_HR_RESUME (RESUMEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEPOST ADD CONSTRAINT FK_REFERENCE_61 FOREIGN KEY (POSTID)
      REFERENCES T_HR_POST (POSTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEPOST ADD CONSTRAINT FK_T_HR_EMPPOST_T_HR_EMP FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EDUCATEHISTORY ADD CONSTRAINT FK_REFERENCE_104 FOREIGN KEY (RESUMEID)
      REFERENCES T_HR_RESUME (RESUMEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEABNORMRECORD ADD CONSTRAINT FK_SIGNINDETAIL_T_HR_ATT FOREIGN KEY (ATTENDANCERECORDID)
      REFERENCES T_HR_ATTENDANCERECORD (ATTENDANCERECORDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEADDSUM ADD CONSTRAINT FK_EMPLOYEEADDSUMBATCH_EMP FOREIGN KEY (MONTHLYBATCHID)
      REFERENCES T_HR_EMPLOYEEADDSUMBATCH (MONTHLYBATCHID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEECANCELLEAVE ADD CONSTRAINT FK_REFERENCE_88 FOREIGN KEY (LEAVERECORDID)
      REFERENCES T_HR_EMPLOYEELEAVERECORD (LEAVERECORDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEECHECK ADD CONSTRAINT FK_T_HR_EMPLOYEECHECK_T_HR_EMP FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEECONTRACT ADD CONSTRAINT FK_T_HR_EMPCONTRACT_T_HR_EMP FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEENTRY ADD CONSTRAINT FK_T_HR_EMPENTRY_T_HR_EMPBASE FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEEVECTIONREPORT ADD CONSTRAINT FK_T_HR_EMP_EVECTIONREPORT FOREIGN KEY (EVECTIONRECORDID)
      REFERENCES T_HR_EMPLOYEEEVECTIONRECORD (EVECTIONRECORDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEINSURANCE ADD CONSTRAINT FK_T_HR_EMPSIRECORD_T_HR_EMP FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEELEAVERECORD ADD CONSTRAINT FK_REFERENCE_71 FOREIGN KEY (LEAVETYPESETID)
      REFERENCES T_HR_LEAVETYPESET (LEAVETYPESETID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEELEVELDAYDETAILS ADD CONSTRAINT FK_LEVELDAYCOUNT_DETAILS FOREIGN KEY (RECORDID)
      REFERENCES T_HR_EMPLOYEELEVELDAYCOUNT (RECORDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEOVERTIMEDETAILRD ADD CONSTRAINT FK_T_HR_EMPORD_T_HR_EMPODRD FOREIGN KEY (OVERTIMERECORDID)
      REFERENCES T_HR_EMPLOYEEOVERTIMERECORD (OVERTIMERECORDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEEPOSTCHANGE ADD CONSTRAINT FK_T_HR_EMPCHANGE_T_HR_EMPBASE FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEESALARYRECORD ADD CONSTRAINT FK_SALARYRECORDBATCH_T_HR_SAL FOREIGN KEY (MONTHLYBATCHID)
      REFERENCES T_HR_SALARYRECORDBATCH (MONTHLYBATCHID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEESALARYRECORDITEM ADD CONSTRAINT FK_SALARYRECORDITEM_T_HR_EMP FOREIGN KEY (EMPLOYEESALARYRECORDID)
      REFERENCES T_HR_EMPLOYEESALARYRECORD (EMPLOYEESALARYRECORDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEESIGNINDETAIL ADD CONSTRAINT FK_SIGNINDETAIL_SIGNINRECORD FOREIGN KEY (SIGNINID)
      REFERENCES T_HR_EMPLOYEESIGNINRECORD (SIGNINID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EMPLOYEESIGNINDETAIL ADD CONSTRAINT FK_SIGNINDETAIL_ABNORMRECORD FOREIGN KEY (ABNORMRECORDID)
      REFERENCES T_HR_EMPLOYEEABNORMRECORD (ABNORMRECORDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_EXPERIENCE ADD CONSTRAINT FK_T_HR_EMPCAREER_T_HR_RES FOREIGN KEY (RESUMEID)
      REFERENCES T_HR_RESUME (RESUMEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_FAMILYMEMBER ADD CONSTRAINT FK_REFERENCE_110 FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_FREELEAVEDAYSET ADD CONSTRAINT FK_REFERENCE_72 FOREIGN KEY (LEAVETYPESETID)
      REFERENCES T_HR_LEAVETYPESET (LEAVETYPESETID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_IMPORTSETDETAIL ADD CONSTRAINT FK_T_HR_IMPORTSETMASTER_DETAIL FOREIGN KEY (MASTERID)
      REFERENCES T_HR_IMPORTSETMASTER (MASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIPOINT ADD CONSTRAINT FK_KPIPOINT_REFERENCE_T_HR_SCO FOREIGN KEY (SCORETYPEID)
      REFERENCES T_HR_SCORETYPE (SCORETYPEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIPOINTDEFINE ADD CONSTRAINT KPIPOINTDEFINE_CHECKCATEGORY FOREIGN KEY (CHECKCATEGORYID)
      REFERENCES T_HR_CHECKCATEGORYSET (CHECKCATEGORYID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIPOINTDEFINE ADD CONSTRAINT FK_REFERENCE_96 FOREIGN KEY (SPOTCHECKGROUPID)
      REFERENCES T_HR_SPOTCHECKGROUP (SPOTCHECKGROUPID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIPOINTDEFINE ADD CONSTRAINT FK_KPIPOINTDEFINE_T_HR_CHE FOREIGN KEY (CHECKMODELID)
      REFERENCES T_HR_CHECKMODELDEFINE (CHECKMODELID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIREMIND ADD CONSTRAINT FK_T_HR_KPI_REFERENCE_T_HR_SCO FOREIGN KEY (SCORETYPEID)
      REFERENCES T_HR_SCORETYPE (SCORETYPEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIRECORD ADD CONSTRAINT FK_T_HR_KPI_REFERENCE_T_HR_KPI FOREIGN KEY (KPIPOINTID)
      REFERENCES T_HR_KPIPOINT (KPIPOINTID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIRECORD ADD CONSTRAINT FK_KPIRECORD_SPOTCHECKER FOREIGN KEY (T_H_SPOTCHECKERID)
      REFERENCES T_HR_SPOTCHECKER (SPOTCHECKERID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIRECORD ADD CONSTRAINT FK_T_HR_KPI_KPIPOINTDEFINE FOREIGN KEY (KPIPOINTID)
      REFERENCES T_HR_KPIPOINTDEFINE (KPIPOINTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPIRECORDAPPEAL ADD CONSTRAINT FK_KPIRECORDAPPEAL_T_HR_KPI FOREIGN KEY (KPIRECORDID)
      REFERENCES T_HR_KPIRECORD (KPIRECORDID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_KPITYPE ADD CONSTRAINT FK_KPITYPE_T_HR_SCORETYPE FOREIGN KEY (SCORETYPEID)
      REFERENCES T_HR_SCORETYPE (SCORETYPEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_LEFTOFFICE ADD CONSTRAINT FK_T_HR_EMPCHANGE_T_HR_EMP FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_LEFTOFFICE ADD CONSTRAINT FK_REFERENCE_94 FOREIGN KEY (EMPLOYEEPOSTID)
      REFERENCES T_HR_EMPLOYEEPOST (EMPLOYEEPOSTID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_LEFTOFFICECONFIRM ADD CONSTRAINT FK_T_HR_LEF_LEFTOFFICECONFIRM FOREIGN KEY (DIMISSIONID)
      REFERENCES T_HR_LEFTOFFICE (DIMISSIONID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_ORGANIZATIONCHECKMODEL ADD CONSTRAINT FK_REFERENCE_97 FOREIGN KEY (FATHERLID)
      REFERENCES T_HR_ORGANIZATIONCHECKMODEL (ORGCHECKMODELID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_OUTAPPLYCONFIRM ADD CONSTRAINT FK_T_HR_OUTAPPLY_OUTAPPLYCONFIRM FOREIGN KEY (OUTAPPLYID)
      REFERENCES T_HR_OUTAPPLYRECORD (OUTAPPLYID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_OUTPLANDAYS ADD CONSTRAINT FK_REFERENCE_93 FOREIGN KEY (VACATIONID)
      REFERENCES T_HR_VACATIONSET (VACATIONID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_PERFORMANCEDETAIL ADD CONSTRAINT FK_T_HR_PER_REFERENCE_T_HR_PER FOREIGN KEY (PERFORMANCEID)
      REFERENCES T_HR_PERFORMANCERECORD (PERFORMANCEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_PERFORMANCERECORD ADD CONSTRAINT FK_T_HR_PER_REFERENCE_T_HR_SUM FOREIGN KEY (SUMID)
      REFERENCES T_HR_SUMPERFORMANCERECORD (SUMID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_PENSIONDETAIL ADD CONSTRAINT FK_REFERENCE_109 FOREIGN KEY (PENSIONMASTERID)
      REFERENCES T_HR_PENSIONMASTER (PENSIONMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_PENSIONMASTER ADD CONSTRAINT FK_T_HR_EMPSI_T_HR_EMPBASE FOREIGN KEY (EMPLOYEEID)
      REFERENCES T_HR_EMPLOYEE (EMPLOYEEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_POST ADD CONSTRAINT FK_T_HR_POS_T_HR_POSDIC FOREIGN KEY (POSTDICTIONARYID)
      REFERENCES T_HR_POSTDICTIONARY (POSTDICTIONARYID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_POST ADD CONSTRAINT FK_REFERENCE_144 FOREIGN KEY (DEPARTMENTID)
      REFERENCES T_HR_DEPARTMENT (DEPARTMENTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_POSTDICTIONARY ADD CONSTRAINT FK_POSTDICTIONARY_T_HR_DEP FOREIGN KEY (DEPARTMENTDICTIONARYID)
      REFERENCES T_HR_DEPARTMENTDICTIONARY (DEPARTMENTDICTIONARYID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_POSTHISTORY ADD CONSTRAINT FK_T_HR_POSHIS_T_HR_POSDIC FOREIGN KEY (POSTDICTIONARYID)
      REFERENCES T_HR_POSTDICTIONARY (POSTDICTIONARYID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_POSTLEVELDISTINCTION ADD CONSTRAINT FK_REFERENCE_137 FOREIGN KEY (SALARYSYSTEMID)
      REFERENCES T_HR_SALARYSYSTEM (SALARYSYSTEMID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_RAMDONGROUPPERSON ADD CONSTRAINT FK_T_HR_RAM_REFERENCE_T_HR_RAN FOREIGN KEY (RANDOMGROUPID)
      REFERENCES T_HR_RANDOMGROUP (RANDOMGROUPID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_RELATIONPOST ADD CONSTRAINT FK_REFERENCE_146 FOREIGN KEY (POSTID)
      REFERENCES T_HR_POST (POSTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_SCORETYPE ADD CONSTRAINT FK_T_HR_SCO_REFERENCE_T_HR_RAN FOREIGN KEY (RANDOMGROUPID)
      REFERENCES T_HR_RANDOMGROUP (RANDOMGROUPID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYARCHIVE ADD CONSTRAINT FK_SALARYARCHIVE_T_HR_SAL FOREIGN KEY (SALARYSTANDARDID)
      REFERENCES T_HR_SALARYSTANDARD (SALARYSTANDARDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYARCHIVEHISITEM ADD CONSTRAINT FK_SALARYARCHIVEHIS_HISITEM FOREIGN KEY (SALARYARCHIVEID)
      REFERENCES T_HR_SALARYARCHIVEHIS (SALARYARCHIVEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYARCHIVEITEM ADD CONSTRAINT FK_SALARYARCHIVEITEM_HR_SAL FOREIGN KEY (SALARYARCHIVEID)
      REFERENCES T_HR_SALARYARCHIVE (SALARYARCHIVEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYLEVEL ADD CONSTRAINT FK_REFERENCE_128 FOREIGN KEY (POSTLEVELID)
      REFERENCES T_HR_POSTLEVELDISTINCTION (POSTLEVELID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYSOLUTION ADD CONSTRAINT FK_SALARYSOLUTION_T_HR_ARE FOREIGN KEY (AREADIFFERENCEID)
      REFERENCES T_HR_AREADIFFERENCE (AREADIFFERENCEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYSOLUTION ADD CONSTRAINT FK_SALARYSOLUTION_SALARYSYSTEM FOREIGN KEY (SALARYSYSTEMID)
      REFERENCES T_HR_SALARYSYSTEM (SALARYSYSTEMID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYSOLUTIONASSIGN ADD CONSTRAINT FK_REFERENCE_127 FOREIGN KEY (SALARYSOLUTIONID)
      REFERENCES T_HR_SALARYSOLUTION (SALARYSOLUTIONID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYSOLUTIONITEM ADD CONSTRAINT FK_SALARYSOLUTIONITEM_ITEM FOREIGN KEY (SALARYITEMID)
      REFERENCES T_HR_SALARYITEM (SALARYITEMID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYSOLUTIONITEM ADD CONSTRAINT FK_SALARYSOLUTIONITEM_SOLUTION FOREIGN KEY (SALARYSOLUTIONID)
      REFERENCES T_HR_SALARYSOLUTION (SALARYSOLUTIONID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYSTANDARD ADD CONSTRAINT FK_SALARYSTANDARD_SALARYLEVEL FOREIGN KEY (SALARYLEVELID)
      REFERENCES T_HR_SALARYLEVEL (SALARYLEVELID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYSTANDARDITEM ADD CONSTRAINT FK_T_HR_SAL_SALARYSTANDARDITEM FOREIGN KEY (SALARYSTANDARDID)
      REFERENCES T_HR_SALARYSTANDARD (SALARYSTANDARDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYSTANDARDITEM ADD CONSTRAINT FK_SALARYSTANDARD_SALARYITEM FOREIGN KEY (SALARYITEMID)
      REFERENCES T_HR_SALARYITEM (SALARYITEMID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SALARYTAXES ADD CONSTRAINT FK_SALARYTAXES_SALARYSOLUTION FOREIGN KEY (SALARYSOLUTIONID)
      REFERENCES T_HR_SALARYSOLUTION (SALARYSOLUTIONID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SCHEDULINGTEMPLATEDETAIL ADD CONSTRAINT FK_REFERENCE_73 FOREIGN KEY (TEMPLATEMASTERID)
      REFERENCES T_HR_SCHEDULINGTEMPLATEMASTER (TEMPLATEMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SCHEDULINGTEMPLATEDETAIL ADD CONSTRAINT FK_REFERENCE_75 FOREIGN KEY (SHIFTDEFINEID)
      REFERENCES T_HR_SHIFTDEFINE (SHIFTDEFINEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_SPOTCHECKER ADD CONSTRAINT FK_REFERENCE_95 FOREIGN KEY (SPOTCHECKGROUPID)
      REFERENCES T_HR_SPOTCHECKGROUP (SPOTCHECKGROUPID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_HR_STANDREWARDARCHIVE ADD CONSTRAINT FK_T_HR_ARCHIVE_T_HR_SAL FOREIGN KEY (SALARYARCHIVEID)
      REFERENCES T_HR_SALARYARCHIVE (SALARYARCHIVEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_STANDREWARDARCHIVEHIS ADD CONSTRAINT FK_REWARDARCHIVE_T_HR_SAL FOREIGN KEY (SALARYARCHIVEID)
      REFERENCES T_HR_SALARYARCHIVEHIS (SALARYARCHIVEID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_STANDARDPERFORMANCEREWARD ADD CONSTRAINT FK_T_HR_STAREWARD_T_HR_SAL FOREIGN KEY (SALARYSTANDARDID)
      REFERENCES T_HR_SALARYSTANDARD (SALARYSTANDARDID) ON UPDATE RESTRICT;

ALTER TABLE T_HR_STANDARDPERFORMANCEREWARD ADD CONSTRAINT FK_REFERENCE_122 FOREIGN KEY (PERFORMANCEREWARDSETID)
      REFERENCES T_HR_PERFORMANCEREWARDSET (PERFORMANCEREWARDSETID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_ACCIDENTRECORD ADD CONSTRAINT FK_T_OA_ACCIDENTRECORD FOREIGN KEY (ASSETID)
      REFERENCES T_OA_VEHICLE (ASSETID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_AREAALLOWANCE ADD CONSTRAINT FK_T_OA_AREAALLOWANCE FOREIGN KEY (TRAVELSOLUTIONSID)
      REFERENCES T_OA_TRAVELSOLUTIONS (TRAVELSOLUTIONSID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_AREAALLOWANCE ADD CONSTRAINT FK_AREADIFFERENCE_T_OA_ARE FOREIGN KEY (AREADIFFERENCEID)
      REFERENCES T_OA_AREADIFFERENCE (AREADIFFERENCEID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_AREACITY ADD CONSTRAINT FK_T_OA_ARE_AREACITY FOREIGN KEY (AREADIFFERENCEID)
      REFERENCES T_OA_AREADIFFERENCE (AREADIFFERENCEID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_AREADIFFERENCE ADD CONSTRAINT FK_T_OA_AREADIFFERENCE FOREIGN KEY (TRAVELSOLUTIONSID)
      REFERENCES T_OA_TRAVELSOLUTIONS (TRAVELSOLUTIONSID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_BUSINESSREPORT ADD CONSTRAINT FK_REFERENCE_154 FOREIGN KEY (BUSINESSTRIPID)
      REFERENCES T_OA_BUSINESSTRIP (BUSINESSTRIPID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_OA_BUSINESSREPORTDETAIL ADD CONSTRAINT FK_T_OA_REPORTDETAIL_T_OA_BUS FOREIGN KEY (BUSINESSREPORTID)
      REFERENCES T_OA_BUSINESSREPORT (BUSINESSREPORTID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_BUSINESSTRIPDETAIL ADD CONSTRAINT FK_T_OA_BUS_T_OA_BUSDETAIL FOREIGN KEY (BUSINESSTRIPID)
      REFERENCES T_OA_BUSINESSTRIP (BUSINESSTRIPID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_CANTAKETHEPLANELINE ADD CONSTRAINT FK_REFERENCE_149 FOREIGN KEY (TRAVELSOLUTIONSID)
      REFERENCES T_OA_TRAVELSOLUTIONS (TRAVELSOLUTIONSID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_CONSERVATION ADD CONSTRAINT FK_T_OA_CONSERVATION FOREIGN KEY (ASSETID)
      REFERENCES T_OA_VEHICLE (ASSETID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_CONSERVATIONRECORD ADD CONSTRAINT FK_T_OA_CONSERVATIONRECORD FOREIGN KEY (CONSERVATIONID)
      REFERENCES T_OA_CONSERVATION (CONSERVATIONID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_CONTRACTPRINT ADD CONSTRAINT FK_T_OA_CONTRACTPRINT FOREIGN KEY (CONTRACTAPPID)
      REFERENCES T_OA_CONTRACTAPP (CONTRACTAPPID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_CONTRACTTEMPLATE ADD CONSTRAINT FK_T_OA_CONTRACTTEMPLATE FOREIGN KEY (CONTRACTTYPEID)
      REFERENCES T_OA_CONTRACTTYPE (CONTRACTTYPEID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_CONTRACTVIEW ADD CONSTRAINT FK_T_OA_CONTRACTVIEW FOREIGN KEY (CONTRACTPRINTID)
      REFERENCES T_OA_CONTRACTPRINT (CONTRACTPRINTID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_COSTRECORD ADD CONSTRAINT FK_T_OA_COSTRECORD FOREIGN KEY (ASSETID)
      REFERENCES T_OA_VEHICLE (ASSETID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_HIREAPP ADD CONSTRAINT FK_T_OA_HIREAPP FOREIGN KEY (HOUSELISTID)
      REFERENCES T_OA_HOUSELIST (HOUSELISTID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_HIRERECORD ADD CONSTRAINT T_OA_HIRERECORD FOREIGN KEY (HIREAPPID)
      REFERENCES T_OA_HIREAPP (HIREAPPID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_HOUSELIST ADD CONSTRAINT FK_T_OA_HOUSELIST1 FOREIGN KEY (HOUSEID)
      REFERENCES T_OA_HOUSEINFO (HOUSEID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_HOUSELIST ADD CONSTRAINT FK_T_OA_HOUSELIST2 FOREIGN KEY (ISSUANCEID)
      REFERENCES T_OA_HOUSEINFOISSUANCE (ISSUANCEID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_LENDARCHIVES ADD CONSTRAINT FK_T_OA_LENDARCHIVES FOREIGN KEY (ARCHIVESID)
      REFERENCES T_OA_ARCHIVES (ARCHIVESID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_LICENSEDETAIL ADD CONSTRAINT FK_T_OA_LICENSEDETAIL FOREIGN KEY (LICENSEMASTERID)
      REFERENCES T_OA_LICENSEMASTER (LICENSEMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_LICENSEMASTER ADD CONSTRAINT FK_T_OA_LICENSEMASTER FOREIGN KEY (ORGCODE)
      REFERENCES T_OA_ORGANIZATION (ORGCODE) ON UPDATE RESTRICT;

ALTER TABLE T_OA_LICENSEUSER ADD CONSTRAINT FK_T_OA_LICENSEUSER FOREIGN KEY (LICENSEMASTERID)
      REFERENCES T_OA_LICENSEMASTER (LICENSEMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MAINTENANCEAPP ADD CONSTRAINT FK_T_OA_MAINTENANCEAPP FOREIGN KEY (ASSETID)
      REFERENCES T_OA_VEHICLE (ASSETID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MAINTENANCERECORD ADD CONSTRAINT FK_T_OA_MAINTENANCERECORD FOREIGN KEY (MAINTENANCEAPPID)
      REFERENCES T_OA_MAINTENANCEAPP (MAINTENANCEAPPID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGCONTENT ADD CONSTRAINT FK_T_OA_MEETINGCONTENT FOREIGN KEY (MEETINGINFOID, MEETINGUSERID)
      REFERENCES T_OA_MEETINGSTAFF (MEETINGINFOID, MEETINGUSERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGINFO ADD CONSTRAINT FK_T_OA_MEETINGINFO1 FOREIGN KEY (MEETINGROOMNAME)
      REFERENCES T_OA_MEETINGROOM (MEETINGROOMNAME) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGINFO ADD CONSTRAINT FK_T_OA_MEETINGINFO2 FOREIGN KEY (MEETINGTYPE)
      REFERENCES T_OA_MEETINGTYPE (MEETINGTYPE) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGMESSAGE ADD CONSTRAINT FK_T_OA_MEETINGMESSAGE FOREIGN KEY (MEETINGINFOID)
      REFERENCES T_OA_MEETINGINFO (MEETINGINFOID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGROOMAPP ADD CONSTRAINT FK_T_OA_MEETINGROOMAPP FOREIGN KEY (MEETINGROOMNAME)
      REFERENCES T_OA_MEETINGROOM (MEETINGROOMNAME) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGROOMTIMECHANGE ADD CONSTRAINT FK_T_OA_MEETINGROOMTIMECHANGE FOREIGN KEY (MEETINGROOMAPPID)
      REFERENCES T_OA_MEETINGROOMAPP (MEETINGROOMAPPID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGSTAFF ADD CONSTRAINT FK_T_OA_MEETINGSTAFF FOREIGN KEY (MEETINGINFOID)
      REFERENCES T_OA_MEETINGINFO (MEETINGINFOID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGTEMPLATE ADD CONSTRAINT FK_T_OA_MEETINGTEMPLATE FOREIGN KEY (MEETINGTYPE)
      REFERENCES T_OA_MEETINGTYPE (MEETINGTYPE) ON UPDATE RESTRICT;

ALTER TABLE T_OA_MEETINGTIMECHANGE ADD CONSTRAINT FK_T_OA_MEETINGTIMECHANGE FOREIGN KEY (MEETINGINFOID)
      REFERENCES T_OA_MEETINGINFO (MEETINGINFOID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_PROGRAMAPPLICATIONS ADD CONSTRAINT FK_REFERENCE_152 FOREIGN KEY (TRAVELSOLUTIONSID)
      REFERENCES T_OA_TRAVELSOLUTIONS (TRAVELSOLUTIONSID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_REIMBURSEMENTDETAIL ADD CONSTRAINT FK_REFERENCE_155 FOREIGN KEY (TRAVELREIMBURSEMENTID)
      REFERENCES T_OA_TRAVELREIMBURSEMENT (TRAVELREIMBURSEMENTID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_REQUIRE ADD CONSTRAINT FK_T_OA_REQUIRE FOREIGN KEY (REQUIREMASTERID)
      REFERENCES T_OA_REQUIREMASTER (REQUIREMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_REQUIREDETAIL ADD CONSTRAINT FK_T_OA_REQUIREDETAIL FOREIGN KEY (REQUIREMASTERID, SUBJECTID)
      REFERENCES T_OA_REQUIREDETAIL2 (REQUIREMASTERID, SUBJECTID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_REQUIREDETAIL2 ADD CONSTRAINT FK_T_OA_REQUIREDETAIL2 FOREIGN KEY (REQUIREMASTERID)
      REFERENCES T_OA_REQUIREMASTER (REQUIREMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_REQUIREDISTRIBUTE ADD CONSTRAINT FK_T_OA_REQUIREDISTRIBUTE FOREIGN KEY (REQUIREID)
      REFERENCES T_OA_REQUIRE (REQUIREID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_REQUIRERESULT ADD CONSTRAINT FK_T_OA_REQUIRERESULT FOREIGN KEY (REQUIREMASTERID)
      REFERENCES T_OA_REQUIREMASTER (REQUIREMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_REQUIRERESULT ADD CONSTRAINT FK_T_OA_REQUIRERESULT2 FOREIGN KEY (REQUIREID)
      REFERENCES T_OA_REQUIRE (REQUIREID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_SATISFACTIONDETAIL ADD CONSTRAINT FK_T_OA_SATISFACTIONDETAIL FOREIGN KEY (SATISFACTIONMASTERID)
      REFERENCES T_OA_SATISFACTIONMASTER (SATISFACTIONMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_SATISFACTIONDISTRIBUTE ADD CONSTRAINT FK_T_OA_SATISFACTIONDISTRIBUTE FOREIGN KEY (SATISFACTIONREQUIREID)
      REFERENCES T_OA_SATISFACTIONREQUIRE (SATISFACTIONREQUIREID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_SATISFACTIONREQUIRE ADD CONSTRAINT FK_T_OA_SATISFACTIONREQUIRE FOREIGN KEY (SATISFACTIONMASTERID)
      REFERENCES T_OA_SATISFACTIONMASTER (SATISFACTIONMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_SATISFACTIONRESULT ADD CONSTRAINT FK_T_OA_SATISFACTIONRESULT FOREIGN KEY (SATISFACTIONREQUIREID)
      REFERENCES T_OA_SATISFACTIONREQUIRE (SATISFACTIONREQUIREID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_SENDDOC ADD CONSTRAINT FK_T_OA_SENDDOC FOREIGN KEY (SENDDOCTYPE)
      REFERENCES T_OA_SENDDOCTYPE (SENDDOCTYPE) ON UPDATE RESTRICT;

ALTER TABLE T_OA_TAKETHESTANDARDTRANSPORT ADD CONSTRAINT FK_REFERENCE_148 FOREIGN KEY (TRAVELSOLUTIONSID)
      REFERENCES T_OA_TRAVELSOLUTIONS (TRAVELSOLUTIONSID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_TRAVELREIMBURSEMENT ADD CONSTRAINT FK_BUSINESSTRIP_T_OA_BUS FOREIGN KEY (BUSINESSTRIPID)
      REFERENCES T_OA_BUSINESSTRIP (BUSINESSTRIPID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_TRAVELREIMBURSEMENT ADD CONSTRAINT FK_REFERENCE_153 FOREIGN KEY (BUSINESSREPORTID)
      REFERENCES T_OA_BUSINESSREPORT (BUSINESSREPORTID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE T_OA_VEHICLECARD ADD CONSTRAINT FK_T_OA_VEHICLECARD FOREIGN KEY (ASSETID)
      REFERENCES T_OA_VEHICLE (ASSETID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_VEHICLEDISPATCH ADD CONSTRAINT FK_T_OA_VEHICLEDISPATCH FOREIGN KEY (ASSETID)
      REFERENCES T_OA_VEHICLE (ASSETID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_VEHICLEDISPATCHDETAIL ADD CONSTRAINT FK_T_OA_VEHICLEDISPATCHDETAIL1 FOREIGN KEY (VEHICLEDISPATCHID)
      REFERENCES T_OA_VEHICLEDISPATCH (VEHICLEDISPATCHID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_VEHICLEDISPATCHDETAIL ADD CONSTRAINT FK_T_OA_VEHICLEDISPATCHDETAIL2 FOREIGN KEY (VEHICLEUSEAPPID)
      REFERENCES T_OA_VEHICLEUSEAPP (VEHICLEUSEAPPID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_VEHICLEDISPATCHRECORD ADD CONSTRAINT FK_VEHICLEDISPATCHRECORD FOREIGN KEY (VEHICLEDISPATCHDETAILID)
      REFERENCES T_OA_VEHICLEDISPATCHDETAIL (VEHICLEDISPATCHDETAILID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_WELFAREDETAIL ADD CONSTRAINT FK_T_OA_WELFAREDETAIL FOREIGN KEY (WELFAREID)
      REFERENCES T_OA_WELFAREMASERT (WELFAREID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_WELFAREDISTRIBUTEDETAIL ADD CONSTRAINT FK_T_OA_WELFAREDISDETAIL FOREIGN KEY (WELFAREDISTRIBUTEMASTERID)
      REFERENCES T_OA_WELFAREDISTRIBUTEMASTER (WELFAREDISTRIBUTEMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_WELFAREDISTRIBUTEMASTER ADD CONSTRAINT FK_T_OA_WELFAREDISMASTER FOREIGN KEY (WELFAREID)
      REFERENCES T_OA_WELFAREMASERT (WELFAREID) ON UPDATE RESTRICT;

ALTER TABLE T_OA_WELFAREDISTRIBUTEUNDO ADD CONSTRAINT FK_T_OA_WELFAREDISTRIBUTEUNDO FOREIGN KEY (WELFAREDISTRIBUTEMASTERID)
      REFERENCES T_OA_WELFAREDISTRIBUTEMASTER (WELFAREDISTRIBUTEMASTERID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_DICTIONARY ADD CONSTRAINT FK_REFERENCE_161 FOREIGN KEY (FATHERID)
      REFERENCES T_SYS_DICTIONARY (DICTIONARYID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ENTITYMENU ADD CONSTRAINT FK_REFERENCE_159 FOREIGN KEY (SUPERIORID)
      REFERENCES T_SYS_ENTITYMENU (ENTITYMENUID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ENTITYMENUCUSTOMPERM ADD CONSTRAINT FK_REFERENCE_163 FOREIGN KEY (PERMISSIONID)
      REFERENCES T_SYS_PERMISSION (PERMISSIONID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ENTITYMENUCUSTOMPERM ADD CONSTRAINT FK_T_SYS_RO_ENTITYMENU FOREIGN KEY (ENTITYMENUID)
      REFERENCES T_SYS_ENTITYMENU (ENTITYMENUID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ENTITYMENUCUSTOMPERM ADD CONSTRAINT FK_REFERENCE_167 FOREIGN KEY (ROLEID)
      REFERENCES T_SYS_ROLE (ROLEID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_FBADMINROLE ADD CONSTRAINT FK_REFERENCE_169 FOREIGN KEY (FBADMINID)
      REFERENCES T_SYS_FBADMIN (FBADMINID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_PROVINCECITY ADD CONSTRAINT FK_T_SYS_PR_REFERENCE_T_SYS_PR FOREIGN KEY (FATHERID)
      REFERENCES T_SYS_PROVINCECITY (PROVINCEID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_PERMISSION ADD CONSTRAINT FK_REFERENCE_168 FOREIGN KEY (ENTITYMENUID)
      REFERENCES T_SYS_ENTITYMENU (ENTITYMENUID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ROLEENTITYMENU ADD CONSTRAINT FK_T_SYS_RO_T_SYS_ROLE FOREIGN KEY (ROLEID)
      REFERENCES T_SYS_ROLE (ROLEID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ROLEENTITYMENU ADD CONSTRAINT FK_T_ROLEENTITYMENU_T_SYS_EN FOREIGN KEY (ENTITYMENUID)
      REFERENCES T_SYS_ENTITYMENU (ENTITYMENUID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ROLEMENUPERMISSION ADD CONSTRAINT FK_T_SYS_RO_ROLEENTITYMENU FOREIGN KEY (ROLEENTITYMENUID)
      REFERENCES T_SYS_ROLEENTITYMENU (ROLEENTITYMENUID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_ROLEMENUPERMISSION ADD CONSTRAINT FK_RELATIONSHIP_6 FOREIGN KEY (PERMISSIONID)
      REFERENCES T_SYS_PERMISSION (PERMISSIONID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_USERROLE ADD CONSTRAINT FK_REFERENCE_158 FOREIGN KEY (ROLEID)
      REFERENCES T_SYS_ROLE (ROLEID) ON UPDATE RESTRICT;

ALTER TABLE T_SYS_USERROLE ADD CONSTRAINT FK_REFERENCE_162 FOREIGN KEY (SYSUSERID)
      REFERENCES T_SYS_USER (SYSUSERID) ON UPDATE RESTRICT;

ALTER TABLE T_WF_DOTASKRULEDETAIL ADD CONSTRAINT FK_T_WF_DOT_REFERENCE_T_WF_DOT FOREIGN KEY (DOTASKRULEID)
      REFERENCES T_WF_DOTASKRULE (DOTASKRULEID) ON UPDATE RESTRICT;




/*==============================================================*/
/* Table: T_PF_ATTENTION                                        */
/*==============================================================*/
CREATE TABLE T_PF_ATTENTION
(
   ATTENTIONID          VARCHAR(50) NOT NULL,
   ORDERTYPE            VARCHAR(50),
   ORDERTYPENAME        VARCHAR(50),
   ORDERID              VARCHAR(50),
   ORDERTITLE           VARCHAR(200),
   ORDEROWNERID         VARCHAR(50),
   ORDEROWNERNAME       VARCHAR(50),
   ORDERURL             VARCHAR(500),
   ORDERSUBMITDATE      DATETIME,
   OWNERID              VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDATE           DATETIME ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (ATTENTIONID)
);

ALTER TABLE T_PF_ATTENTION COMMENT 'T_PF_ATTENTION';

/*==============================================================*/
/* Table: T_PF_DISTRIBUTEUSER                                   */
/*==============================================================*/
CREATE TABLE T_PF_DISTRIBUTEUSER
(
   DISTRIBUTEUSERID     VARCHAR(50) NOT NULL,
   MODELNAME            VARCHAR(50) NOT NULL,
   FORMID               VARCHAR(50) NOT NULL,
   VIEWTYPE             VARCHAR(1) NOT NULL DEFAULT '3' COMMENT '1������˾��2�������ţ�3�����û�',
   VIEWER               VARCHAR(50) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (DISTRIBUTEUSERID)
);

ALTER TABLE T_PF_DISTRIBUTEUSER COMMENT 'T_PF_DISTRIBUTEUSER';

/*==============================================================*/
/* Table: T_PF_FEEDBACK                                         */
/*==============================================================*/
CREATE TABLE T_PF_FEEDBACK
(
   FEEDID               VARCHAR(50) NOT NULL,
   ORDERTYPE            VARCHAR(50),
   ORDERTYPENAME        VARCHAR(50),
   ORDERID              VARCHAR(50),
   ORDERTITLE           VARCHAR(200),
   ORDEROWNERID         VARCHAR(50),
   ORDEROWNERNAME       VARCHAR(50),
   ORDERURL             VARCHAR(500),
   ORDERSUBMITDATE      DATETIME,
   OWNERID              VARCHAR(50),
   OWNERNAME            VARCHAR(50),
   OWNERCOMPANYID       VARCHAR(50),
   OWNERDEPARTMENTID    VARCHAR(50),
   OWNERPOSTID          VARCHAR(50),
   CREATEUSERID         VARCHAR(50),
   CREATEUSERNAME       VARCHAR(50),
   CREATECOMPANYID      VARCHAR(50),
   CREATEDEPARTMENTID   VARCHAR(50),
   CREATEPOSTID         VARCHAR(50),
   CREATEDATE           DATETIME ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   FEEDBACKCONTENT      VARCHAR(500) COMMENT '�û��������',
   CUSTOMCONTENT        VARCHAR(500) COMMENT '�ͷ��������',
   CUSTOMDATE           DATETIME COMMENT '�ͷ�����ʱ��',
   CUSTOMID             VARCHAR(50) COMMENT '�ͷ�ID',
   CUSTOMNAME           VARCHAR(50) COMMENT '�ͷ�����',
   FEEDTYPE             VARCHAR(1) DEFAULT '0' COMMENT '�������� 0 PC�淴�� 1 �ֻ�����',
   PRIMARY KEY (FEEDID)
);

ALTER TABLE T_PF_FEEDBACK COMMENT '�ͻ�����';

/*==============================================================*/
/* Table: T_PF_NEWS                                             */
/*==============================================================*/
CREATE TABLE T_PF_NEWS
(
   NEWSID               VARCHAR(50) NOT NULL,
   NEWSTYPEID           VARCHAR(50) NOT NULL,
   NEWSTITEL            VARCHAR(200) NOT NULL,
   NEWSCONTENT          LONGBLOB NOT NULL,
   READCOUNT            VARCHAR(50),
   COMMENTCOUNT         VARCHAR(50),
   NEWSSTATE            VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '0:δ������1:�ѷ���,2:�ѹر�',
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   ISIMAGE              VARCHAR(50) DEFAULT '0' COMMENT 'ͼƬ',
   ISPOPUP              VARCHAR(1) DEFAULT '0' COMMENT '0:������ 1����������',
   ENDDATE              DATETIME,
   PUTDEPTNAME          VARCHAR(50),
   PUTDEPTID            VARCHAR(50),
   ISPARTY              VARCHAR(1) DEFAULT '0' COMMENT '�Ƿ񵳰�����:0:�� 1:��',
   PRIMARY KEY (NEWSID)
);

ALTER TABLE T_PF_NEWS COMMENT '�������š���̬��֪ͨ��������Ϣ���������';

/*==============================================================*/
/* Table: T_PF_NEWSCOMMENT                                      */
/*==============================================================*/
CREATE TABLE T_PF_NEWSCOMMENT
(
   COMMENTID            VARCHAR(50) NOT NULL,
   NEWSID               VARCHAR(50),
   COMMENTCONTENT       VARCHAR(500),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (COMMENTID)
);

ALTER TABLE T_PF_NEWSCOMMENT COMMENT '�������۱�';

/*==============================================================*/
/* Table: T_PF_NEWSTYPE                                         */
/*==============================================================*/
CREATE TABLE T_PF_NEWSTYPE
(
   NEWSTYPEID           VARCHAR(50) NOT NULL,
   NEWSTYPENAME         VARCHAR(50),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (NEWSTYPEID)
);

ALTER TABLE T_PF_NEWSTYPE COMMENT '��������';

/*==============================================================*/
/* Table: T_PF_PERSONALRECORD                                   */
/*==============================================================*/
CREATE TABLE T_PF_PERSONALRECORD
(
   PERSONALRECORDID     VARCHAR(50) NOT NULL COMMENT '���˵���ID',
   SYSTYPE              VARCHAR(50) COMMENT 'ϵͳ����',
   MODELCODE            VARCHAR(50) COMMENT '����ģ�����',
   MODELID              VARCHAR(50) COMMENT '����ID',
   CHECKSTATE           VARCHAR(50) COMMENT '�������״̬',
   OWNERID              VARCHAR(50) COMMENT '����Ա��ID',
   OWNERPOSTID          VARCHAR(50) COMMENT '������λID',
   OWNERDEPARTMENTID    VARCHAR(50) COMMENT '��������ID',
   OWNERCOMPANYID       VARCHAR(50) COMMENT '������˾ID',
   CREATEDATE           DATETIME  COMMENT '����ʱ��',
   UPDATEDATE           DATETIME  COMMENT '�ύʱ��',
   CONFIGINFO           VARCHAR(2000) COMMENT '��������',
   MODELDESCRIPTION     VARCHAR(2000) COMMENT '���ݼ�Ҫ����',
   ISFORWARD            VARCHAR(10) COMMENT '�Ƿ�ת��("0"��ʾ��ת����"1"��ʾת��)',
   ISVIEW               VARCHAR(10) COMMENT '�Ƿ��Ѳ鿴("0"��ʾδ�鿴��"1"��ʾ�Ѳ鿴)',
   PRIMARY KEY (PERSONALRECORDID)
);

ALTER TABLE T_PF_PERSONALRECORD COMMENT '���˵���';

/*==============================================================*/
/* Table: T_PF_PLATFORMCONFIG                                   */
/*==============================================================*/
CREATE TABLE T_PF_PLATFORMCONFIG
(
   CONFIGID             VARCHAR(50) NOT NULL,
   PARENTID             VARCHAR(50),
   PIOCPATH             VARCHAR(200),
   ISRESIZABLE          VARCHAR(1) NOT NULL DEFAULT '1' COMMENT '0:�����ԣ�1������',
   TITEL                VARCHAR(200) NOT NULL,
   FULLNAME             VARCHAR(200) NOT NULL,
   ASSEMPLYNAME         VARCHAR(200) NOT NULL,
   PROGRAMTYPE          VARCHAR(200),
   ISSYSSHORTCUT        VARCHAR(1) DEFAULT '0' COMMENT '0�����ǣ�1����',
   ISSYSNEED            VARCHAR(1) DEFAULT '0' COMMENT '0:�����ԣ�1������',
   INITPARAMS           VARCHAR(500),
   ISWEBPART            VARCHAR(1) DEFAULT '1' COMMENT '0�����ǣ�1����',
   USERSTATE            VARCHAR(20) NOT NULL,
   SYSTEMCODE           VARCHAR(20) NOT NULL,
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   ISDEFAULT            VARCHAR(1) DEFAULT '0' COMMENT '0����ʹ�ã�1��ʹ��',
   PRIMARY KEY (CONFIGID)
);

ALTER TABLE T_PF_PLATFORMCONFIG COMMENT 'T_PF_PLATFORMCONFIG';

/*==============================================================*/
/* Table: T_PF_PROJECTCONFIG                                    */
/*==============================================================*/
CREATE TABLE T_PF_PROJECTCONFIG
(
   PROJECTID            VARCHAR(50) NOT NULL,
   SYSTEMCODE           VARCHAR(50) NOT NULL,
   PROJECTNAME          VARCHAR(200) NOT NULL,
   VERSIONFILENAME      VARCHAR(500) NOT NULL,
   DESCRIPTION          VARCHAR(2000),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (PROJECTID)
);

ALTER TABLE T_PF_PROJECTCONFIG COMMENT 'ƽ̨����Ŀ���ñ����г�������Ա�д�ϵͳȨ��';

/*==============================================================*/
/* Table: T_PF_READRECORD                                       */
/*==============================================================*/
CREATE TABLE T_PF_READRECORD
(
   READRECORDID         VARCHAR(50) NOT NULL,
   EMPLOYEEID           VARCHAR(50),
   ORDERID              VARCHAR(50),
   ORDERTYPE            NUMERIC(38,0),
   PRIMARY KEY (READRECORDID)
);

ALTER TABLE T_PF_READRECORD COMMENT 'T_PF_READRECORD';

/*==============================================================*/
/* Index: INDEX_PF_READRECORD                                   */
/*==============================================================*/
CREATE UNIQUE INDEX INDEX_PF_READRECORD ON T_PF_READRECORD
(
   EMPLOYEEID,
   ORDERTYPE,
   ORDERID
);

/*==============================================================*/
/* Table: T_PF_USERCONFIG                                       */
/*==============================================================*/
CREATE TABLE T_PF_USERCONFIG
(
   USERCONFIGID         VARCHAR(50) NOT NULL,
   USERID               VARCHAR(50),
   CONFIGNAME           VARCHAR(50),
   CONFIGINFO           VARCHAR(2000),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (USERCONFIGID)
);

ALTER TABLE T_PF_USERCONFIG COMMENT 'T_PF_USERCONFIG';

/*==============================================================*/
/* Table: T_PF_USERCONFIGRELEVANCE                              */
/*==============================================================*/
CREATE TABLE T_PF_USERCONFIGRELEVANCE
(
   USERCONFIGRELEVANCEID VARCHAR(50) NOT NULL,
   USERID               VARCHAR(50) NOT NULL,
   CONFIGID             VARCHAR(50),
   TEMPLATENAME         VARCHAR(200) NOT NULL,
   CUSTOMPARAMS         VARCHAR(500),
   OWNERID              VARCHAR(50) NOT NULL,
   OWNERNAME            VARCHAR(50) NOT NULL,
   OWNERCOMPANYID       VARCHAR(50) NOT NULL,
   OWNERDEPARTMENTID    VARCHAR(50) NOT NULL,
   OWNERPOSTID          VARCHAR(50) NOT NULL,
   CREATEUSERID         VARCHAR(50) NOT NULL,
   CREATEUSERNAME       VARCHAR(50) NOT NULL,
   CREATECOMPANYID      VARCHAR(50) NOT NULL,
   CREATEDEPARTMENTID   VARCHAR(50) NOT NULL,
   CREATEPOSTID         VARCHAR(50) NOT NULL,
   CREATEDATE           DATETIME NOT NULL ,
   UPDATEUSERID         VARCHAR(50),
   UPDATEUSERNAME       VARCHAR(50),
   UPDATEDATE           DATETIME,
   PRIMARY KEY (USERCONFIGRELEVANCEID)
);

ALTER TABLE T_PF_USERCONFIGRELEVANCE COMMENT 'T_PF_USERCONFIGRELEVANCE';

ALTER TABLE T_PF_USERCONFIGRELEVANCE ADD CONSTRAINT FK_T_PF_USERCONFIGRELEVANCE FOREIGN KEY (CONFIGID)
      REFERENCES T_PF_PLATFORMCONFIG (CONFIGID) ON UPDATE RESTRICT;

alter table T_HR_EMPLOYEECHANGEHISTORY
  add constraint FK_T_HR_EMP_REFERENCE_T_HR_PC foreign key (EMPLOYEEID)
  references T_HR_EMPLOYEE (EMPLOYEEID)  ON UPDATE RESTRICT;

