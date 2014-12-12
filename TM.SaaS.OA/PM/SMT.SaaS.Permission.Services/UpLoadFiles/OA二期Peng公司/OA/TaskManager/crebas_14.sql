/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2010-8-23 15:49:06                           */
/*==============================================================*/


alter table SMTLM.T_LM_ACCIDENT
   drop constraint FK_T_LM_ACC_REFERENCE_T_LM_WAR;

alter table SMTLM.T_LM_BATCHSET
   drop constraint FK_T_LM_BAT_REFERENCE_T_LM_GOO;

alter table SMTLM.T_LM_INSTOCKATTACH
   drop constraint T_LM_INSTOCKA_FK21271040579953;

alter table SMTLM.T_LM_INSTOCKDETAIL
   drop constraint T_LM_INSTOCKD_FK21264053987906;

alter table SMTLM.T_LM_INSTOCKDETAIL
   drop constraint T_LM_INSTOCKD_FK41264055866125;

alter table SMTLM.T_LM_ORDERDETAIL
   drop constraint FK_T_LM_ORD_REFERENCE_T_LM_ORD;

alter table SMTLM.T_LM_OUTSTOCKDETAIL
   drop constraint T_LM_OUTSTOCK_FK21264054157968;

alter table SMTLM.T_LM_OUTSTOCKDETAIL
   drop constraint T_LM_OUTSTOCK_FK31271225352859;

alter table SMTLM.T_LM_OUTSTOCKMASTER
   drop constraint T_LM_OUTSTOCK_FK31264123262296;

alter table SMTLM.T_LM_OUTSTOCKPACKINGLISTDETAIL
   drop constraint FK_T_LM_OUT_REFERENCE_T_LM_GOO;

alter table SMTLM.T_LM_OUTSTOCKPACKINGLISTDETAIL
   drop constraint T_LM_OUTSTOCK_FK31271039970828;

alter table SMTLM.T_LM_OUTSTOCKPACKINGLISTMASTER
   drop constraint T_LM_OUTSTOCK_FK21271039844359;

alter table SMTLM.T_LM_PACKAGE
   drop constraint MMM;

alter table SMTLM.T_LM_PICKDETAIL
   drop constraint FK_T_LM_PIC_REFERENCE_T_LM_GOO;

alter table SMTLM.T_LM_PICKDETAIL
   drop constraint FK_T_LM_PIC_REFERENCE_T_LM_OUT;

alter table SMTLM.T_LM_PICKDETAIL
   drop constraint FK_T_LM_PIC_REFERENCE_T_LM_PIC;

alter table SMTLM.T_LM_PICKGOODSPACKAGE
   drop constraint AAA;

alter table SMTLM.T_LM_PICKMASTER
   drop constraint T_LM_OUTSTOCKM_FK_PICKMASTER;

alter table SMTLM.T_LM_PUTUP
   drop constraint T_LM_PUTUP_FK21271041275406;

alter table SMTLM.T_LM_PUTUP
   drop constraint T_LM_PUTUP_FK31271041299750;

alter table SMTLM.T_LM_STOCKCOUNTPLANDETAIL
   drop constraint FK_T_LM_STO_REFERENCE_T_LM_STO;

alter table SMTLM.T_LM_WAREHOUSELOCATION
   drop constraint T_LM_WAREHOUS_FK31271040473890;

alter table SMTLM.T_LM_ORDERDETAIL
   drop primary key cascade;

drop table SMTLM."tmp_T_LM_ORDERDETAIL" cascade constraints;

rename T_LM_ORDERDETAIL to "tmp_T_LM_ORDERDETAIL";

alter table SMTLM.T_LM_PREFIX
   drop primary key cascade;

drop user SMTLM;

/*==============================================================*/
/* Table: T_LM_ALERTMESSAGE                                     */
/*==============================================================*/
create table T_LM_ALERTMESSAGE  (
   ALERTID              NVARCHAR2(50)                   not null,
   CONSIGNERID          NVARCHAR2(50)                   not null,
   CONTENT              NVARCHAR2(2000),
   ALERTTIME            DATE,
   ALERTOBJ             NVARCHAR2(50)                   not null,
   OBJECTTYPE           NUMBER(1)                       not null,
   MESSAGETYPE          NUMBER(1)                       not null,
   ALERTSTATE           NUMBER(1)                      default 0 not null,
   SYSTEM               NUMBER(1)                      default 0 not null,
   ISMESSAGE            NUMBER(1)                      default 0 not null,
   ISIM                 NUMBER(1)                      default 0 not null,
   EMAIL                NUMBER(1)                      default 0 not null,
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_ALERTMESSAGE primary key (ALERTID)
);

comment on table T_LM_ALERTMESSAGE is
'1-21�Զ��������ñ�';

comment on column T_LM_ALERTMESSAGE.ALERTID is
'�Զ���������ID';

comment on column T_LM_ALERTMESSAGE.CONSIGNERID is
'ί�пͻ�';

comment on column T_LM_ALERTMESSAGE.CONTENT is
'�������ݸ�ʽ';

comment on column T_LM_ALERTMESSAGE.ALERTTIME is
'����ʱ��';

comment on column T_LM_ALERTMESSAGE.ALERTOBJ is
'���Ѷ���';

comment on column T_LM_ALERTMESSAGE.OBJECTTYPE is
'��������';

comment on column T_LM_ALERTMESSAGE.MESSAGETYPE is
'��Ϣ����';

comment on column T_LM_ALERTMESSAGE.ALERTSTATE is
'����״̬';

comment on column T_LM_ALERTMESSAGE.SYSTEM is
'ϵͳ����';

comment on column T_LM_ALERTMESSAGE.ISMESSAGE is
'��������';

comment on column T_LM_ALERTMESSAGE.ISIM is
'��ʱ��Ϣ';

comment on column T_LM_ALERTMESSAGE.EMAIL is
'�ʼ�����';

comment on column T_LM_ALERTMESSAGE.CHECKSTATE is
'���״̬';

comment on column T_LM_ALERTMESSAGE.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_ALERTMESSAGE.CREATEDATE is
'CREATEDATE';

comment on column T_LM_ALERTMESSAGE.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_ALERTMESSAGE.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_ALERTMESSAGE.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_ALERTMESSAGE.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_ALERTMESSAGE.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_ALERTMESSAGE.OWNERID is
'OWNERID';

comment on column T_LM_ALERTMESSAGE.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_ALERTMESSAGE.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_ALERTMESSAGE.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_ALERTMESSAGELOG                                  */
/*==============================================================*/
create table T_LM_ALERTMESSAGELOG  (
   ALERTLOGID           NVARCHAR2(50)                   not null,
   CONTENT              NVARCHAR2(2000),
   INTIME               DATE                           default SYSDATE not null,
   ALERTOBJ             NVARCHAR2(50)                   not null,
   ALERTSTATE           NUMBER(1)                      default 0 not null,
   ALERTMODE            NUMBER(1)                      default 0 not null,
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
   constraint PK_T_LM_ALERTMESSAGELOG primary key (ALERTLOGID)
);

comment on table T_LM_ALERTMESSAGELOG is
'1-20�Զ����ټ�¼��';

comment on column T_LM_ALERTMESSAGELOG.ALERTLOGID is
'�Զ����ټ�¼ID';

comment on column T_LM_ALERTMESSAGELOG.CONTENT is
'��������';

comment on column T_LM_ALERTMESSAGELOG.INTIME is
'����ʱ��';

comment on column T_LM_ALERTMESSAGELOG.ALERTOBJ is
'���Ͷ���';

comment on column T_LM_ALERTMESSAGELOG.ALERTSTATE is
'����״̬';

comment on column T_LM_ALERTMESSAGELOG.ALERTMODE is
'���ѷ�ʽ';

comment on column T_LM_ALERTMESSAGELOG.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_ALERTMESSAGELOG.CREATEDATE is
'CREATEDATE';

comment on column T_LM_ALERTMESSAGELOG.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_ALERTMESSAGELOG.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_ALERTMESSAGELOG.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_ALERTMESSAGELOG.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_ALERTMESSAGELOG.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_ALERTMESSAGELOG.OWNERID is
'OWNERID';

comment on column T_LM_ALERTMESSAGELOG.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_ALERTMESSAGELOG.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_ALERTMESSAGELOG.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_APPEAL                                           */
/*==============================================================*/
create table T_LM_APPEAL  (
   APPEALID             NVARCHAR2(50)                   not null,
   APPEALCODE           NVARCHAR2(50)                   not null,
   ORDERMASTERID        NVARCHAR2(50),
   CUSTOMERID           NVARCHAR2(50),
   CUSTOMERNAME         NVARCHAR2(100)                  not null,
   TITLE                NVARCHAR2(50),
   APPEALTYPE           NVARCHAR2(20),
   APPEALSTEP           NVARCHAR2(20),
   BEWRITE              NVARCHAR2(2000),
   DISPOSALDISCRIPTION  NVARCHAR2(2000),
   DISPOSALSTATE        NUMBER                         default 1,
   DISPOSALTIME         NUMBER,
   RESPONSETIME         NUMBER,
   DISPOSALRESULT       NVARCHAR2(50),
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_APPEAL primary key (APPEALID, CUSTOMERNAME)
);

comment on table T_LM_APPEAL is
'1-17�ͻ�Ͷ��/�����';

comment on column T_LM_APPEAL.APPEALID is
'Ͷ��/���鵥��ID';

comment on column T_LM_APPEAL.APPEALCODE is
'Ͷ��/���鵥��';

comment on column T_LM_APPEAL.ORDERMASTERID is
'������';

comment on column T_LM_APPEAL.CUSTOMERID is
'�ͻ�����';

comment on column T_LM_APPEAL.CUSTOMERNAME is
'�ͻ�����';

comment on column T_LM_APPEAL.TITLE is
'Ͷ��/�������';

comment on column T_LM_APPEAL.APPEALTYPE is
'Ͷ��/��������';

comment on column T_LM_APPEAL.APPEALSTEP is
'Ͷ��/����ȼ�';

comment on column T_LM_APPEAL.BEWRITE is
'��ϸ����';

comment on column T_LM_APPEAL.DISPOSALDISCRIPTION is
'��������';

comment on column T_LM_APPEAL.DISPOSALSTATE is
'����״̬';

comment on column T_LM_APPEAL.DISPOSALTIME is
'����ʱЧ';

comment on column T_LM_APPEAL.RESPONSETIME is
'��ӦʱЧ';

comment on column T_LM_APPEAL.DISPOSALRESULT is
'������';

comment on column T_LM_APPEAL.CHECKSTATE is
'���״̬';

comment on column T_LM_APPEAL.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_APPEAL.CREATEDATE is
'CREATEDATE';

comment on column T_LM_APPEAL.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_APPEAL.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_APPEAL.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_APPEAL.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_APPEAL.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_APPEAL.OWNERID is
'OWNERID';

comment on column T_LM_APPEAL.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_APPEAL.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_APPEAL.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_ATTACH                                           */
/*==============================================================*/
create table T_LM_ATTACH  (
   ALERTID              NVARCHAR2(50)                   not null,
   ATTACHID             NVARCHAR2(50)                   not null,
   ATTACHNAME           NVARCHAR2(50)                   not null,
   ATTACHBODY           blob,
   ATTACHSOURCE         NVARCHAR2(50),
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
   constraint PK_T_LM_ATTACH primary key (ALERTID)
);

comment on table T_LM_ATTACH is
'1-18����������';

comment on column T_LM_ATTACH.ALERTID is
'����ID';

comment on column T_LM_ATTACH.ATTACHID is
'����ID';

comment on column T_LM_ATTACH.ATTACHNAME is
'��������';

comment on column T_LM_ATTACH.ATTACHBODY is
'��������';

comment on column T_LM_ATTACH.ATTACHSOURCE is
'������Դ';

comment on column T_LM_ATTACH.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_ATTACH.CREATEDATE is
'CREATEDATE';

comment on column T_LM_ATTACH.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_ATTACH.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_ATTACH.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_ATTACH.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_ATTACH.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_ATTACH.OWNERID is
'OWNERID';

comment on column T_LM_ATTACH.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_ATTACH.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_ATTACH.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_CARRYSIGN                                        */
/*==============================================================*/
create table T_LM_CARRYSIGN  (
   CARRYSIGNID          NVARCHAR2(50)                   not null,
   ORDERMASTERID        NVARCHAR2(50)                   not null,
   CARRYID              NVARCHAR2(50)                   not null,
   ISPROXY              NUMBER                         default 0 not null,
   SIGNER               NVARCHAR2(50),
   SIGNTIME             DATE                           default SYSDATE,
   SIGNDATE             NVARCHAR2(50),
   DELIVERCODE          NVARCHAR2(50),
   DELIVER              NVARCHAR2(50),
   REQUEST              NVARCHAR2(50)                   not null,
   CARRYSIGNSTATE       NUMBER(50)                      not null,
   ISINSTEADGET         NUMBER                         default 0 not null,
   NODECODE             NVARCHAR2(50),
   REMARK               NVARCHAR2(2000),
   SWATCHATTACHID       NVARCHAR2(50)                   not null,
   ATTACHID             NVARCHAR2(50)                   not null,
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
   constraint PK_T_LM_CARRYSIGN primary key (CARRYSIGNID)
);

comment on table T_LM_CARRYSIGN is
'1-8ǩ����ִ��';

comment on column T_LM_CARRYSIGN.CARRYSIGNID is
'��ִID';

comment on column T_LM_CARRYSIGN.ORDERMASTERID is
'����ID';

comment on column T_LM_CARRYSIGN.CARRYID is
'�˵���';

comment on column T_LM_CARRYSIGN.ISPROXY is
'�Ƿ����ǩ��';

comment on column T_LM_CARRYSIGN.SIGNER is
'ǩ��������';

comment on column T_LM_CARRYSIGN.SIGNTIME is
'ǩ��ʱ��';

comment on column T_LM_CARRYSIGN.SIGNDATE is
'ǩ������';

comment on column T_LM_CARRYSIGN.DELIVERCODE is
'�ɼ��˴���';

comment on column T_LM_CARRYSIGN.DELIVER is
'�ɼ���';

comment on column T_LM_CARRYSIGN.REQUEST is
'��ִҪ��';

comment on column T_LM_CARRYSIGN.CARRYSIGNSTATE is
'��ִ״̬';

comment on column T_LM_CARRYSIGN.ISINSTEADGET is
'���ջ���';

comment on column T_LM_CARRYSIGN.NODECODE is
'�������';

comment on column T_LM_CARRYSIGN.REMARK is
'��ע';

comment on column T_LM_CARRYSIGN.SWATCHATTACHID is
'��������ID';

comment on column T_LM_CARRYSIGN.ATTACHID is
'����ID';

comment on column T_LM_CARRYSIGN.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_CARRYSIGN.CREATEDATE is
'CREATEDATE';

comment on column T_LM_CARRYSIGN.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_CARRYSIGN.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_CARRYSIGN.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_CARRYSIGN.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_CARRYSIGN.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_CARRYSIGN.OWNERID is
'OWNERID';

comment on column T_LM_CARRYSIGN.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_CARRYSIGN.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_CARRYSIGN.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_CUSTOMER                                         */
/*==============================================================*/
create table T_LM_CUSTOMER  (
   CUSTNAME             NVARCHAR2(50)                   not null,
   CUSTCODE             NVARCHAR2(50)                   not null,
   SHORTPINYIN          NVARCHAR2(50),
   ENNAME               NVARCHAR2(50)                   not null,
   ADDRESS              NVARCHAR2(200)                  not null,
   TEL                  NVARCHAR2(50)                   not null,
   FAX                  NVARCHAR2(50),
   EMAIL                NVARCHAR2(100),
   POSTCODE             NVARCHAR2(50),
   HOMEPAGE             NVARCHAR2(100),
   CORPTYPE             NVARCHAR2(50),
   CORPTYPENAME         NVARCHAR2(100),
   BUSINESSTYPE         NUMBER(1)                      default 1 not null,
   BUSINESSTYPENAME     NVARCHAR2(100),
   PRODUCTKIND          NVARCHAR2(50)                   not null,
   PRODUCTKINDNAME      NVARCHAR2(100),
   REGISTERFUND         NVARCHAR2(50),
   COOPERATESTARTTIME   DATE,
   COOPERATEENDTIME     DATE,
   COOPERATESTATE       NUMBER                          not null,
   SHOTNAME             NVARCHAR2(50)                   not null,
   BELONGORGCODE        NUMBER(3)                      default 0 not null,
   SHOPCARD             NVARCHAR2(50),
   CORPORATION          NVARCHAR2(50),
   ORGCODE              NVARCHAR2(50),
   REMARK               NVARCHAR2(2000),
   ATTACHID             NVARCHAR2(50)                   not null,
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_CUSTOMER primary key (CUSTCODE)
);

comment on table T_LM_CUSTOMER is
'1-1�ͻ�����ά��';

comment on column T_LM_CUSTOMER.CUSTNAME is
'�ͻ�����';

comment on column T_LM_CUSTOMER.CUSTCODE is
'�ͻ�����';

comment on column T_LM_CUSTOMER.SHORTPINYIN is
'ƴ�����';

comment on column T_LM_CUSTOMER.ENNAME is
'Ӣ�ļ��';

comment on column T_LM_CUSTOMER.ADDRESS is
'��ַ';

comment on column T_LM_CUSTOMER.TEL is
'�绰';

comment on column T_LM_CUSTOMER.FAX is
'����';

comment on column T_LM_CUSTOMER.EMAIL is
'EMAIL��ַ';

comment on column T_LM_CUSTOMER.POSTCODE is
'��������';

comment on column T_LM_CUSTOMER.HOMEPAGE is
'�ͻ���ҳ';

comment on column T_LM_CUSTOMER.CORPTYPE is
'��ҵ����';

comment on column T_LM_CUSTOMER.CORPTYPENAME is
'��ҵ��������';

comment on column T_LM_CUSTOMER.BUSINESSTYPE is
'�ͻ�����';

comment on column T_LM_CUSTOMER.BUSINESSTYPENAME is
'�ͻ���������';

comment on column T_LM_CUSTOMER.PRODUCTKIND is
'��Ʒ����';

comment on column T_LM_CUSTOMER.PRODUCTKINDNAME is
'��Ʒ��������';

comment on column T_LM_CUSTOMER.REGISTERFUND is
'ע���ʽ�';

comment on column T_LM_CUSTOMER.COOPERATESTARTTIME is
'��ʼ����ʱ��';

comment on column T_LM_CUSTOMER.COOPERATEENDTIME is
'��������ʱ��';

comment on column T_LM_CUSTOMER.COOPERATESTATE is
'����״̬';

comment on column T_LM_CUSTOMER.SHOTNAME is
'�ͻ����';

comment on column T_LM_CUSTOMER.BELONGORGCODE is
'�ͻ������ͷ�';

comment on column T_LM_CUSTOMER.SHOPCARD is
'Ӫҵִ�պ�';

comment on column T_LM_CUSTOMER.CORPORATION is
'����';

comment on column T_LM_CUSTOMER.ORGCODE is
'��������';

comment on column T_LM_CUSTOMER.REMARK is
'��ע';

comment on column T_LM_CUSTOMER.ATTACHID is
'����ID';

comment on column T_LM_CUSTOMER.CHECKSTATE is
'���״̬';

comment on column T_LM_CUSTOMER.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_CUSTOMER.CREATEDATE is
'CREATEDATE';

comment on column T_LM_CUSTOMER.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_CUSTOMER.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_CUSTOMER.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_CUSTOMER.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_CUSTOMER.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_CUSTOMER.OWNERID is
'OWNERID';

comment on column T_LM_CUSTOMER.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_CUSTOMER.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_CUSTOMER.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_CUSTOMERADDRESS                                  */
/*==============================================================*/
create table T_LM_CUSTOMERADDRESS  (
   ADDRESSID            VARCHAR2(50)                    not null,
   CUSTOMERCODE         NVARCHAR2(50)                   not null,
   CUSTOMERNAME         NVARCHAR2(50),
   ORGCODE              NVARCHAR2(50)                   not null,
   ORGNAME              NVARCHAR2(50),
   AOBJECT              NVARCHAR2(50),
   AREA                 NVARCHAR2(50)                   not null,
   RECEIVERID           NVARCHAR2(50),
   LINKMAN              NVARCHAR2(50)                   not null,
   TEL                  NVARCHAR2(50)                   not null,
   ADDRESS              NVARCHAR2(2000)                 not null,
   REMARK               NVARCHAR2(50),
   STATE                NUMBER                         default 0,
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
   constraint PK_T_LM_CUSTOMERADDRESS primary key (ADDRESSID)
);

comment on table T_LM_CUSTOMERADDRESS is
'1-19�ջ�����ַά��';

comment on column T_LM_CUSTOMERADDRESS.ADDRESSID is
'��ַ����ID';

comment on column T_LM_CUSTOMERADDRESS.CUSTOMERCODE is
'�ͻ�����';

comment on column T_LM_CUSTOMERADDRESS.CUSTOMERNAME is
'�ͻ�����';

comment on column T_LM_CUSTOMERADDRESS.ORGCODE is
'��������';

comment on column T_LM_CUSTOMERADDRESS.ORGNAME is
'��������';

comment on column T_LM_CUSTOMERADDRESS.AOBJECT is
'���䷽ʽ';

comment on column T_LM_CUSTOMERADDRESS.AREA is
'Ŀ������';

comment on column T_LM_CUSTOMERADDRESS.RECEIVERID is
'�ջ��ͻ�';

comment on column T_LM_CUSTOMERADDRESS.LINKMAN is
'��ϵ��';

comment on column T_LM_CUSTOMERADDRESS.TEL is
'�绰';

comment on column T_LM_CUSTOMERADDRESS.ADDRESS is
'Ŀ�ĵ�ַ';

comment on column T_LM_CUSTOMERADDRESS.REMARK is
'��ע';

comment on column T_LM_CUSTOMERADDRESS.STATE is
'״̬';

comment on column T_LM_CUSTOMERADDRESS.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_CUSTOMERADDRESS.CREATEDATE is
'CREATEDATE';

comment on column T_LM_CUSTOMERADDRESS.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_CUSTOMERADDRESS.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_CUSTOMERADDRESS.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_CUSTOMERADDRESS.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_CUSTOMERADDRESS.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_CUSTOMERADDRESS.OWNERID is
'OWNERID';

comment on column T_LM_CUSTOMERADDRESS.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_CUSTOMERADDRESS.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_CUSTOMERADDRESS.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_CUSTOMERBANK                                     */
/*==============================================================*/
create table T_LM_CUSTOMERBANK  (
   ACCOUNTSID           NVARCHAR2(50)                   not null,
   CUSTNAME             NVARCHAR2(100),
   BANK                 NVARCHAR2(50),
   BANKADDRESS          NVARCHAR2(50)                  default '1',
   HOLDER               NVARCHAR2(50),
   IDENTITYCARD         NVARCHAR2(50),
   BANKACCOUNTS         NVARCHAR2(50),
   REMARK               NVARCHAR2(100),
   USESTATE             NVARCHAR2(50),
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_CUSTOMERBANK primary key (ACCOUNTSID)
);

comment on table T_LM_CUSTOMERBANK is
'1-3�ͻ������ʻ���';

comment on column T_LM_CUSTOMERBANK.ACCOUNTSID is
'�ͻ������ʺ�ID';

comment on column T_LM_CUSTOMERBANK.CUSTNAME is
'�ͻ�����';

comment on column T_LM_CUSTOMERBANK.BANK is
'��������';

comment on column T_LM_CUSTOMERBANK.BANKADDRESS is
'�������е�ַ';

comment on column T_LM_CUSTOMERBANK.HOLDER is
'������';

comment on column T_LM_CUSTOMERBANK.IDENTITYCARD is
'���������֤��';

comment on column T_LM_CUSTOMERBANK.BANKACCOUNTS is
'�����ʺ�';

comment on column T_LM_CUSTOMERBANK.REMARK is
'��ע';

comment on column T_LM_CUSTOMERBANK.USESTATE is
'ʹ��״̬';

comment on column T_LM_CUSTOMERBANK.CHECKSTATE is
'���״̬';

comment on column T_LM_CUSTOMERBANK.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_CUSTOMERBANK.CREATEDATE is
'CREATEDATE';

comment on column T_LM_CUSTOMERBANK.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_CUSTOMERBANK.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_CUSTOMERBANK.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_CUSTOMERBANK.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_CUSTOMERBANK.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_CUSTOMERBANK.OWNERID is
'OWNERID';

comment on column T_LM_CUSTOMERBANK.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_CUSTOMERBANK.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_CUSTOMERBANK.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_CUSTOMERLINKMAN                                  */
/*==============================================================*/
create table T_LM_CUSTOMERLINKMAN  (
   LINKMANID            NVARCHAR2(50)                   not null,
   CUSTNAME             NVARCHAR2(50),
   NAME                 NVARCHAR2(50),
   JOB                  NVARCHAR2(50),
   TELEPHONE            NVARCHAR2(50),
   MOBILEPHONE          NVARCHAR2(50),
   ADDRESS              NVARCHAR2(50),
   MAIL                 NVARCHAR2(50),
   �����ͻ���ԱID             NVARCHAR2(50),
   �����ͻ���Ա����             NVARCHAR2(50),
   USESTATE             NVARCHAR2(50)                  default '1',
   REMARK               NVARCHAR2(50),
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
   constraint PK_T_LM_CUSTOMERLINKMAN primary key (LINKMANID)
);

comment on table T_LM_CUSTOMERLINKMAN is
'1-2�ͻ���ϵ�˱�';

comment on column T_LM_CUSTOMERLINKMAN.LINKMANID is
'�ͻ���ϵ�˱�ID';

comment on column T_LM_CUSTOMERLINKMAN.CUSTNAME is
'�ͻ�����';

comment on column T_LM_CUSTOMERLINKMAN.NAME is
'��ϵ��';

comment on column T_LM_CUSTOMERLINKMAN.JOB is
'ְλ';

comment on column T_LM_CUSTOMERLINKMAN.TELEPHONE is
'��ϵ�绰';

comment on column T_LM_CUSTOMERLINKMAN.MOBILEPHONE is
'�ֻ�';

comment on column T_LM_CUSTOMERLINKMAN.ADDRESS is
'��ϵ��ַ';

comment on column T_LM_CUSTOMERLINKMAN.MAIL is
'�ʼ���ַ';

comment on column T_LM_CUSTOMERLINKMAN.�����ͻ���ԱID is
'�����ͻ���ԱID';

comment on column T_LM_CUSTOMERLINKMAN.�����ͻ���Ա���� is
'�����ͻ���Ա����';

comment on column T_LM_CUSTOMERLINKMAN.USESTATE is
'�û�״̬';

comment on column T_LM_CUSTOMERLINKMAN.REMARK is
'��ע';

comment on column T_LM_CUSTOMERLINKMAN.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_CUSTOMERLINKMAN.CREATEDATE is
'CREATEDATE';

comment on column T_LM_CUSTOMERLINKMAN.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_CUSTOMERLINKMAN.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_CUSTOMERLINKMAN.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_CUSTOMERLINKMAN.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_CUSTOMERLINKMAN.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_CUSTOMERLINKMAN.OWNERID is
'OWNERID';

comment on column T_LM_CUSTOMERLINKMAN.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_CUSTOMERLINKMAN.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_CUSTOMERLINKMAN.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_CUSTOMERPROJECT                                  */
/*==============================================================*/
create table T_LM_CUSTOMERPROJECT  (
   PROJECTID            NVARCHAR2(50)                   not null,
   CUSTOMERCODE         NVARCHAR2(50)                   not null,
   CUSTOMERNAME         NVARCHAR2(50),
   PROJECTCODE          NVARCHAR2(50)                   not null,
   PROJECTNAME          NVARCHAR2(50)                   not null,
   SHORT                NVARCHAR2(50),
   STEP                 NVARCHAR2(50),
   REMARK               NVARCHAR2(50),
   STATE                NUMBER(1)                      default 0,
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
   constraint PK_T_LM_CUSTOMERPROJECT primary key (PROJECTID)
);

comment on table T_LM_CUSTOMERPROJECT is
'1-12�ͻ����۷�����';

comment on column T_LM_CUSTOMERPROJECT.PROJECTID is
'����ID';

comment on column T_LM_CUSTOMERPROJECT.CUSTOMERCODE is
'�ͻ�����';

comment on column T_LM_CUSTOMERPROJECT.CUSTOMERNAME is
'�ͻ�����';

comment on column T_LM_CUSTOMERPROJECT.PROJECTCODE is
'��������';

comment on column T_LM_CUSTOMERPROJECT.PROJECTNAME is
'��������';

comment on column T_LM_CUSTOMERPROJECT.SHORT is
'��ĸ��д';

comment on column T_LM_CUSTOMERPROJECT.STEP is
'���ȵȼ�';

comment on column T_LM_CUSTOMERPROJECT.REMARK is
'��ע';

comment on column T_LM_CUSTOMERPROJECT.STATE is
'״̬';

comment on column T_LM_CUSTOMERPROJECT.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_CUSTOMERPROJECT.CREATEDATE is
'CREATEDATE';

comment on column T_LM_CUSTOMERPROJECT.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_CUSTOMERPROJECT.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_CUSTOMERPROJECT.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_CUSTOMERPROJECT.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_CUSTOMERPROJECT.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_CUSTOMERPROJECT.OWNERID is
'OWNERID';

comment on column T_LM_CUSTOMERPROJECT.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_CUSTOMERPROJECT.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_CUSTOMERPROJECT.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_CUSTOMERUSER                                     */
/*==============================================================*/
create table T_LM_CUSTOMERUSER  (
   ACCOUNTSID           NVARCHAR2(50)                   not null,
   ACCOUNTS             NVARCHAR2(50),
   NAME                 NVARCHAR2(50),
   PASSWORD             NVARCHAR2(50),
   STATE                NVARCHAR2(50)                  default '1',
   REMARK               NVARCHAR2(2000),
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
   constraint PK_T_LM_CUSTOMERUSER primary key (ACCOUNTSID)
);

comment on table T_LM_CUSTOMERUSER is
'1-4�ͻ��ʺű�';

comment on column T_LM_CUSTOMERUSER.ACCOUNTSID is
'�ͻ��ʺ�ID';

comment on column T_LM_CUSTOMERUSER.ACCOUNTS is
'�û��ʺ�';

comment on column T_LM_CUSTOMERUSER.NAME is
'�û�����';

comment on column T_LM_CUSTOMERUSER.PASSWORD is
'�û�����';

comment on column T_LM_CUSTOMERUSER.STATE is
'�û�״̬';

comment on column T_LM_CUSTOMERUSER.REMARK is
'��ע';

comment on column T_LM_CUSTOMERUSER.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_CUSTOMERUSER.CREATEDATE is
'CREATEDATE';

comment on column T_LM_CUSTOMERUSER.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_CUSTOMERUSER.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_CUSTOMERUSER.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_CUSTOMERUSER.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_CUSTOMERUSER.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_CUSTOMERUSER.OWNERID is
'OWNERID';

comment on column T_LM_CUSTOMERUSER.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_CUSTOMERUSER.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_CUSTOMERUSER.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_DISTRICTDETAIL                                   */
/*==============================================================*/
create table T_LM_DISTRICTDETAIL  (
   DETAILID             NVARCHAR2(50)                   not null,
   ADDRESSCODE          NVARCHAR2(50)                   not null,
   ADDRESSNAME          NVARCHAR2(50)                   not null,
   PARENTLDID           NVARCHAR2(50),
   BESTROWAREA          NVARCHAR2(50),
   DEFINEAREAID         NVARCHAR2(50),
   DEFINEAREA           NVARCHAR2(50),
   NODEBOUND            NVARCHAR2(50),
   AVAILLIMIT           NVARCHAR2(50),
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
   constraint PK_T_LM_DISTRICTDETAIL primary key (DETAILID)
);

comment on table T_LM_DISTRICTDETAIL is
'1-15ȫ����������ϸ��';

comment on column T_LM_DISTRICTDETAIL.DETAILID is
'��ϸ��ID';

comment on column T_LM_DISTRICTDETAIL.ADDRESSCODE is
'��ַ���';

comment on column T_LM_DISTRICTDETAIL.ADDRESSNAME is
'��ַ����';

comment on column T_LM_DISTRICTDETAIL.PARENTLDID is
'����ID';

comment on column T_LM_DISTRICTDETAIL.BESTROWAREA is
'�Ƿ��Ǹ�����������';

comment on column T_LM_DISTRICTDETAIL.DEFINEAREAID is
'�Զ�������ID';

comment on column T_LM_DISTRICTDETAIL.DEFINEAREA is
'�Զ�����������';

comment on column T_LM_DISTRICTDETAIL.NODEBOUND is
'ҵ�񸲸�����ID';

comment on column T_LM_DISTRICTDETAIL.AVAILLIMIT is
'ʱЧ��׼';

comment on column T_LM_DISTRICTDETAIL.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_DISTRICTDETAIL.CREATEDATE is
'CREATEDATE';

comment on column T_LM_DISTRICTDETAIL.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_DISTRICTDETAIL.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_DISTRICTDETAIL.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_DISTRICTDETAIL.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_DISTRICTDETAIL.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_DISTRICTDETAIL.OWNERID is
'OWNERID';

comment on column T_LM_DISTRICTDETAIL.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_DISTRICTDETAIL.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_DISTRICTDETAIL.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_DISTRICTMASTER                                   */
/*==============================================================*/
create table T_LM_DISTRICTMASTER  (
   ALERTID              NVARCHAR2(50)                   not null,
   PROVINCECODE         NVARCHAR2(50)                   not null,
   PROVINCENAME         NVARCHAR2(50)                   not null,
   CITYCODE             NVARCHAR2(50),
   CITYNAME             NVARCHAR2(50),
   COUNTYCODE           NVARCHAR2(50),
   COUNTYNAME           NVARCHAR2(50),
   BESTROWAREA          NVARCHAR2(50),
   DEFINEAREAID         NVARCHAR2(50),
   DEFINEAREA           NVARCHAR2(50),
   NODEBOUND            NVARCHAR2(50),
   AVAILLIMIT           NVARCHAR2(50),
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
'1-14ȫ������������';

comment on column T_LM_DISTRICTMASTER.ALERTID is
'����ID';

comment on column T_LM_DISTRICTMASTER.PROVINCECODE is
'ʡ�ݱ��';

comment on column T_LM_DISTRICTMASTER.PROVINCENAME is
'ʡ������';

comment on column T_LM_DISTRICTMASTER.CITYCODE is
'�ؼ��б��';

comment on column T_LM_DISTRICTMASTER.CITYNAME is
'�ؼ�������';

comment on column T_LM_DISTRICTMASTER.COUNTYCODE is
'���ؼ����';

comment on column T_LM_DISTRICTMASTER.COUNTYNAME is
'���ؼ�����';

comment on column T_LM_DISTRICTMASTER.BESTROWAREA is
'�Ƿ��Ǹ�����������';

comment on column T_LM_DISTRICTMASTER.DEFINEAREAID is
'�Զ�������ID';

comment on column T_LM_DISTRICTMASTER.DEFINEAREA is
'�Զ�����������';

comment on column T_LM_DISTRICTMASTER.NODEBOUND is
'ҵ�񸲸�����ID';

comment on column T_LM_DISTRICTMASTER.AVAILLIMIT is
'ʱЧ��׼';

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

/*==============================================================*/
/* Table: T_LM_FOLLOWINFO                                       */
/*==============================================================*/
create table T_LM_FOLLOWINFO  (
   FOLLOWINFOID         NVARCHAR2(50)                   not null,
   ORDERMASTERID        NVARCHAR2(50)                   not null,
   FOLLOWTIME           DATE                            not null,
   OPERATESITE          NVARCHAR2(50),
   OPERATECOURSE        NVARCHAR2(2000)                 not null,
   FOLLOWSTATE          NUMBER(0)                      default 1 not null,
   OPERATEORGCODE       NVARCHAR2(50)                   not null,
   ISALERT              NUMBER(1),
   OPERATEACCOUNTS      NVARCHAR2(50)                   not null,
   REMARK               NVARCHAR2(2000),
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
   constraint PK_T_LM_FOLLOWINFO primary key (FOLLOWINFOID)
);

comment on table T_LM_FOLLOWINFO is
'1-10��;׷�ٱ�';

comment on column T_LM_FOLLOWINFO.FOLLOWINFOID is
'��;׷��ID';

comment on column T_LM_FOLLOWINFO.ORDERMASTERID is
'�������';

comment on column T_LM_FOLLOWINFO.FOLLOWTIME is
'����ʱ��';

comment on column T_LM_FOLLOWINFO.OPERATESITE is
'�����ص�';

comment on column T_LM_FOLLOWINFO.OPERATECOURSE is
'��������';

comment on column T_LM_FOLLOWINFO.FOLLOWSTATE is
'׷��״̬';

comment on column T_LM_FOLLOWINFO.OPERATEORGCODE is
'��������';

comment on column T_LM_FOLLOWINFO.ISALERT is
'�Ƿ��Զ�����';

comment on column T_LM_FOLLOWINFO.OPERATEACCOUNTS is
'������';

comment on column T_LM_FOLLOWINFO.REMARK is
'��ע';

comment on column T_LM_FOLLOWINFO.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_FOLLOWINFO.CREATEDATE is
'CREATEDATE';

comment on column T_LM_FOLLOWINFO.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_FOLLOWINFO.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_FOLLOWINFO.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_FOLLOWINFO.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_FOLLOWINFO.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_FOLLOWINFO.OWNERID is
'OWNERID';

comment on column T_LM_FOLLOWINFO.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_FOLLOWINFO.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_FOLLOWINFO.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_INGREDIENT                                       */
/*==============================================================*/
create table T_LM_INGREDIENT  (
   INGREDIENTID         NVARCHAR2(50)                   not null,
   CUSTOMERCODE         NVARCHAR2(50)                   not null,
   PROJECTCODE          NVARCHAR2(50)                   not null,
   BURSARYID            NVARCHAR2(50)                   not null,
   CREATEUSERID         NVARCHAR2(50),
   CREATEDATE           DATE                           default SYSDATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UPDATEDATE           DATE                           default SYSDATE not null,
   constraint PK_T_LM_INGREDIENT primary key (INGREDIENTID)
);

comment on table T_LM_INGREDIENT is
'1-13�������ر�';

comment on column T_LM_INGREDIENT.INGREDIENTID is
'����ID';

comment on column T_LM_INGREDIENT.CUSTOMERCODE is
'�ͻ�����';

comment on column T_LM_INGREDIENT.PROJECTCODE is
'��������';

comment on column T_LM_INGREDIENT.BURSARYID is
'��ƿ�Ŀ���շ��';

comment on column T_LM_INGREDIENT.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_INGREDIENT.CREATEDATE is
'CREATEDATE';

comment on column T_LM_INGREDIENT.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_INGREDIENT.UPDATEDATE is
'UPDATEDATE';

/*==============================================================*/
/* Table: T_LM_NODE                                             */
/*==============================================================*/
create table T_LM_NODE  (
   NODEID               NVARCHAR2(50)                   not null,
   NODECODE             NVARCHAR2(50)                   not null,
   NODENAME             NVARCHAR2(50),
   ORGCODE              NVARCHAR2(50),
   AREACODE             NVARCHAR2(50)                   not null,
   NODETYPE             NUMBER(1)                       not null,
   NODETYPENAME         NVARCHAR2(50),
   NODEKIND             NUMBER(1)                       not null,
   NODEBOUND            NVARCHAR2(50),
   BUSINESSDATE         DATE                            not null,
   BEGINDATE            DATE,
   ENDDATE              DATE,
   NODEADDRESS          NVARCHAR2(50),
   NAME                 NVARCHAR2(50),
   JOB                  NVARCHAR2(50),
   TELEPHONE            NVARCHAR2(50),
   REMARK               NVARCHAR2(500),
   ATTACHID             NVARCHAR2(50)                   not null,
   STATE                NUMBER(1)                       not null,
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_NODE primary key (NODECODE)
);

comment on table T_LM_NODE is
'1-22������Ϣά��';

comment on column T_LM_NODE.NODEID is
'����ID';

comment on column T_LM_NODE.NODECODE is
'�������';

comment on column T_LM_NODE.NODENAME is
'��������';

comment on column T_LM_NODE.ORGCODE is
'�����ֹ�˾';

comment on column T_LM_NODE.AREACODE is
'��������';

comment on column T_LM_NODE.NODETYPE is
'��������';

comment on column T_LM_NODE.NODETYPENAME is
'������������';

comment on column T_LM_NODE.NODEKIND is
'��������';

comment on column T_LM_NODE.NODEBOUND is
'ҵ�񸲸�����ID';

comment on column T_LM_NODE.BUSINESSDATE is
'���㿪ʼ����ʱ��';

comment on column T_LM_NODE.BEGINDATE is
'Э�鿪ʼʱ��';

comment on column T_LM_NODE.ENDDATE is
'Э���ֹʱ��';

comment on column T_LM_NODE.NODEADDRESS is
'�����ַ';

comment on column T_LM_NODE.NAME is
'������';

comment on column T_LM_NODE.JOB is
'ְλ';

comment on column T_LM_NODE.TELEPHONE is
'��ϵ�绰';

comment on column T_LM_NODE.REMARK is
'��ע';

comment on column T_LM_NODE.ATTACHID is
'����ID';

comment on column T_LM_NODE.STATE is
'����ʹ��״̬';

comment on column T_LM_NODE.CHECKSTATE is
'���״̬';

comment on column T_LM_NODE.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_NODE.CREATEDATE is
'CREATEDATE';

comment on column T_LM_NODE.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_NODE.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_NODE.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_NODE.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_NODE.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_NODE.OWNERID is
'OWNERID';

comment on column T_LM_NODE.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_NODE.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_NODE.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_NODEBANK                                         */
/*==============================================================*/
create table T_LM_NODEBANK  (
   ACCOUNTSID           NVARCHAR2(50)                   not null,
   NODENAME             NVARCHAR2(100),
   HOLDER               NVARCHAR2(50),
   IDENTITYCARD         NVARCHAR2(50),
   BANKACCOUNTS         NVARCHAR2(50),
   BANK                 NVARCHAR2(50),
   BANKADDRESS          NVARCHAR2(50)                  default '1',
   USESTATE             NVARCHAR2(50),
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_NODEBANK primary key (ACCOUNTSID)
);

comment on table T_LM_NODEBANK is
'1-23���������ʻ���';

comment on column T_LM_NODEBANK.ACCOUNTSID is
'�ͻ������ʺ�ID';

comment on column T_LM_NODEBANK.NODENAME is
'��������';

comment on column T_LM_NODEBANK.HOLDER is
'������';

comment on column T_LM_NODEBANK.IDENTITYCARD is
'���������֤��';

comment on column T_LM_NODEBANK.BANKACCOUNTS is
'�����ʺ�';

comment on column T_LM_NODEBANK.BANK is
'��������';

comment on column T_LM_NODEBANK.BANKADDRESS is
'�������е�ַ';

comment on column T_LM_NODEBANK.USESTATE is
'ʹ��״̬';

comment on column T_LM_NODEBANK.CHECKSTATE is
'���״̬';

comment on column T_LM_NODEBANK.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_NODEBANK.CREATEDATE is
'CREATEDATE';

comment on column T_LM_NODEBANK.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_NODEBANK.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_NODEBANK.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_NODEBANK.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_NODEBANK.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_NODEBANK.OWNERID is
'OWNERID';

comment on column T_LM_NODEBANK.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_NODEBANK.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_NODEBANK.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_ORDERDETAIL                                      */
/*==============================================================*/
create table T_LM_ORDERDETAIL  (
   ORDERDETAILID        NVARCHAR2(50)                   not null,
   ORDERDETAILCODE      NVARCHAR2(50)                   not null,
   ORDERTYPE            NUMBER(1)                       not null,
   SENDWAREHOUSEID      NVARCHAR2(50),
   RECIVEWARHOUSEID     NVARCHAR2(50),
   WORKWAREHOUSEID      NVARCHAR2(50),
   SENDERID             NVARCHAR2(50),
   SENDERNAME           NVARCHAR2(100),
   SOURCECUSTOMERID     NVARCHAR2(50),
   SOURCEAREAID         NVARCHAR2(50),
   SOURCEADDRESS        NVARCHAR2(2000),
   SOURCELINKMAN        NVARCHAR2(50),
   SENDERPOSTCODE       NVARCHAR2(50),
   SOURCETEL            NVARCHAR2(50),
   RECEIVERID           NVARCHAR2(50),
   RECEIVERNAME         NVARCHAR2(100),
   RECIVERPOSTCODE      NVARCHAR2(50),
   DESTAREAID           NVARCHAR2(50),
   DESTADDRESS          NVARCHAR2(2000),
   DESTLINKMAN          NVARCHAR2(50),
   DESTTEL              NVARCHAR2(50),
   TASKMODE             NVARCHAR2(50),
   AVAILTIME            DATE,
   AVAILLIMIT           NUMBER,
   AVAILLIMITALERT      NUMBER,
   BILLSTATE            NVARCHAR2(50)                  default '1',
   ACCEPTDATE           DATE                           default SYSDATE,
   ORDERVALUE           NUMBER(10,2)                   default 0,
   TOTALPIECE           NUMBER                         default 0,
   AMOUNT               NUMBER                         default 0,
   TOTALWEIGHT          NUMBER                         default 0,
   �̵�ʱ���                NVARCHAR2(50),
   �̵�����                 NVARCHAR2(50),
   ISCARRYSIGN          NUMBER(1),
   REMARK               NVARCHAR2(2000),
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
   constraint PK_T_LM_ORDERDETAIL primary key (ORDERDETAILID)
);

comment on table T_LM_ORDERDETAIL is
'1-6������ϸ��';

comment on column T_LM_ORDERDETAIL.ORDERDETAILID is
'����ID';

comment on column T_LM_ORDERDETAIL.ORDERDETAILCODE is
'���ݱ��';

comment on column T_LM_ORDERDETAIL.ORDERTYPE is
'�������';

comment on column T_LM_ORDERDETAIL.SENDWAREHOUSEID is
'�����ֿ�ID';

comment on column T_LM_ORDERDETAIL.RECIVEWARHOUSEID is
'���ֿ�ID';

comment on column T_LM_ORDERDETAIL.WORKWAREHOUSEID is
'��ҵ�ֿ�ID';

comment on column T_LM_ORDERDETAIL.SENDERID is
'�����ͻ�ID';

comment on column T_LM_ORDERDETAIL.SENDERNAME is
'�����ͻ�����';

comment on column T_LM_ORDERDETAIL.SOURCECUSTOMERID is
'��Դ�ؿͻ�ID';

comment on column T_LM_ORDERDETAIL.SOURCEAREAID is
'��Դ����������ID';

comment on column T_LM_ORDERDETAIL.SOURCEADDRESS is
'��Դ�ص�ַ';

comment on column T_LM_ORDERDETAIL.SOURCELINKMAN is
'��Դ����ϵ��';

comment on column T_LM_ORDERDETAIL.SENDERPOSTCODE is
'�������ʱ�';

comment on column T_LM_ORDERDETAIL.SOURCETEL is
'��Դ�ص绰';

comment on column T_LM_ORDERDETAIL.RECEIVERID is
'�ջ��ͻ�ID';

comment on column T_LM_ORDERDETAIL.RECEIVERNAME is
'�ջ��ͻ�����';

comment on column T_LM_ORDERDETAIL.RECIVERPOSTCODE is
'�ջ����ʱ�';

comment on column T_LM_ORDERDETAIL.DESTAREAID is
'Ŀ�ĵ���������ID';

comment on column T_LM_ORDERDETAIL.DESTADDRESS is
'Ŀ�ĵ�ַ';

comment on column T_LM_ORDERDETAIL.DESTLINKMAN is
'Ŀ�ĵ���ϵ��';

comment on column T_LM_ORDERDETAIL.DESTTEL is
'Ŀ�ĵص绰';

comment on column T_LM_ORDERDETAIL.TASKMODE is
'������ҵ��ʽ';

comment on column T_LM_ORDERDETAIL.AVAILTIME is
'ʱЧ��ʼʱ��';

comment on column T_LM_ORDERDETAIL.AVAILLIMIT is
'ʱЧ��׼';

comment on column T_LM_ORDERDETAIL.AVAILLIMITALERT is
'ʱЧ������';

comment on column T_LM_ORDERDETAIL.BILLSTATE is
'����״̬';

comment on column T_LM_ORDERDETAIL.ACCEPTDATE is
'ԤԼʱ��';

comment on column T_LM_ORDERDETAIL.ORDERVALUE is
'���ݷ���';

comment on column T_LM_ORDERDETAIL.TOTALPIECE is
'����';

comment on column T_LM_ORDERDETAIL.AMOUNT is
'����';

comment on column T_LM_ORDERDETAIL.TOTALWEIGHT is
'����';

comment on column T_LM_ORDERDETAIL.�̵�ʱ��� is
'�̵�ʱ���';

comment on column T_LM_ORDERDETAIL.�̵����� is
'�̵�����';

comment on column T_LM_ORDERDETAIL.ISCARRYSIGN is
'�Ƿ��ִ';

comment on column T_LM_ORDERDETAIL.REMARK is
'��ע';

comment on column T_LM_ORDERDETAIL.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_ORDERDETAIL.CREATEDATE is
'CREATEDATE';

comment on column T_LM_ORDERDETAIL.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_ORDERDETAIL.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_ORDERDETAIL.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_ORDERDETAIL.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_ORDERDETAIL.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_ORDERDETAIL.OWNERID is
'OWNERID';

comment on column T_LM_ORDERDETAIL.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_ORDERDETAIL.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_ORDERDETAIL.CREATEPOSTID is
'CREATEPOSTID';

--WARNING: The following insert order will fail because it cannot give value to mandatory columns
insert into T_LM_ORDERDETAIL (ORDERDETAILID, ORDERDETAILCODE, ORDERTYPE, CREATEUSERID, CREATEDATE, UPDATEUSERID, UPDATEDATE)
select ORDERDETAILID, ?, ?, CREATEUSERID, CREATEDATE, UPDATEUSERID, UPDATEDATE
from SMTLM."tmp_T_LM_ORDERDETAIL";

/*==============================================================*/
/* Table: T_LM_ORDERDMASTER                                     */
/*==============================================================*/
create table T_LM_ORDERDMASTER  (
   ORDERMASTERID        NVARCHAR2(50)                   not null,
   ORDERMASTERCODE      NVARCHAR2(50)                   not null,
   CUSTOMERDICTATE      NVARCHAR2(50)                   not null,
   ORDERSOURCE          NUMBER(1)                       not null,
   ORDERTYPE            NUMBER(1)                       not null,
   ORDERTYPENAME        NVARCHAR2(100),
   ORGANIZATIONID       NVARCHAR2(50)                   not null,
   ORGANIZATIONNAME     NVARCHAR2(100),
   CONSIGNERID          NVARCHAR2(50)                   not null,
   CONSIGNERNAME        NVARCHAR2(100),
   CHARGEMODE           NUMBER(1),
   ORDERVALUE           NUMBER(10,2)                   default 0,
   TOTALPIECE           NUMBER                         default 0,
   AMOUNT               NUMBER                         default 0,
   TOTALWEIGHT          NUMBER                         default 0,
   REMARK               NVARCHAR2(2000),
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_ORDERDMASTER primary key (ORDERMASTERID)
);

comment on table T_LM_ORDERDMASTER is
'1-5��������';

comment on column T_LM_ORDERDMASTER.ORDERMASTERID is
'����ID';

comment on column T_LM_ORDERDMASTER.ORDERMASTERCODE is
'�������';

comment on column T_LM_ORDERDMASTER.CUSTOMERDICTATE is
'�ͻ�ָ�����';

comment on column T_LM_ORDERDMASTER.ORDERSOURCE is
'������Դ���';

comment on column T_LM_ORDERDMASTER.ORDERTYPE is
'�������';

comment on column T_LM_ORDERDMASTER.ORDERTYPENAME is
'�����������';

comment on column T_LM_ORDERDMASTER.ORGANIZATIONID is
'����ID';

comment on column T_LM_ORDERDMASTER.ORGANIZATIONNAME is
'��������';

comment on column T_LM_ORDERDMASTER.CONSIGNERID is
'ί�пͻ�ID';

comment on column T_LM_ORDERDMASTER.CONSIGNERNAME is
'�ͻ�����';

comment on column T_LM_ORDERDMASTER.CHARGEMODE is
'�շѷ�ʽ';

comment on column T_LM_ORDERDMASTER.ORDERVALUE is
'�����ܷ���';

comment on column T_LM_ORDERDMASTER.TOTALPIECE is
'����';

comment on column T_LM_ORDERDMASTER.AMOUNT is
'������';

comment on column T_LM_ORDERDMASTER.TOTALWEIGHT is
'������';

comment on column T_LM_ORDERDMASTER.REMARK is
'��ע';

comment on column T_LM_ORDERDMASTER.CHECKSTATE is
'���״̬';

comment on column T_LM_ORDERDMASTER.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_ORDERDMASTER.CREATEDATE is
'CREATEDATE';

comment on column T_LM_ORDERDMASTER.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_ORDERDMASTER.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_ORDERDMASTER.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_ORDERDMASTER.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_ORDERDMASTER.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_ORDERDMASTER.OWNERID is
'OWNERID';

comment on column T_LM_ORDERDMASTER.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_ORDERDMASTER.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_ORDERDMASTER.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_ORDERGOODS                                       */
/*==============================================================*/
create table T_LM_ORDERGOODS  (
   ORDERGOODSID         NVARCHAR2(50)                   not null,
   ������ˮ��                NVARCHAR2(50),
   GOODSTYPEID          NVARCHAR2(50),
   GOODSID              NVARCHAR2(50)                   not null,
   GOODSNAME            NVARCHAR2(50)                   not null,
   GOODSSTATE           NVARCHAR2(50)                   not null,
   GOODSQTY             NUMBER,
   ISSCAN               NVARCHAR2(50),
   UNITSID              NVARCHAR2(50),
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
   constraint PK_T_LM_ORDERGOODS primary key (ORDERGOODSID)
);

comment on table T_LM_ORDERGOODS is
'1-9������Ʒ�б�';

comment on column T_LM_ORDERGOODS.ORDERGOODSID is
'������Ʒ��ϸID';

comment on column T_LM_ORDERGOODS.������ˮ�� is
'������ˮ��';

comment on column T_LM_ORDERGOODS.GOODSTYPEID is
'��Ʒ���';

comment on column T_LM_ORDERGOODS.GOODSID is
'��Ʒ����';

comment on column T_LM_ORDERGOODS.GOODSNAME is
'��Ʒ����';

comment on column T_LM_ORDERGOODS.GOODSSTATE is
'��Ʒ״̬';

comment on column T_LM_ORDERGOODS.GOODSQTY is
'��Ʒ����';

comment on column T_LM_ORDERGOODS.ISSCAN is
'�Ƿ�ɨ��';

comment on column T_LM_ORDERGOODS.UNITSID is
'��Ʒ��λ';

comment on column T_LM_ORDERGOODS.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_ORDERGOODS.CREATEDATE is
'CREATEDATE';

comment on column T_LM_ORDERGOODS.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_ORDERGOODS.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_ORDERGOODS.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_ORDERGOODS.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_ORDERGOODS.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_ORDERGOODS.OWNERID is
'OWNERID';

comment on column T_LM_ORDERGOODS.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_ORDERGOODS.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_ORDERGOODS.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_ORDERIMEI                                        */
/*==============================================================*/
create table T_LM_ORDERIMEI  (
   ORDERIMEIID          NVARCHAR2(50)                   not null,
   IMEI                 NVARCHAR2(50),
   constraint PK_T_LM_ORDERIMEI primary key (ORDERIMEIID)
);

comment on table T_LM_ORDERIMEI is
'1-11������Ʒ���ű�';

comment on column T_LM_ORDERIMEI.ORDERIMEIID is
'����ID';

comment on column T_LM_ORDERIMEI.IMEI is
'����';

/*==============================================================*/
/* Table: T_LM_ORDERREQUEST                                     */
/*==============================================================*/
create table T_LM_ORDERREQUEST  (
   ORDERREQUESTID       NVARCHAR2(50)                   not null,
   ORDERDETAILID        NVARCHAR2(50)                   not null,
   ORDERSN              NVARCHAR2(50),
   REFERRENCE           NUMBER                          not null,
   PAYMENTPRICE         NUMBER(10,2),
   BURSARYID            NVARCHAR2(50)                   not null,
   REMARK               NVARCHAR2(2000),
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_ORDERREQUEST primary key (ORDERREQUESTID)
);

comment on table T_LM_ORDERREQUEST is
'1-7�����շ���';

comment on column T_LM_ORDERREQUEST.ORDERREQUESTID is
'�շ���ID';

comment on column T_LM_ORDERREQUEST.ORDERDETAILID is
'����ID';

comment on column T_LM_ORDERREQUEST.ORDERSN is
'�շ����';

comment on column T_LM_ORDERREQUEST.REFERRENCE is
'�շѲο�ֵ';

comment on column T_LM_ORDERREQUEST.PAYMENTPRICE is
'�շѼ۸�';

comment on column T_LM_ORDERREQUEST.BURSARYID is
'��ƿ�Ŀ���շ��';

comment on column T_LM_ORDERREQUEST.REMARK is
'��ע';

comment on column T_LM_ORDERREQUEST.CHECKSTATE is
'���״̬';

comment on column T_LM_ORDERREQUEST.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_ORDERREQUEST.CREATEDATE is
'CREATEDATE';

comment on column T_LM_ORDERREQUEST.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_ORDERREQUEST.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_ORDERREQUEST.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_ORDERREQUEST.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_ORDERREQUEST.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_ORDERREQUEST.OWNERID is
'OWNERID';

comment on column T_LM_ORDERREQUEST.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_ORDERREQUEST.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_ORDERREQUEST.CREATEPOSTID is
'CREATEPOSTID';

alter table T_LM_PREFIX
   add constraint PK_T_LM_PREFIX primary key (PREFIXTYPEID, PREFIXID);

/*==============================================================*/
/* Table: T_LM_REFUSEORDER                                      */
/*==============================================================*/
create table T_LM_REFUSEORDER  (
   REFUSEORDERID        NVARCHAR2(50)                   not null,
   ORDERMASTERCODE      NVARCHAR2(50)                   not null,
   DEFINEAREAID         NVARCHAR2(50),
   CUSTOMERDICTATE      NVARCHAR2(50)                   not null,
   ORDERSOURCE          NUMBER(1)                       not null,
   ORDERTYPE            NUMBER(1)                       not null,
   ORGANIZATIONID       NVARCHAR2(50)                   not null,
   CONSIGNERID          NVARCHAR2(50)                   not null,
   �ͻ�����                 NVARCHAR2(50),
   �����û�                 NVARCHAR2(50),
   �ܾ�����                 NVARCHAR2(50),
   REMARK               NVARCHAR2(2000),
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
   constraint PK_T_LM_REFUSEORDER primary key (REFUSEORDERID)
);

comment on table T_LM_REFUSEORDER is
'1-16���ܾ��ĵ���';

comment on column T_LM_REFUSEORDER.REFUSEORDERID is
'���ܾ��Ķ���ID';

comment on column T_LM_REFUSEORDER.ORDERMASTERCODE is
'�������';

comment on column T_LM_REFUSEORDER.DEFINEAREAID is
'��������ID';

comment on column T_LM_REFUSEORDER.CUSTOMERDICTATE is
'�ͻ�ָ�����';

comment on column T_LM_REFUSEORDER.ORDERSOURCE is
'������Դ���';

comment on column T_LM_REFUSEORDER.ORDERTYPE is
'�������';

comment on column T_LM_REFUSEORDER.ORGANIZATIONID is
'����ID';

comment on column T_LM_REFUSEORDER.CONSIGNERID is
'ί�пͻ�ID';

comment on column T_LM_REFUSEORDER.�ͻ����� is
'�ͻ�����';

comment on column T_LM_REFUSEORDER.�����û� is
'�����û�';

comment on column T_LM_REFUSEORDER.�ܾ����� is
'�ܾ�����';

comment on column T_LM_REFUSEORDER.REMARK is
'��ע';

comment on column T_LM_REFUSEORDER.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_REFUSEORDER.CREATEDATE is
'CREATEDATE';

comment on column T_LM_REFUSEORDER.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_REFUSEORDER.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_REFUSEORDER.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_REFUSEORDER.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_REFUSEORDER.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_REFUSEORDER.OWNERID is
'OWNERID';

comment on column T_LM_REFUSEORDER.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_REFUSEORDER.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_REFUSEORDER.CREATEPOSTID is
'CREATEPOSTID';

/*==============================================================*/
/* Table: T_LM_SALESMAN                                         */
/*==============================================================*/
create table T_LM_SALESMAN  (
   PERSONNELID          NVARCHAR2(50),
   SMCODE               NVARCHAR2(50)                   not null,
   NODENAME             NVARCHAR2(100),
   SMNAME               NVARCHAR2(50)                   not null,
   SEX                  NUMBER(1)                      default 3 not null,
   IDCARDNO             NVARCHAR2(50),
   PHONE                NVARCHAR2(100),
   MOBILE               NVARCHAR2(50),
   HABITATCITY          NVARCHAR2(50),
   HABITATION           NVARCHAR2(50),
   STATE                NUMBER                         default 1 not null,
   INDATE               DATE                            not null,
   SMTYPE               NUMBER(1)                      default 1 not null,
   REMARK               NVARCHAR2(2000),
   CHECKSTATE           NVARCHAR2(50),
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
   constraint PK_T_LM_SALESMAN primary key (SMCODE)
);

comment on table T_LM_SALESMAN is
'1-24������Ա��Ϣ��';

comment on column T_LM_SALESMAN.PERSONNELID is
'��Ա��ϢID';

comment on column T_LM_SALESMAN.SMCODE is
'��Ա���';

comment on column T_LM_SALESMAN.NODENAME is
'��������';

comment on column T_LM_SALESMAN.SMNAME is
'��Ա����';

comment on column T_LM_SALESMAN.SEX is
'�Ա�';

comment on column T_LM_SALESMAN.IDCARDNO is
'���֤��';

comment on column T_LM_SALESMAN.PHONE is
'����绰';

comment on column T_LM_SALESMAN.MOBILE is
'�ֻ�����';

comment on column T_LM_SALESMAN.HABITATCITY is
'��ס�س���';

comment on column T_LM_SALESMAN.HABITATION is
'��ס��';

comment on column T_LM_SALESMAN.STATE is
'��Ա״̬';

comment on column T_LM_SALESMAN.INDATE is
'��ְʱ��';

comment on column T_LM_SALESMAN.SMTYPE is
'��Ա����';

comment on column T_LM_SALESMAN.REMARK is
'��ע';

comment on column T_LM_SALESMAN.CHECKSTATE is
'���״̬';

comment on column T_LM_SALESMAN.CREATEUSERID is
'CREATEUSERID';

comment on column T_LM_SALESMAN.CREATEDATE is
'CREATEDATE';

comment on column T_LM_SALESMAN.UPDATEUSERID is
'UPDATEUSERID';

comment on column T_LM_SALESMAN.UPDATEDATE is
'UPDATEDATE';

comment on column T_LM_SALESMAN.OWNERCOMPANYID is
'OWNERCOMPANYID';

comment on column T_LM_SALESMAN.OWNERDEPARTMENTID is
'OWNERDEPARTMENTID';

comment on column T_LM_SALESMAN.OWNERPOSTID is
'OWNERPOSTID';

comment on column T_LM_SALESMAN.OWNERID is
'OWNERID';

comment on column T_LM_SALESMAN.CREATECOMPANYID is
'CREATECOMPANYID';

comment on column T_LM_SALESMAN.CREATEDEPARTMENTID is
'CREATEDEPARTMENTID';

comment on column T_LM_SALESMAN.CREATEPOSTID is
'CREATEPOSTID';

