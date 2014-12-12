/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2010-12-9 20:28:13                           */
/*==============================================================*/


drop table T_LM_DISTRICTMASTER cascade constraints;

/*==============================================================*/
/* Table: T_LM_DISTRICTMASTER                                   */
/*==============================================================*/
create table T_LM_DISTRICTMASTER  (
   ALERTID              NVARCHAR2(50)                   not null,
   CITYCODE             NVARCHAR2(50),
   CITYNAME             NVARCHAR2(50),
   PARENTID             NVARCHAR2(50),
   TYPE                 NVARCHAR2(50),
   FULLPATH             NVARCHAR2(100),
   SPELLCODE            NVARCHAR2(50),
   WBXCODE              NVARCHAR2(50),
   SELFDEFINECODE       NVARCHAR2(50),
   CREATEUSERID         NVARCHAR2(50),
   CREATEDATE           DATE                           default SYSDATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UPDATEDATE           DATE                           default SYSDATE not null,
   OWNERCOMPANYID       NVARCHAR2(50),
   OWNERDEPARTMENTID    NVARCHAR2(50),
   OWNERPOSTID          NVARCHAR2(50),
   OWNERID              NVARCHAR2(50),
   CREATECOMPANYID      NVARCHAR2(50),
   CREATEDEPARTMENTID   NVARCHAR2(50),
   CREATEPOSTID         NVARCHAR2(50),
   constraint PK_T_LM_DISTRICTMASTER primary key (ALERTID)
);

comment on table T_LM_DISTRICTMASTER is
'1-14ȫ��������';

comment on column T_LM_DISTRICTMASTER.ALERTID is
'����ID';

comment on column T_LM_DISTRICTMASTER.CITYCODE is
'���';

comment on column T_LM_DISTRICTMASTER.CITYNAME is
'����';

comment on column T_LM_DISTRICTMASTER.PARENTID is
'��һ��ID';

comment on column T_LM_DISTRICTMASTER.TYPE is
'����';

comment on column T_LM_DISTRICTMASTER.FULLPATH is
'��������ȫ·��';

comment on column T_LM_DISTRICTMASTER.SPELLCODE is
'ƴ������';

comment on column T_LM_DISTRICTMASTER.WBXCODE is
'��ʱ���';

comment on column T_LM_DISTRICTMASTER.SELFDEFINECODE is
'�Զ������';

comment on column T_LM_DISTRICTMASTER.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_DISTRICTMASTER.CREATEDATE is
'CREATEDATE';

comment on column T_LM_DISTRICTMASTER.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_DISTRICTMASTER.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_DISTRICTMASTER.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_DISTRICTMASTER.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_DISTRICTMASTER.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_DISTRICTMASTER.OWNERID is
'OWNERID';

comment on column T_LM_DISTRICTMASTER.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_DISTRICTMASTER.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_DISTRICTMASTER.CREATEPOSTID is
'CREATEPOSTID';

