------------------------------------------
-- Export file for user SMTOA           --
-- Created by LJX on 2010-6-25, 8:54:36 --
------------------------------------------

spool 111.log

prompt
prompt Creating table T_OA_HIREAPP
prompt ===========================
prompt
create table T_OA_HIREAPP
(
  HIREAPPID          NVARCHAR2(50) not null,
  HOUSELISTID        NVARCHAR2(50) not null,
  RENTCOST           INTEGER default 0 not null,
  DEPOSIT            INTEGER default 0 not null,
  MANAGECOST         INTEGER default 0 not null,
  STARTDATE          DATE not null,
  ENDDATE            DATE not null,
  BACKDATE           DATE,
  RENTTYPE           NVARCHAR2(1) default '0' not null,
  SETTLEMENTTYPE     NVARCHAR2(1) default '0' not null,
  ISBACK             NVARCHAR2(1) default '0' not null,
  ISOK               NVARCHAR2(1) default '0' not null,
  CHECKSTATE         NVARCHAR2(1) default '0' not null,
  OWNERID            NVARCHAR2(50) not null,
  OWNERNAME          NVARCHAR2(50) not null,
  OWNERCOMPANYID     NVARCHAR2(50) not null,
  OWNERDEPARTMENTID  NVARCHAR2(50) not null,
  OWNERPOSTID        NVARCHAR2(50) not null,
  CREATEUSERID       NVARCHAR2(50) not null,
  CREATEUSERNAME     NVARCHAR2(50) not null,
  CREATECOMPANYID    NVARCHAR2(50) not null,
  CREATEDEPARTMENTID NVARCHAR2(50) not null,
  CREATEPOSTID       NVARCHAR2(50) not null,
  CREATEDATE         DATE default SYSDATE not null,
  UPDATEUSERID       NVARCHAR2(50),
  UPDATEUSERNAME     NVARCHAR2(50),
  UPDATEDATE         DATE
)
;
comment on column T_OA_HIREAPP.ENDDATE
  is 'Ԥ�Ƶ���ʱ�䣬ʵ�ʵ������˷�ʱ��Ϊ׼';
comment on column T_OA_HIREAPP.BACKDATE
  is '�˷�ʱ�޸�';
comment on column T_OA_HIREAPP.RENTTYPE
  is '0�����⣻1�����⣻';
comment on column T_OA_HIREAPP.SETTLEMENTTYPE
  is '0�����ʿۣ�1���ֽ�';
comment on column T_OA_HIREAPP.ISBACK
  is '0:δ�ˣ�1������';
comment on column T_OA_HIREAPP.ISOK
  is '0:δȷ�ϣ�1�������ϣ�2��ȡ��';
comment on column T_OA_HIREAPP.CHECKSTATE
  is '0��δ�ύ��1������У�2�����ͨ����3�����δͨ��';
alter table T_OA_HIREAPP
  add constraint PK_T_OA_HIREAPP primary key (HIREAPPID);
alter table T_OA_HIREAPP
  add constraint FK_T_OA_HIREAPP foreign key (HOUSELISTID)
  references T_OA_HOUSELIST (HOUSELISTID);


spool off












����	59	��SMT.SaaS.OA.UI.SmtOAPersonOfficeService.T_OA_REQUIREMASTER����������REQUIREID���Ķ��壬�����Ҳ����ɽ�������Ϊ��SMT.SaaS.OA.UI.SmtOAPersonOfficeService.T_OA_REQUIREMASTER���ĵ�һ����������չ������REQUIREID��(�Ƿ�ȱ�� using ָ����������?)	D:\smt\SMT.SaaS.OA\SMT.SaaS.OA.UI\Views\EmployeeSatisfactionSurveys\EmployeeSubmissionsForm.xaml.cs	138	67	SMT.SaaS.OA.UI


����	80	�Ҳ������ͻ������ռ����ơ�EmployeeSubmissions��(�Ƿ�ȱ�� using ָ����������?)	D:\smt\SMT.SaaS.OA\SMT.SaaS.OA.UI\Views\EmployeeSatisfactionSurveys\FrmEmployeeSurveysResult.xaml.cs	271	21	SMT.SaaS.OA.UI

