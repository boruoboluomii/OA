/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/5/14 16:16:21                           */
/*==============================================================*/


drop table if exists 1;

drop table if exists 12;

drop table if exists Flow_Consultation_T;

drop table if exists Flow_FlowCategory;

drop table if exists Flow_FlowDefine_T;

drop table if exists Flow_FlowRecordDetail_T;

drop table if exists Flow_FlowRecordMaster_T;

drop table if exists Flow_FlowToCategory;

drop table if exists Flow_ModelDefine_T;

drop table if exists Flow_ModelFlowRelation_T;

drop table if exists Flow_Rules;

drop table if exists PROVINCE;

drop table if exists TRIGGERLOG;

drop table if exists T_FB_BorrowApplyDetail;

drop table if exists T_FB_BorrowApplyMaster;

drop table if exists T_FB_BudgetAccount;

drop table if exists T_FB_BudgetCheck;

drop table if exists T_FB_ChargeApplyDetail;

drop table if exists T_FB_ChargeApplyMaster;

drop table if exists T_FB_ChargeByRepay;

drop table if exists T_FB_CompanyBudgetApplyDetail;

drop table if exists T_FB_CompanyBudgetApplyMaster;

drop table if exists T_FB_CompanyBudgetModDetail;

drop table if exists T_FB_CompanyBudgetModMaster;

drop table if exists T_FB_CompanyBudgetSumDetail;

drop table if exists T_FB_CompanyBudgetSumMaster;

drop table if exists T_FB_CompanyTransferDetail;

drop table if exists T_FB_CompanyTransferMaster;

drop table if exists T_FB_DeptBudgetAddDetail;

drop table if exists T_FB_DeptBudgetAddMaster;

drop table if exists T_FB_DeptBudgetApplyDetail;

drop table if exists T_FB_DeptBudgetApplyMaster;

drop table if exists T_FB_DeptBudgetSumDetail;

drop table if exists T_FB_DeptBudgetSumMaster;

drop table if exists T_FB_DeptTransferDetail;

drop table if exists T_FB_DeptTransferMaster;

drop table if exists T_FB_ExtensionOrderDetail;

drop table if exists T_FB_ExtensionalOrder;

drop table if exists T_FB_ExtensionalType;

drop table if exists T_FB_OrderCode;

drop table if exists T_FB_PersonAccount;

drop table if exists T_FB_PersonBudgetAddDetail;

drop table if exists T_FB_PersonBudgetApplyDetail;

drop table if exists T_FB_PersonMoneyAssignDetail;

drop table if exists T_FB_PersonMoneyAssignMaster;

drop table if exists T_FB_RepayApplyDetail;

drop table if exists T_FB_RepayApplyMaster;

drop table if exists T_FB_SUBJECTCOMPANYSET;

drop table if exists T_FB_SUMSETTINGSDETAIL;

drop table if exists T_FB_SUMSETTINGSMASTER;

drop table if exists T_FB_SalaryPayList;

drop table if exists T_FB_Subject;

drop table if exists T_FB_SubjectCompany;

drop table if exists T_FB_SubjectDeptment;

drop table if exists T_FB_SubjectPost;

drop table if exists T_FB_SubjectType;

drop table if exists T_FB_SystemSettings;

drop table if exists T_FB_TravelExpApplyDetail;

drop table if exists T_FB_TravelExpApplyMaster;

drop table if exists T_FB_WFBudgetAccount;

drop table if exists T_FB_WFPersonAccount;

drop table if exists T_FB_WFSubjectSetting;

drop table if exists T_FLOW_CUSTOMFLOWDEFINE;

drop index IDX_RECEIVEUSER on T_FLOW_ENGINEMSGLIST;

drop table if exists T_FLOW_ENGINEMSGLIST;

drop table if exists T_FLOW_ENGINENOTES;

drop table if exists T_FLOW_ENGINEPREFIX;

drop table if exists T_FLOW_EVENTTRIGGER;

drop table if exists T_FLOW_FLOWPROCESSDEFINE;

drop table if exists T_FLOW_FLOWTRIGGER;

drop table if exists T_FLOW_MSGBODYDEFINE;

drop table if exists T_FLOW_MSGDEFINE;

drop table if exists T_FLOW_TIMINGEVENTTRIGGER;

drop table if exists T_HR_AdjustLeave;

drop table if exists T_HR_AreaAllowance;

drop table if exists T_HR_AreaCity;

drop table if exists T_HR_AreaDifference;

drop table if exists T_HR_AssessmentFormDetail;

drop table if exists T_HR_AssessmentFormMaster;

drop table if exists T_HR_AttendFreeLeave;

drop table if exists T_HR_AttendMachineSet;

drop table if exists T_HR_AttendMonthlyBalance;

drop table if exists T_HR_AttendMonthlyBatchBalance;

drop table if exists T_HR_AttendMonthlyLeave;

drop table if exists T_HR_AttendYearlyBalance;

drop table if exists T_HR_AttendanceDeductDetail;

drop table if exists T_HR_AttendanceDeductMaster;

drop table if exists T_HR_AttendanceRecord;

drop table if exists T_HR_AttendanceSolution;

drop table if exists T_HR_AttendanceSolutionAsign;

drop table if exists T_HR_AttendanceSolutionDeduct;

drop table if exists T_HR_BlackList;

drop table if exists T_HR_CheckCategorySet;

drop table if exists T_HR_CheckModelDefine;

drop table if exists T_HR_CheckPointLevelSet;

drop table if exists T_HR_CheckPointSet;

drop table if exists T_HR_CheckProjectSet;

drop table if exists T_HR_Company;

drop table if exists T_HR_CompanyHistory;

drop table if exists T_HR_CustomGuerdon;

drop table if exists T_HR_CustomGuerdonArchive;

drop table if exists T_HR_CustomGuerdonArchiveHis;

drop table if exists T_HR_CustomGuerdonRecord;

drop table if exists T_HR_CustomGuerdonSet;

drop table if exists T_HR_Department;

drop table if exists T_HR_DepartmentDictionary;

drop table if exists T_HR_DepartmentHistory;

drop table if exists T_HR_EMPLOYEE;

drop table if exists T_HR_EMPLOYEEPOST;

drop table if exists T_HR_EMPLOYEEPOSTHISTORY;

drop table if exists T_HR_EducateHistory;

drop table if exists T_HR_EmployeeAbnormRecord;

drop table if exists T_HR_EmployeeAddSum;

drop table if exists T_HR_EmployeeAddSumBatch;

drop table if exists T_HR_EmployeeCancelLeave;

drop table if exists T_HR_EmployeeCheck;

drop table if exists T_HR_EmployeeClockInRecord;

drop table if exists T_HR_EmployeeContract;

drop table if exists T_HR_EmployeeEntry;

drop table if exists T_HR_EmployeeEvectionRecord;

drop table if exists T_HR_EmployeeEvectionReport;

drop table if exists T_HR_EmployeeInsurance;

drop table if exists T_HR_EmployeeLeaveRecord;

drop table if exists T_HR_EmployeeLevelDayCount;

drop table if exists T_HR_EmployeeLevelDayDetails;

drop table if exists T_HR_EmployeeLoginRecord;

drop table if exists T_HR_EmployeeOverTimeDetailRd;

drop table if exists T_HR_EmployeeOverTimeRecord;

drop table if exists T_HR_EmployeePostChange;

drop table if exists T_HR_EmployeeSalaryRecord;

drop table if exists T_HR_EmployeeSalaryRecordItem;

drop table if exists T_HR_EmployeeSignInDetail;

drop table if exists T_HR_EmployeeSignInRecord;

drop table if exists T_HR_Experience;

drop table if exists T_HR_FamilyMember;

drop table if exists T_HR_FreeLeaveDaySet;

drop table if exists T_HR_ImportSetDetail;

drop table if exists T_HR_ImportSetMaster;

drop table if exists T_HR_KPIPointDefine;

drop table if exists T_HR_KPIRecord;

drop table if exists T_HR_KPIRecordAppeal;

drop table if exists T_HR_KPIRecordPersonSummary;

drop table if exists T_HR_LeaveTypeSet;

drop table if exists T_HR_LeftOffice;

drop table if exists T_HR_LeftOfficeConfirm;

drop table if exists T_HR_OrgCheckSummary;

drop table if exists T_HR_OrganizationCheckModel;

drop table if exists T_HR_OutPlanDays;

drop table if exists T_HR_OvertimeReward;

drop table if exists T_HR_PensionAlarmSet;

drop table if exists T_HR_PensionDetail;

drop table if exists T_HR_PensionMaster;

drop table if exists T_HR_PerformanceRewardRecord;

drop table if exists T_HR_PerformanceRewardSet;

drop table if exists T_HR_Post;

drop table if exists T_HR_PostDictionary;

drop table if exists T_HR_PostHistory;

drop table if exists T_HR_PostLevelDistinction;

drop table if exists T_HR_RelationPost;

drop table if exists T_HR_Resume;

drop table if exists T_HR_SalaryArchive;

drop table if exists T_HR_SalaryArchiveHis;

drop table if exists T_HR_SalaryArchiveHisItem;

drop table if exists T_HR_SalaryArchiveItem;

drop table if exists T_HR_SalaryItem;

drop table if exists T_HR_SalaryLevel;

drop table if exists T_HR_SalaryRecordBatch;

drop table if exists T_HR_SalarySolution;

drop table if exists T_HR_SalarySolutionAssign;

drop table if exists T_HR_SalarySolutionItem;

drop table if exists T_HR_SalarySolutionStandard;

drop table if exists T_HR_SalaryStandard;

drop table if exists T_HR_SalaryStandardItem;

drop table if exists T_HR_SalarySystem;

drop table if exists T_HR_SalaryTaxes;

drop table if exists T_HR_SampleTable;

drop table if exists T_HR_SampleTable2;

drop table if exists T_HR_SchedulingTemplateDetail;

drop table if exists T_HR_SchedulingTemplateMaster;

drop table if exists T_HR_ShiftDefine;

drop table if exists T_HR_SpotCheckGroup;

drop table if exists T_HR_SpotChecker;

drop table if exists T_HR_StandRewardArchive;

drop table if exists T_HR_StandRewardArchiveHis;

drop table if exists T_HR_StandardPerformanceReward;

drop table if exists T_HR_SystemSetting;

drop table if exists T_HR_SystemSetting2;

drop table if exists T_HR_VacationSet;

drop table if exists T_OA_ACCIDENTRECORD;

drop table if exists T_OA_APPROVALINFO;

drop table if exists T_OA_ARCHIVES;

drop table if exists T_OA_AgentDateSet;

drop table if exists T_OA_AgentSet;

drop table if exists T_OA_AreaAllowance;

drop table if exists T_OA_AreaCity;

drop table if exists T_OA_AreaDifference;

drop table if exists T_OA_BUSINESSREPORT;

drop table if exists T_OA_BUSINESSREPORT2;

drop table if exists T_OA_BUSINESSREPORTDETAIL;

drop table if exists T_OA_BUSINESSTRIP;

drop table if exists T_OA_BUSINESSTRIP2;

drop table if exists T_OA_BUSINESSTRIPDETAIL;

drop table if exists T_OA_CALENDAR;

drop table if exists T_OA_CANTAKETHEPLANELINE;

drop table if exists T_OA_CONSERVATION;

drop table if exists T_OA_CONTRACTAPP;

drop table if exists T_OA_CONTRACTPRINT;

drop table if exists T_OA_CONTRACTTEMPLATE;

drop table if exists T_OA_CONTRACTTYPE;

drop table if exists T_OA_CONTRACTVIEW;

drop table if exists T_OA_COSTRECORD;

drop table if exists T_OA_ConservationRecord;

drop table if exists T_OA_DISTRIBUTEUSER;

drop table if exists T_OA_GRADED;

drop table if exists T_OA_HIREAPP;

drop table if exists T_OA_HOUSEINFO;

drop table if exists T_OA_HOUSEINFOISSUANCE;

drop table if exists T_OA_HOUSELIST;

drop table if exists T_OA_HireRecord;

drop table if exists T_OA_LENDARCHIVES;

drop table if exists T_OA_LICENSEDETAIL;

drop table if exists T_OA_LICENSEMASTER;

drop table if exists T_OA_LICENSEUSER;

drop table if exists T_OA_MAINTENANCEAPP;

drop table if exists T_OA_MAINTENANCERECORD;

drop table if exists T_OA_MEETINGCONTENT;

drop table if exists T_OA_MEETINGINFO;

drop table if exists T_OA_MEETINGMESSAGE;

drop table if exists T_OA_MEETINGROOM;

drop table if exists T_OA_MEETINGROOMAPP;

drop table if exists T_OA_MEETINGROOMTIMECHANGE;

drop table if exists T_OA_MEETINGSTAFF;

drop table if exists T_OA_MEETINGTEMPLATE;

drop table if exists T_OA_MEETINGTIMECHANGE;

drop table if exists T_OA_MEETINGTYPE;

drop table if exists T_OA_ORDERMEAL;

drop table if exists T_OA_ORGANIZATION;

drop table if exists T_OA_PRIORITIES;

drop table if exists T_OA_PROGRAMAPPLICATIONS;

drop table if exists T_OA_REIMBURSEMENTDETAIL;

drop table if exists T_OA_REQUIRE;

drop table if exists T_OA_REQUIREDETAIL;

drop table if exists T_OA_REQUIREDETAIL2;

drop table if exists T_OA_REQUIREMASTER;

drop table if exists T_OA_REQUIRERESULT;

drop table if exists T_OA_RequireDistribute;

drop table if exists T_OA_SENDDOC;

drop table if exists T_OA_SENDDOCTEMPLATE;

drop table if exists T_OA_SENDDOCTYPE;

drop table if exists T_OA_SatisfactionDetail;

drop table if exists T_OA_SatisfactionDistribute;

drop table if exists T_OA_SatisfactionMaster;

drop table if exists T_OA_SatisfactionRequire;

drop table if exists T_OA_SatisfactionResult;

drop table if exists T_OA_TAKETHESTANDARDTRANSPORT;

drop table if exists T_OA_TRAVELREIMBURSEMENT;

drop table if exists T_OA_TRAVELSOLUTIONS;

drop table if exists T_OA_VEHICLE;

drop table if exists T_OA_VEHICLECARD;

drop table if exists T_OA_VEHICLEDISPATCH;

drop table if exists T_OA_VEHICLEDISPATCHDETAIL;

drop table if exists T_OA_VEHICLEUSEAPP;

drop table if exists T_OA_VehicledispatchRecord;

drop table if exists T_OA_WELFAREDETAIL;

drop table if exists T_OA_WELFAREDISTRIBUTEDETAIL;

drop table if exists T_OA_WELFAREDISTRIBUTEMASTER;

drop table if exists T_OA_WELFAREDISTRIBUTEUNDO;

drop table if exists T_OA_WELFAREMASERT;

drop table if exists T_OA_WORKRECORD;

drop table if exists T_PF_News;

drop table if exists T_PF_NewsComment;

drop table if exists T_PF_NewsType;

drop table if exists T_PF_PlatformConfig;

drop table if exists T_PF_ProjectConfig;

drop table if exists T_PF_UserConfig;

drop table if exists T_PF_UserConfigRelevance;

drop table if exists T_SYS_DICTIONARY;

drop table if exists T_SYS_EntityMenu;

drop table if exists T_SYS_EntityMenuCustomPerm;

drop table if exists T_SYS_FBADMIN;

drop table if exists T_SYS_FBADMINROLE;

drop table if exists T_SYS_FILEUPLOAD;

drop table if exists T_SYS_Permission;

drop table if exists T_SYS_Role;

drop table if exists T_SYS_RoleEntityMenu;

drop table if exists T_SYS_RoleMenuPermission;

drop table if exists T_SYS_USer;

drop table if exists T_SYS_USerActLog;

drop table if exists T_SYS_USerDataLog;

drop table if exists T_SYS_UserLoginRecord;

drop table if exists T_SYS_UserLoginRecordHis;

drop table if exists T_SYS_UserRole;

drop table if exists T_WF_DOTASK;

drop table if exists T_WF_DOTASKMESSAGE;

drop table if exists T_WF_DOTASKRULE;

drop table if exists T_WF_DOTASKRULEDETAIL;

drop table if exists T_WF_ENGINEPREFIX;

drop table if exists T_WF_MESSAGEBODYDEFINE;

drop table if exists T_WF_MESSAGEDEFINE;

drop table if exists T_WF_SMSRECORD;

drop table if exists T_WF_TIMINGTRIGGERACTIVITY;

drop table if exists T_WF_TIMINGTRIGGERCONFIG;

drop table if exists T_WF_TIMINGTRIGGERRECORD;

drop table if exists area;

drop table if exists city;

/*==============================================================*/
/* Table: 1                                                     */
/*==============================================================*/
create table 1
(
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE'
);

/*==============================================================*/
/* Table: 12                                                    */
/*==============================================================*/
create table 12
(
   EmployeeID           varchar(50) not null,
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE'
);

/*==============================================================*/
/* Table: Flow_Consultation_T                                   */
/*==============================================================*/
create table Flow_Consultation_T
(
   ConsultationID       NVARCHAR2(50) not null,
   FlowRecordDetailID   NVARCHAR2(50),
   ConsultationUserID   NVARCHAR2(50),
   ConsultationUserName NVARCHAR2(200),
   ConsultationContent  NVARCHAR2(200),
   ConsultationDate     DATE,
   ReplyUserID          NVARCHAR2(50),
   ReplyUserName        NVARCHAR2(200),
   ReplyContent         NVARCHAR2(200),
   ReplyDate            DATE,
   Flag                 NVARCHAR2(50) comment '0δ�ظ���1�ظ�',
   primary key (ConsultationID)
);

alter table Flow_Consultation_T comment '��ѯ';

/*==============================================================*/
/* Table: Flow_FlowCategory                                     */
/*==============================================================*/
create table Flow_FlowCategory
(
   FlowCategoryID       NVARCHAR2(50) not null comment '���̷���ID',
   FlowCategoryDesc     NVARCHAR2(50) not null comment '���̷�������',
   primary key (FlowCategoryID)
);

alter table Flow_FlowCategory comment '���̷����';

/*==============================================================*/
/* Table: Flow_FlowDefine_T                                     */
/*==============================================================*/
create table Flow_FlowDefine_T
(
   FlowDefineID         NVARCHAR2(50) not null comment '���̶���ID',
   FlowCode             NVARCHAR2(50) not null comment '���̴���',
   Description          NVARCHAR2(50) not null comment '��������',
   Xoml                 CLOB not null comment 'ģ���ļ�',
   Rules                CLOB comment 'ģ�͹���',
   Layout               CLOB not null comment 'ģ�Ͳ���',
   FlowType             NVARCHAR2(1) not null default '0' comment '�������� -- 0:��������, 1:��������',
   CreateUserID         NVARCHAR2(50) not null comment '������ID',
   CreateUserName       NVARCHAR2(50) not null comment '��������',
   CreateCompanyID      NVARCHAR2(50) not null comment '������˾ID',
   CreateDepartmentID   NVARCHAR2(50) not null comment '��������ID',
   CreatePostID         NVARCHAR2(50) not null comment '������λID',
   CreateDate           DATE not null comment '����ʱ��',
   EditUserID           NVARCHAR2(50) comment '�޸���ID',
   EditUserName         NVARCHAR2(50) comment '�޸����û���',
   EditDate             DATE comment '�޸�ʱ��',
   WFLAYOUT             CLOB comment '���̶����ļ�',
   SystemCode           NVARCHAR2(50) comment 'ҵ��ϵͳ:OA,HR,TM��',
   BusinessObject       NVARCHAR2(50) comment 'ҵ����󣺸������뱨����',
   primary key (FlowCode)
);

alter table Flow_FlowDefine_T comment '����ģ�Ͷ����';

/*==============================================================*/
/* Table: Flow_FlowRecordDetail_T                               */
/*==============================================================*/
create table Flow_FlowRecordDetail_T
(
   FlowRecordDetailID   NVARCHAR2(50) not null,
   FlowRecordMasterID   NVARCHAR2(50) not null,
   StateCode            NVARCHAR2(50) not null,
   ParentStateID        NVARCHAR2(50) not null,
   Content              NVARCHAR2(200),
   CheckState           NVARCHAR2(1) not null default '2' comment 'ͬ�⣺1����ͬ��:0 ,δ����:2����ǩͬ��7����ǩ��ͬ��8',
   Flag                 NVARCHAR2(1) not null default '0' comment '��������1��δ����:0',
   CreateUserID         NVARCHAR2(50) not null,
   CreateUserName       NVARCHAR2(50) not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   CreateDate           DATE not null default 'SYSDATE',
   EditUserID           NVARCHAR2(50) not null,
   EditUserName         NVARCHAR2(50) not null,
   EditCompanyID        NVARCHAR2(50),
   EditDepartmentID     NVARCHAR2(50),
   EditPostID           NVARCHAR2(50),
   EditDate             DATE,
   AgentUserID          NVARCHAR2(50),
   AgentUserName        NVARCHAR2(50),
   AgentEditDate        DATE,
   primary key (FlowRecordDetailID)
);

alter table Flow_FlowRecordDetail_T comment '����������ϸ��';

/*==============================================================*/
/* Table: Flow_FlowRecordMaster_T                               */
/*==============================================================*/
create table Flow_FlowRecordMaster_T
(
   FlowRecordMasterID   NVARCHAR2(50) not null,
   InstanceID           NVARCHAR2(50) not null,
   FlowSelectType       NVARCHAR2(1) not null default '0' comment '0:�̶����̣�1����ѡ����',
   ModelCode            NVARCHAR2(50) not null,
   FlowCode             NVARCHAR2(50) not null,
   FormID               NVARCHAR2(50) not null,
   FlowType             NVARCHAR2(1) not null default '0' comment '0:�������̣�1����������',
   CheckState           NVARCHAR2(1) not null default '1' comment '1:�����У�2������ͨ����3������ͨ����5����(Ϊ���ֵ䱣��һ��)',
   CreateUserID         NVARCHAR2(50) not null,
   CreateUserName       NVARCHAR2(50) not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   CreateDate           DATE not null default 'SYSDATE',
   EditUserID           NVARCHAR2(50) not null,
   EditUserName         NVARCHAR2(50) not null,
   EditDate             DATE,
   ActiveRole           CLOB,
   BusinessObject       CLOB,
   KPITimeXML           CLOB,
   primary key (FlowRecordMasterID)
);

alter table Flow_FlowRecordMaster_T comment '��������ʵ����';

/*==============================================================*/
/* Table: Flow_FlowToCategory                                   */
/*==============================================================*/
create table Flow_FlowToCategory
(
   FlowCategoryID       NVARCHAR2(50) not null comment '���̷���ID',
   FlowCode             NVARCHAR2(50) not null comment '���̴���',
   primary key (FlowCategoryID, FlowCode)
);

alter table Flow_FlowToCategory comment '����������ϵ��';

/*==============================================================*/
/* Table: Flow_ModelDefine_T                                    */
/*==============================================================*/
create table Flow_ModelDefine_T
(
   ModelDefineID        NVARCHAR2(50) not null comment 'ģ��ID',
   SystemCode           NVARCHAR2(50) not null comment 'ϵͳ����',
   ModelCode            NVARCHAR2(50) not null comment 'ģ�����',
   ParentModelCode      NVARCHAR2(50) comment '�ϼ�ģ�����',
   Description          NVARCHAR2(100) not null comment 'ģ������',
   CreateUserID         NVARCHAR2(50) not null comment '������ID',
   CreateUserName       NVARCHAR2(50) not null comment '��������',
   CreateCompanyID      NVARCHAR2(50) not null comment '������˾ID',
   CreateDepartmentID   NVARCHAR2(50) not null comment '��������ID',
   CreatePostID         NVARCHAR2(50) not null comment '������λID',
   CreateDate           DATE not null comment '����ʱ��',
   EditUserID           NVARCHAR2(50) comment '�޸���ID',
   EditUserName         NVARCHAR2(50) comment '�޸����û���',
   EditDate             DATE comment '�޸�ʱ��',
   primary key (ModelCode)
);

alter table Flow_ModelDefine_T comment 'ģ�鶨���';

/*==============================================================*/
/* Table: Flow_ModelFlowRelation_T                              */
/*==============================================================*/
create table Flow_ModelFlowRelation_T
(
   ModelFlowRelationID  NVARCHAR2(50) not null comment '����ID',
   CompanyID            NVARCHAR2(50) not null comment '��˾ID',
   DepartMentID         NVARCHAR2(50) comment '����ID',
   CompanyName          NVARCHAR2(50) comment '��˾����',
   DepartMentName       NVARCHAR2(50) comment '��������',
   SystemCode           NVARCHAR2(50) comment 'ϵͳ����',
   ModelCode            NVARCHAR2(50) not null comment 'ģ�����',
   FlowCode             NVARCHAR2(50) not null comment '���̴���',
   Flag                 NVARCHAR2(1) not null comment '1����ã�0Ϊ������',
   FlowType             NVARCHAR2(1) not null default '0' comment '0:�������̣�1����������',
   CreateUserID         NVARCHAR2(50) not null comment '������ID',
   CreateUserName       NVARCHAR2(50) not null comment '��������',
   CreateCompanyID      NVARCHAR2(50) not null comment '������˾ID',
   CreateDepartmentID   NVARCHAR2(50) not null comment '��������ID',
   CreatePostID         NVARCHAR2(50) not null comment '������λID',
   CreateDate           DATE not null comment '����ʱ��',
   EditUserID           NVARCHAR2(50) comment '�޸���ID',
   EditUserName         NVARCHAR2(50) comment '�޸����û���',
   EditDate             DATE comment '�޸�ʱ��',
   primary key (ModelFlowRelationID)
);

alter table Flow_ModelFlowRelation_T comment 'ģ�������̶��������';

/*==============================================================*/
/* Table: Flow_Rules                                            */
/*==============================================================*/
create table Flow_Rules
(
   RulesID              NVARCHAR2(50) not null comment '����ID',
   FlowCode             NVARCHAR2(50) comment '���̴���',
   ConditionName        NVARCHAR2(50) comment '��������',
   Operate              NVARCHAR2(50) comment '�Ƚϲ���',
   CompareValue         NVARCHAR2(50) comment '�Ƚ�ֵ',
   primary key (RulesID)
);

alter table Flow_Rules comment '�����';

/*==============================================================*/
/* Table: PROVINCE                                              */
/*==============================================================*/
create table PROVINCE
(
   cityID               NVARCHAR2(8),
   city                 NVARCHAR2(20)
);

/*==============================================================*/
/* Table: TRIGGERLOG                                            */
/*==============================================================*/
create table TRIGGERLOG
(
   TRIIGERID            NVARCHAR2(50) not null comment '����ID',
   TRIGERUSER           NVARCHAR2(50) comment '�����û�',
   TRIGGERDATA          DATE not null comment '��������',
   TRIGGERSTATUS        NVARCHAR2(50) comment '����״̬',
   AUTOREFLESH          NVARCHAR2(50) comment '�Զ�ˢ��',
   LISTCOUNT            NVARCHAR2(50) comment '�б���',
   TOP                  NVARCHAR2(50) comment 'TOP',
   primary key (TRIIGERID)
)
pctfree 10
initrans 1
storage
(
    initial 64K
    minextents 1
    maxextents unlimited
)
tablespace USERS
logging
monitoring
 noparallel;

alter table TRIGGERLOG comment '������־��';

/*==============================================================*/
/* Table: T_FB_BorrowApplyDetail                                */
/*==============================================================*/
create table T_FB_BorrowApplyDetail
(
   BorrowApplyDetailID  NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50) not null,
   BorrowApplyMasterID  NVARCHAR2(50),
   ChargeType           INT comment '1�����ˣ� 2������',
   UsableMoney          NUMBER,
   Remark               NVARCHAR2(200),
   BorrowMoney          NUMBER not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   UnRepayMoney         NUMBER,
   primary key (BorrowApplyDetailID)
);

/*==============================================================*/
/* Table: T_FB_BorrowApplyMaster                                */
/*==============================================================*/
create table T_FB_BorrowApplyMaster
(
   BorrowApplyMasterID  NVARCHAR2(50) not null,
   ExtensionalOrderID   NVARCHAR2(50),
   BorrowApplyMasterCode NVARCHAR2(50) not null,
   RepayType            INT not null comment '1��ͨ���
            2���ý���
            3ר����
            
            ',
   PlanRepayDate        DATE,
   TotalMoney           NUMBER not null,
   Remark               NVARCHAR2(2000),
   IsRepaied            INT comment '0: ��δ����
            1 : �ѻ���
            ',
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   Receiver             NVARCHAR2(50),
   Bank                 NVARCHAR2(50),
   BankAccout           NVARCHAR2(50),
   PayTarget            INT comment '1 : ������
            2 : �����ʺ�',
   PAYMENTINFO          NVARCHAR2(2000),
   primary key (BorrowApplyMasterID)
);

/*==============================================================*/
/* Table: T_FB_BudgetAccount                                    */
/*==============================================================*/
create table T_FB_BudgetAccount
(
   BudgetAccountID      NVARCHAR2(50) not null,
   AccountObjectType    INT comment '1 : ��˾, 2 : ����, 3 : ����',
   BudgetYear           INT,
   BudgetMonth          INT,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerID              NVARCHAR2(50),
   OwnerPostID          NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   BudgetMoney          NUMBER,
   UsableMoney          NUMBER,
   ActualMoney          NUMBER,
   PaiedMoney           NUMBER,
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE,
   primary key (BudgetAccountID)
);

/*==============================================================*/
/* Table: T_FB_BudgetCheck                                      */
/*==============================================================*/
create table T_FB_BudgetCheck
(
   BudgetCheckID        NVARCHAR2(50) not null,
   BudgetCheckDate      DATE not null,
   AccountObjectType    INT comment '1 : ��˾ , 2 : ���� ',
   BudgetYear           INT,
   BudgetMonth          INT,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50),
   OwnerID              NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   BudgetMoney          NUMBER,
   ActualMoney          NUMBER,
   UsableMoney          NUMBER,
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE,
   YearBudgetMoney      NUMBER,
   YearTotalBudgetMoney NUMBER,
   primary key (BudgetCheckID)
);

/*==============================================================*/
/* Table: T_FB_ChargeApplyDetail                                */
/*==============================================================*/
create table T_FB_ChargeApplyDetail
(
   ChargeApplyDetailID  NVARCHAR2(50) not null,
   SerialNumber         int,
   SubjectID            NVARCHAR2(50) not null,
   ChargeApplyMasterID  NVARCHAR2(50),
   BorrowApplyDetailID  NVARCHAR2(50),
   ChargeType           int comment '1�����ˣ� 2������',
   UsableMoney          NUMBER,
   RepayMoney           NUMBER,
   Remark               NVARCHAR2(200),
   ChargeMoney          NUMBER not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   primary key (ChargeApplyDetailID)
);

/*==============================================================*/
/* Table: T_FB_ChargeApplyMaster                                */
/*==============================================================*/
create table T_FB_ChargeApplyMaster
(
   ChargeApplyMasterID  NVARCHAR2(50) not null,
   ExtensionalOrderID   NVARCHAR2(50),
   BorrowApplyMasterID  NVARCHAR2(50),
   ChargeApplyMasterCode NVARCHAR2(50) not null,
   BudgetaryMonth       DATE not null,
   PayType              INT not null comment '1���˷��ñ�����2���3��Ԥ���4���ͻ��5����',
   Remark               NVARCHAR2(2000),
   TotalMoney           NUMBER not null,
   Repayment            NUMBER,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   Receiver             NVARCHAR2(50),
   Bank                 NVARCHAR2(50),
   BankAccout           NVARCHAR2(50),
   PayTarget            INT comment '1 : ������
            2 : �����ʺ�',
   PAYMENTINFO          NVARCHAR2(2000),
   primary key (ChargeApplyMasterID)
);

/*==============================================================*/
/* Table: T_FB_ChargeByRepay                                    */
/*==============================================================*/
create table T_FB_ChargeByRepay
(
   ChargeByRepayID      NVARCHAR2(50) not null,
   ChargeApplyMasterID  NVARCHAR2(50),
   RepayType            INT not null comment '1�ֽ���ͨ���
            2�ֽ𻹱��ý���
            3�ֽ�ר����
            
            ',
   ProjectedRepayDate   DATE,
   SpecialBorrowMoney   NUMBER,
   SimpleBorrowMoney    NUMBER,
   BackupBorrowMoney    NUMBER,
   TotalMoney           NUMBER not null,
   Remark               NVARCHAR2(2000),
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   primary key (ChargeByRepayID)
);

/*==============================================================*/
/* Table: T_FB_CompanyBudgetApplyDetail                         */
/*==============================================================*/
create table T_FB_CompanyBudgetApplyDetail
(
   CompanyBudgetApplyDetailID NVARCHAR2(50) not null,
   CompanyBudgetApplyMasterID NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   BudgetMoney          NUMBER not null,
   AuditBudgetMoney     NUMBER,
   DistributedMondey    NUMBER,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   LastBudgetMoney      NUMBER not null,
   Remark               NVARCHAR2(200),
   primary key (CompanyBudgetApplyDetailID)
);

/*==============================================================*/
/* Table: T_FB_CompanyBudgetApplyMaster                         */
/*==============================================================*/
create table T_FB_CompanyBudgetApplyMaster
(
   CompanyBudgetApplyMasterID NVARCHAR2(50) not null,
   CompanyBudgetApplyMasterCode NVARCHAR2(50),
   BudgetYear           INT,
   Remark               NVARCHAR2(2000),
   BudgetMoney          NUMBER,
   AuditBudgetMoney     NUMBER,
   DistributedMondey    NUMBER,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   IsValid              NVARCHAR2(10) comment '0: δ�����ύ�� 1����Ч�� 2������Ч',
   CompanyBudgetSumMasterID NVARCHAR2(50) comment '�����ֶ�',
   primary key (CompanyBudgetApplyMasterID)
);

/*==============================================================*/
/* Table: T_FB_CompanyBudgetModDetail                           */
/*==============================================================*/
create table T_FB_CompanyBudgetModDetail
(
   CompanyBudgetModDetailID NVARCHAR2(50) not null,
   CompanyBudgetModMasterID NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   UsableMoney          NUMBER,
   AuditBudgetMoney     NUMBER,
   BudgetMoney          NUMBER not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   OwnerDepartmentID    NVARCHAR2(50),
   Remark               NVARCHAR2(200),
   primary key (CompanyBudgetModDetailID)
);

/*==============================================================*/
/* Table: T_FB_CompanyBudgetModMaster                           */
/*==============================================================*/
create table T_FB_CompanyBudgetModMaster
(
   CompanyBudgetModMasterID NVARCHAR2(50) not null,
   CompanyBudgetModMasterCode NVARCHAR2(50),
   BudgetYear           INT,
   Remark               NVARCHAR2(2000),
   AuditBudgetMoney     NUMBER,
   BudgetMoney          NUMBER,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   primary key (CompanyBudgetModMasterID)
);

/*==============================================================*/
/* Table: T_FB_CompanyBudgetSumDetail                           */
/*==============================================================*/
create table T_FB_CompanyBudgetSumDetail
(
   CompanyBudgetSumDetailID NVARCHAR2(50) not null,
   CompanyBudgetApplyMasterID NVARCHAR2(50),
   CompanyBudgetSumMasterID NVARCHAR2(50),
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   primary key (CompanyBudgetSumDetailID)
);

/*==============================================================*/
/* Table: T_FB_CompanyBudgetSumMaster                           */
/*==============================================================*/
create table T_FB_CompanyBudgetSumMaster
(
   CompanyBudgetSumMasterID NVARCHAR2(50) not null,
   CompanyBudgetSumMasterCode NVARCHAR2(50),
   BudgetYear           INT,
   Remark               NVARCHAR2(2000),
   BudgetMoney          NUMBER,
   AuditBudgetMoney     NUMBER,
   DistributedMondey    NUMBER,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   SUMSETTINGSMASTERID  NVARCHAR2(50),
   PARENTID             NVARCHAR2(50),
   primary key (CompanyBudgetSumMasterID)
);

/*==============================================================*/
/* Table: T_FB_CompanyTransferDetail                            */
/*==============================================================*/
create table T_FB_CompanyTransferDetail
(
   CompanyTransferDetailID NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50),
   CompanyTransferMasterID NVARCHAR2(50),
   UsableMoney          NUMBER,
   TransferMoney        NUMBER not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   primary key (CompanyTransferDetailID)
);

/*==============================================================*/
/* Table: T_FB_CompanyTransferMaster                            */
/*==============================================================*/
create table T_FB_CompanyTransferMaster
(
   CompanyTransferMasterID NVARCHAR2(50) not null,
   CompanyTransferMasterCode NVARCHAR2(50),
   BudgetYear           INT,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   Remark               NVARCHAR2(2000),
   AuditTransferMoney   NUMBER,
   TransferMoney        NUMBER,
   TransferFrom         NVARCHAR2(50),
   TransferTo           NVARCHAR2(50),
   TransferFromType     INT comment '1 : ��˾ ; 2: ���� ; 3: ����',
   TransferToType       INT comment '1 : ��˾ ; 2: ���� ; 3: ����',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   primary key (CompanyTransferMasterID)
);

/*==============================================================*/
/* Table: T_FB_DeptBudgetAddDetail                              */
/*==============================================================*/
create table T_FB_DeptBudgetAddDetail
(
   DeptBudgetAddDetailID NVARCHAR2(50) not null,
   DeptBudgetAddMasterID NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   BudgetMoney          NUMBER not null,
   AuditBudgetMoney     NUMBER,
   PersonBudgetMoney    NUMBER,
   TotalBudgetMoney     NUMBER,
   UsableMoney          NUMBER,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   Remark               NVARCHAR2(200),
   primary key (DeptBudgetAddDetailID)
);

/*==============================================================*/
/* Table: T_FB_DeptBudgetAddMaster                              */
/*==============================================================*/
create table T_FB_DeptBudgetAddMaster
(
   DeptBudgetAddMasterID NVARCHAR2(50) not null,
   DeptBudgetAddMasterCode NVARCHAR2(50),
   BudgetaryMonth       DATE not null,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   Remark               NVARCHAR2(2000),
   AuditBudgetMoney     NUMBER,
   BudgetCharge         NUMBER,
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   primary key (DeptBudgetAddMasterID)
);

/*==============================================================*/
/* Table: T_FB_DeptBudgetApplyDetail                            */
/*==============================================================*/
create table T_FB_DeptBudgetApplyDetail
(
   DeptBudgetApplyDetailID NVARCHAR2(50) not null,
   DeptBudgetApplyMasterID NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   PersonBudgetApplyMasterID NVARCHAR2(50),
   SerialNumber         INT,
   UsableMoney          NUMBER,
   BudgetMoney          NUMBER not null,
   AuditBudgetMoney     NUMBER,
   LastBudgeMoney       NUMBER,
   LastActualBudgetMoney NUMBER,
   BeginningBudgetBalance NUMBER,
   YearBudgetBalance    NUMBER,
   PersonBudgetMoney    NUMBER,
   TotalBudgetMoney     NUMBER,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   Remark               NVARCHAR2(200),
   primary key (DeptBudgetApplyDetailID)
);

/*==============================================================*/
/* Table: T_FB_DeptBudgetApplyMaster                            */
/*==============================================================*/
create table T_FB_DeptBudgetApplyMaster
(
   DeptBudgetApplyMasterID NVARCHAR2(50) not null,
   DeptBudgetApplyMasterCode NVARCHAR2(50),
   BudgetaryMonth       DATE not null,
   AppliedType          INT comment '1 : Ԥ������ 2: ��������',
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   Remark               NVARCHAR2(2000),
   BudgetMoney          NUMBER,
   AuditBudgetMoney     NUMBER,
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   IsValid              NVARCHAR2(10) comment '0: δ�����ύ�� 1����Ч�� 2������Ч',
   DeptBudgetSumMasterID NVARCHAR2(50) comment '�����ֶ�',
   primary key (DeptBudgetApplyMasterID)
);

/*==============================================================*/
/* Table: T_FB_DeptBudgetSumDetail                              */
/*==============================================================*/
create table T_FB_DeptBudgetSumDetail
(
   DeptBudgetSumDetailID NVARCHAR2(50) not null,
   DeptBudgetSumMasterID NVARCHAR2(50),
   DeptBudgetApplyMasterID NVARCHAR2(50),
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   primary key (DeptBudgetSumDetailID)
);

/*==============================================================*/
/* Table: T_FB_DeptBudgetSumMaster                              */
/*==============================================================*/
create table T_FB_DeptBudgetSumMaster
(
   DeptBudgetSumMasterID NVARCHAR2(50) not null,
   DeptBudgetSumMasterCode NVARCHAR2(50),
   BudgetaryMonth       DATE not null,
   AppliedType          INT comment '1 : Ԥ������ 2: ��������',
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   Remark               NVARCHAR2(2000),
   BudgetMoney          NUMBER,
   AuditBudgetMoney     NUMBER,
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   SUMSETTINGSMASTERID  NVARCHAR2(50),
   PARENTID             NVARCHAR2(50),
   primary key (DeptBudgetSumMasterID)
);

/*==============================================================*/
/* Table: T_FB_DeptTransferDetail                               */
/*==============================================================*/
create table T_FB_DeptTransferDetail
(
   DeptTransferDetailID NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50),
   DeptTransferMasterID NVARCHAR2(50),
   UsableMoney          NUMBER,
   AuditTransferMoney   NUMBER,
   TransferMoney        NUMBER not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   Remark               NVARCHAR2(200),
   primary key (DeptTransferDetailID)
);

/*==============================================================*/
/* Table: T_FB_DeptTransferMaster                               */
/*==============================================================*/
create table T_FB_DeptTransferMaster
(
   DeptTransferMasterID NVARCHAR2(50) not null,
   DeptTransferMasterCode NVARCHAR2(50),
   BudgetaryMonth       DATE not null,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   Remark               NVARCHAR2(2000),
   AuditTransferMoney   NUMBER,
   TransferMoney        NUMBER,
   TransferFrom         NVARCHAR2(50),
   TransferTo           NVARCHAR2(50),
   TransferFromType     INT comment '1 : ��˾ ; 2: ���� ; 3: ����',
   TransferToType       INT comment '1 : ��˾ ; 2: ���� ; 3: ����',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   TransferFromName     NVARCHAR2(50),
   TransferToName       NVARCHAR2(50),
   TransferFromPostID   NVARCHAR2(50),
   TransferToPostID     NVARCHAR2(50),
   TransferFromPostName NVARCHAR2(50),
   TransferToPostName   NVARCHAR2(50),
   TransferFromDepartmentID NVARCHAR2(50),
   TransferToDepartmentID NVARCHAR2(50),
   TransferFromDepartmentName NVARCHAR2(50),
   TransferToDepartmentName NVARCHAR2(50),
   TransferFromCompanyID NVARCHAR2(50),
   TransferToCompanyID  NVARCHAR2(50),
   TransferFromCompanyName NVARCHAR2(50),
   TransferToCompanyName NVARCHAR2(50),
   primary key (DeptTransferMasterID)
);

/*==============================================================*/
/* Table: T_FB_ExtensionOrderDetail                             */
/*==============================================================*/
create table T_FB_ExtensionOrderDetail
(
   ExtensionOrderDetailID NVARCHAR2(50) not null,
   ExtensionalOrderID   NVARCHAR2(50),
   SubjectID            NVARCHAR2(50) not null,
   ChargeType           INT comment '1�����ˣ� 2������',
   UsableMoney          NUMBER,
   Remark               NVARCHAR2(200),
   AppliedMoney         NUMBER not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   primary key (ExtensionOrderDetailID)
);

/*==============================================================*/
/* Table: T_FB_ExtensionalOrder                                 */
/*==============================================================*/
create table T_FB_ExtensionalOrder
(
   ExtensionalOrderID   NVARCHAR2(50) not null,
   ExtensionalTypeID    NVARCHAR2(50),
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OrderID              NVARCHAR2(50),
   OrderCode            NVARCHAR2(50),
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   InnerOrderType       NVARCHAR2(50),
   InnerOrderID         NVARCHAR2(50),
   Receiver             NVARCHAR2(50),
   Bank                 NVARCHAR2(50),
   BankAccout           NVARCHAR2(50),
   PayTarget            INT comment '1 : ������
            2 : �����ʺ�',
   TotalMoney           NUMBER,
   ApplyType            INT comment '1,���ñ���
            2.���',
   Remark               NVARCHAR2(2000),
   InnerOrderCode       NVARCHAR2(50),
   PAYMENTINFO          NVARCHAR2(2000),
   primary key (ExtensionalOrderID)
);

/*==============================================================*/
/* Table: T_FB_ExtensionalType                                  */
/*==============================================================*/
create table T_FB_ExtensionalType
(
   ExtensionalTypeID    NVARCHAR2(50) not null,
   ExtensionalTypeCode  NVARCHAR2(50),
   ExtensionalTypeName  NVARCHAR2(50),
   Remark               NVARCHAR2(2000),
   ModelCode            NVARCHAR2(50),
   SystemCode           NVARCHAR2(50),
   primary key (ExtensionalTypeID)
);

/*==============================================================*/
/* Table: T_FB_OrderCode                                        */
/*==============================================================*/
create table T_FB_OrderCode
(
   OrderCodeID          NVARCHAR2(50),
   TableName            NVARCHAR2(50) not null,
   FieldName            NVARCHAR2(50) not null,
   PreName              NVARCHAR2(50),
   CurrentDate          DATE,
   RunningNumber        INT,
   Remark               NVARCHAR2(250),
   OrderCodeStyle       NVARCHAR2(100),
   UpdateDate           DATE,
   UpdateUserID         NVARCHAR2(50),
   CreatePostID         NVARCHAR2(50),
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   CreateCompanyID      NVARCHAR2(50),
   OwnerID              NVARCHAR2(50),
   OwnerPostID          NVARCHAR2(50),
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerCompanyID       NVARCHAR2(50),
   CreateDepartmentID   NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   CreateUserName       NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   primary key (TableName)
);

/*==============================================================*/
/* Table: T_FB_PersonAccount                                    */
/*==============================================================*/
create table T_FB_PersonAccount
(
   PersonAccountID      NVARCHAR2(50) not null,
   BorrowMoney          NUMBER,
   NextRepayDate        DATE comment '
            ',
   SpecialBorrowMoney   NUMBER,
   SimpleBorrowMoney    NUMBER,
   BackupBorrowMoney    NUMBER,
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50),
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerCompanyID       NVARCHAR2(50) not null,
   Remark               NVARCHAR2(2000),
   CreateCompanyID      NVARCHAR2(50),
   CreateDepartmentID   NVARCHAR2(50),
   CreatePostID         NVARCHAR2(50),
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE,
   primary key (PersonAccountID)
);

/*==============================================================*/
/* Table: T_FB_PersonBudgetAddDetail                            */
/*==============================================================*/
create table T_FB_PersonBudgetAddDetail
(
   PersonBudgetAddDetailID NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50),
   DeptBudgetAddDetailID NVARCHAR2(50),
   BudgetMoney          NUMBER,
   LimitBudgetMoney     NUMBER,
   UsableMoney          NUMBER,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   primary key (PersonBudgetAddDetailID)
);

/*==============================================================*/
/* Table: T_FB_PersonBudgetApplyDetail                          */
/*==============================================================*/
create table T_FB_PersonBudgetApplyDetail
(
   PersonBudgetApplyDetailID NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50),
   DeptBudgetApplyDetailID NVARCHAR2(50),
   BudgetMoney          NUMBER,
   LimitBudgetMoney     NUMBER,
   UsableMoney          NUMBER,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   Remark               NVARCHAR2(200),
   primary key (PersonBudgetApplyDetailID)
);

/*==============================================================*/
/* Table: T_FB_PersonMoneyAssignDetail                          */
/*==============================================================*/
create table T_FB_PersonMoneyAssignDetail
(
   PersonBudgetApplyDetailID NVARCHAR2(50) not null,
   PersonMoneyAssignMasterID NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   BudgetMoney          NUMBER,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   Remark               NVARCHAR2(200),
   PostInfo             NVARCHAR2(200),
   SuggestBudgetMoney   NUMBER,
   primary key (PersonBudgetApplyDetailID)
);

/*==============================================================*/
/* Table: T_FB_PersonMoneyAssignMaster                          */
/*==============================================================*/
create table T_FB_PersonMoneyAssignMaster
(
   PersonMoneyAssignMasterID NVARCHAR2(50) not null,
   PersonMoneyAssignMasterCode NVARCHAR2(50),
   BudgetaryMonth       DATE not null,
   AppliedType          INT comment '1 : Ԥ������ 2: ��������',
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   Remark               NVARCHAR2(2000),
   BudgetMoney          NUMBER,
   AuditBudgetMoney     NUMBER,
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   primary key (PersonMoneyAssignMasterID)
);

/*==============================================================*/
/* Table: T_FB_RepayApplyDetail                                 */
/*==============================================================*/
create table T_FB_RepayApplyDetail
(
   RepayApplyDetailID   NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50) not null,
   RepayApplyMasterID   NVARCHAR2(50),
   BorrowApplyDetailID  NVARCHAR2(50),
   Remark               NVARCHAR2(200),
   ChargeType           INT comment '1�����ˣ� 2������',
   BorrowMoney          NUMBER not null,
   RepayMoney           NUMBER,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   primary key (RepayApplyDetailID)
);

/*==============================================================*/
/* Table: T_FB_RepayApplyMaster                                 */
/*==============================================================*/
create table T_FB_RepayApplyMaster
(
   RepayApplyMasterID   NVARCHAR2(50) not null,
   ExtensionalOrderID   NVARCHAR2(50),
   BorrowApplyMasterID  NVARCHAR2(50),
   RepayApplyCode       NVARCHAR2(50),
   RepayType            INT not null comment '1�ֽ���ͨ���
            2�ֽ𻹱��ý���
            3�ֽ�ר����
            
            ',
   ProjectedRepayDate   DATE,
   BrorrowedMoney       NUMBER,
   TotalMoney           NUMBER not null,
   Remark               NVARCHAR2(2000),
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   PAYMENTINFO          NVARCHAR2(2000),
   primary key (RepayApplyMasterID)
);

/*==============================================================*/
/* Table: T_FB_SUBJECTCOMPANYSET                                */
/*==============================================================*/
create table T_FB_SUBJECTCOMPANYSET
(
   SubjectCompanyID     NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50),
   Actived              INT not null comment '1 : ���� ; 0 : ������',
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   primary key (SubjectCompanyID)
);

alter table T_FB_SUBJECTCOMPANYSET comment '��˾��Ŀ����';

/*==============================================================*/
/* Table: T_FB_SUMSETTINGSDETAIL                                */
/*==============================================================*/
create table T_FB_SUMSETTINGSDETAIL
(
   SUMSETTINGSDETAILID  VARCHAR2(50) not null,
   SUMSETTINGSMASTERID  VARCHAR2(50),
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   primary key (SUMSETTINGSDETAILID)
);

alter table T_FB_SUMSETTINGSDETAIL comment 'Ԥ�����������ϸ';

/*==============================================================*/
/* Table: T_FB_SUMSETTINGSMASTER                                */
/*==============================================================*/
create table T_FB_SUMSETTINGSMASTER
(
   SUMSETTINGSMASTERID  VARCHAR2(50) not null,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   Remark               NVARCHAR2(2000),
   primary key (SUMSETTINGSMASTERID)
);

alter table T_FB_SUMSETTINGSMASTER comment 'Ԥ�������������';

/*==============================================================*/
/* Table: T_FB_SalaryPayList                                    */
/*==============================================================*/
create table T_FB_SalaryPayList
(
   SalaryPayListID      NVARCHAR2(50) not null,
   PayYear              INT,
   PayMonth             INT,
   PayMoney             NUMBER,
   EditStates           INT comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   OwnerID              NVARCHAR2(50),
   OwnerPostID          NVARCHAR2(50),
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerCompanyID       NVARCHAR2(50),
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   CreateCompanyID      NVARCHAR2(50),
   CreateDepartmentID   NVARCHAR2(50),
   CreatePostID         NVARCHAR2(50),
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE,
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   primary key (SalaryPayListID)
);

/*==============================================================*/
/* Table: T_FB_Subject                                          */
/*==============================================================*/
create table T_FB_Subject
(
   SubjectID            NVARCHAR2(50) not null,
   SubjectTypeID        NVARCHAR2(50),
   ParentSubjectID      NVARCHAR2(50),
   SubjectName          NVARCHAR2(50) not null,
   SubjectCode          NVARCHAR2(50) not null,
   Actived              INT not null comment '1 : ���� ; 0 : ������',
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   OwnerName            NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   primary key (SubjectID)
);

/*==============================================================*/
/* Table: T_FB_SubjectCompany                                   */
/*==============================================================*/
create table T_FB_SubjectCompany
(
   SubjectCompanyID     NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50),
   Actived              INT not null comment '1 : ���� ; 0 : ������',
   IsMonthAdjust        INT comment '��Ŀ���Խ��е����������¶�Ԥ��������Ե��������Ŀ
            0: ������ 1: ����',
   IsYearBudget         INT comment '��ʾ�¶�Ԥ�������Ԥ������
            0 : ���� 1: ������',
   ControlType          INT comment '1 : ���ܿ���ʹ��; 2 : ���ǿ���ʹ�� ; 3: ������ ; 4: �����',
   IsMonthlimit         INT comment '��ʾ�ڱ���ʱ���ܳ���ʵʱ���
             0 : ������ ; 1:����',
   IsPerson             INT comment '��ʾ�Ƿ�������ڸ��˷���
            0:  ������ ;  1:  ����',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   primary key (SubjectCompanyID)
);

/*==============================================================*/
/* Table: T_FB_SubjectDeptment                                  */
/*==============================================================*/
create table T_FB_SubjectDeptment
(
   SubjectDeptmentID    NVARCHAR2(50) not null,
   SubjectCompanyID     NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   Actived              INT not null comment '1 : ���� ; 0 : ������',
   LimitBudgeMoney      NUMBER,
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   ISPERSON             INT comment '��ʾ�Ƿ�������ڸ��˷���
            0:  ������ ;  1:  ����',
   primary key (SubjectDeptmentID)
);

/*==============================================================*/
/* Table: T_FB_SubjectPost                                      */
/*==============================================================*/
create table T_FB_SubjectPost
(
   SubjectPostID        NVARCHAR2(50) not null,
   SubjectDeptmentID    NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   Actived              INT not null comment '1 : ���� ; 0 : ������',
   LimitBudgeMoney      NUMBER,
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved
            ',
   ISPERSON             INT comment '��ʾ�Ƿ�������ڸ��˷���
            0:  ������ ;  1:  ����',
   primary key (SubjectPostID)
);

/*==============================================================*/
/* Table: T_FB_SubjectType                                      */
/*==============================================================*/
create table T_FB_SubjectType
(
   SubjectTypeID        NVARCHAR2(50) not null,
   SubjectTypeCode      NVARCHAR2(50),
   SubjectTypeName      NVARCHAR2(50),
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   primary key (SubjectTypeID)
);

/*==============================================================*/
/* Table: T_FB_SystemSettings                                   */
/*==============================================================*/
create table T_FB_SystemSettings
(
   SystemSettingsID     NVARCHAR2(50) not null,
   SalarySubjectID      NVARCHAR2(50),
   TranverlSubjectID    NVARCHAR2(50),
   EntertainmentlSubjectID NVARCHAR2(50),
   UpdateDate           DATE,
   UpdateUserID         NVARCHAR2(50),
   CreatePostID         NVARCHAR2(50),
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   CreateCompanyID      NVARCHAR2(50),
   OwnerID              NVARCHAR2(50),
   OwnerPostID          NVARCHAR2(50),
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerCompanyID       NVARCHAR2(50),
   CreateDepartmentID   NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   CreateUserName       NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   CheckDate            DATE comment 'ÿ�µĵڼ��죬���㡣',
   MoneyAssignSubjectID NVARCHAR2(50),
   LastCheckDate        DATE,
   primary key (SystemSettingsID)
);

/*==============================================================*/
/* Table: T_FB_TravelExpApplyDetail                             */
/*==============================================================*/
create table T_FB_TravelExpApplyDetail
(
   TravelExpApplyDetailID NVARCHAR2(50) not null,
   TravelExpApplyMasterID NVARCHAR2(50),
   SerialNumber         INT,
   SubjectID            NVARCHAR2(50) not null,
   BorrowApplyDetailID  NVARCHAR2(50),
   Month                INT not null,
   Day                  INT not null,
   ChargeType           INT comment '1�����ˣ� 2������',
   UsableMoney          NUMBER,
   RepayMoney           NUMBER,
   Remark               NVARCHAR2(200),
   TotalDay             INT,
   AirFare              NUMBER,
   CarFare              NUMBER,
   LodgingExpenses      NUMBER,
   TravellingAllowance  NUMBER,
   LodgeSavingExpenses  NUMBER,
   OtherCharge          NUMBER,
   TotalCharge          NUMBER not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   AuditChargeMoney     NUMBER,
   primary key (TravelExpApplyDetailID)
);

/*==============================================================*/
/* Table: T_FB_TravelExpApplyMaster                             */
/*==============================================================*/
create table T_FB_TravelExpApplyMaster
(
   TravelExpApplyMasterID NVARCHAR2(50) not null,
   ExtensionalOrderID   NVARCHAR2(50),
   BorrowApplyMasterID  NVARCHAR2(50),
   TravelExpApplyMasterCode NVARCHAR2(50) not null,
   BudgetaryMonth       DATE not null,
   PayType              INT not null comment '1���˷��ñ�����2���3��Ԥ���4���ͻ��5����',
   Remark               NVARCHAR2(2000),
   TotalMoney           NUMBER not null,
   Repayment            NUMBER,
   EditStates           INT not null comment '///0 ɾ��״̬ Deleted
            ///1 ����Ч Actived
            ///2 δ��Ч UnActived
            ///3 ������ PendingCancelled
            ///4 �ѳ��� Cancelled
            ',
   CheckStates          INT not null comment '///0 δ�ύ UnSubmit,
            ///1 ����� Approving,
            /// 2 ���ͨ�� Approved,
            ///3 ���δͨ�� UnApproved
            ///4 ����         Saved',
   OwnerID              NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   CreateUserID         NVARCHAR2(50) not null,
   CreateDate           DATE not null,
   CreateCompanyID      NVARCHAR2(50) not null,
   CreateDepartmentID   NVARCHAR2(50) not null,
   CreatePostID         NVARCHAR2(50) not null,
   UpdateUserID         NVARCHAR2(50) not null,
   UpdateDate           DATE not null,
   CreateUserName       NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   OwnerName            NVARCHAR2(50),
   CreateDepartmentName NVARCHAR2(50),
   CreateCompanyName    NVARCHAR2(50),
   CreatePostName       NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   AuditChargeMoney     NUMBER,
   primary key (TravelExpApplyMasterID)
);

/*==============================================================*/
/* Table: T_FB_WFBudgetAccount                                  */
/*==============================================================*/
create table T_FB_WFBudgetAccount
(
   WFBudgetAccountID    NVARCHAR2(50) not null,
   BudgetAccountID      NVARCHAR2(50),
   AccountObjectType    INT comment '1 : ��˾, 2 : ����, 3 : ����',
   BudgetYear           INT,
   BudgetMonth          INT,
   OwnerCompanyID       NVARCHAR2(50),
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerID              NVARCHAR2(50),
   OwnerPostID          NVARCHAR2(50),
   SubjectID            NVARCHAR2(50),
   BudgetMoney          NUMBER,
   UsableMoney          NUMBER,
   ActualMoney          NUMBER,
   PaiedMoney           NUMBER,
   OrderDetailID        NVARCHAR2(50),
   OrderType            NVARCHAR2(50) comment '�������ͣ� ��/�¶�Ԥ��/������',
   OrderID              NVARCHAR2(50) comment '��ϸ��¼��ID��',
   OrderCode            NVARCHAR2(50),
   OperationMoney       NUMBER,
   TriggerBy            NVARCHAR2(50) comment '�ύ�˻������',
   TriggerEvent         NVARCHAR2(50) comment '�ύ����˲�ͨ�������ͨ��',
   Remark               NVARCHAR2(200),
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE,
   primary key (WFBudgetAccountID)
);

/*==============================================================*/
/* Table: T_FB_WFPersonAccount                                  */
/*==============================================================*/
create table T_FB_WFPersonAccount
(
   WFPersonAccountID    NVARCHAR2(50) not null,
   PersonAccountID      NVARCHAR2(50),
   BorrowMoney          NUMBER,
   NextRepayDate        DATE comment '
            ',
   SpecialBorrowMoney   NUMBER,
   SimpleBorrowMoney    NUMBER,
   BackupBorrowMoney    NUMBER,
   OwnerID              NVARCHAR2(50),
   OwnerPostID          NVARCHAR2(50),
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerCompanyID       NVARCHAR2(50),
   Remark               NVARCHAR2(2000),
   CreateCompanyID      NVARCHAR2(50),
   CreateDepartmentID   NVARCHAR2(50),
   CreatePostID         NVARCHAR2(50),
   OrderDetailID        NVARCHAR2(50),
   OrderType            NVARCHAR2(50) comment '�������ͣ����������',
   OrderID              NVARCHAR2(50) comment '��ϸ��¼��ID��',
   OrderCode            NVARCHAR2(50),
   OperationMoney       NUMBER,
   TriggerBy            NVARCHAR2(50) comment '�ύ�˻������',
   TriggerEvent         NVARCHAR2(50) comment '�ύ����˲�ͨ�������ͨ��',
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE,
   primary key (WFPersonAccountID)
);

/*==============================================================*/
/* Table: T_FB_WFSubjectSetting                                 */
/*==============================================================*/
create table T_FB_WFSubjectSetting
(
   WFSubjectSettingID   NVARCHAR2(50) not null,
   SubjectID            NVARCHAR2(50),
   Actived              INT comment '1 : ���� ; 0 : ������',
   IsMonthAdjust        INT comment '��Ŀ���Խ��е����������¶�Ԥ��������Ե��������Ŀ
            0: ������ 1: ����',
   IsYearBudget         INT comment '��ʾ�¶�Ԥ�������Ԥ������
            0 : ���� 1: ������',
   ControlType          INT comment '1 : ���ܿ���ʹ��; 2 : ���ǿ���ʹ�� ; 3: ������ ; 4: �����',
   IsMonthlimit         INT comment '��ʾ�ڱ���ʱ���ܳ���ʵʱ���
             0 : ������ ; 1:����',
   IsPerson             INT comment '��ʾ�Ƿ�������ڸ��˷���
            0:  ������ ;  1:  ����',
   LimitBudgeMoney      NUMBER,
   OwnerPostID          NVARCHAR2(50),
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerCompanyID       NVARCHAR2(50),
   OwnerPostName        NVARCHAR2(50),
   OwnerDepartmentName  NVARCHAR2(50),
   OwnerCompanyName     NVARCHAR2(50),
   OrderType            NVARCHAR2(50) comment '�������ͣ� 1:��˾��Ŀ����, 2:���ſ�Ŀ����,3:��λ��Ŀ����',
   OrderID              NVARCHAR2(50) comment '��ص����ñ�����ID',
   TriggerEvent         NVARCHAR2(50) comment '�ύ����˲�ͨ�������ͨ����ֱ�ӱ���',
   Remark               NVARCHAR2(200),
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE,
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE,
   primary key (WFSubjectSettingID)
);

/*==============================================================*/
/* Table: T_FLOW_CUSTOMFLOWDEFINE                               */
/*==============================================================*/
create table T_FLOW_CUSTOMFLOWDEFINE
(
   PROCESSID            NVARCHAR2(50) not null comment '����ID',
   COMPANYCODE          NVARCHAR2(50) comment '��˾����',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   SYSTEMNAME           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   MODELNAME            NVARCHAR2(50) comment 'ģ������',
   FUNCTIONNAME         NVARCHAR2(100) comment '��������',
   FUNCTIONDES          NVARCHAR2(1000) comment '���ܶ���',
   PROCESSWCFURL        NVARCHAR2(400) comment '����WCF��URL',
   PROCESSFUNCNAME      NVARCHAR2(100) comment '����ӿ���',
   PROCESSFUNCPAMETER   NVARCHAR2(1000) comment '����ӿڲ���',
   PAMETERSPLITCHAR     NVARCHAR2(100) comment '�����ָ��',
   WCFBINDINGCONTRACT   NVARCHAR2(100) comment 'WCF��Э��',
   MESSAGEBODY          NVARCHAR2(100) comment '��Ϣ��',
   MSGLINKURL           NVARCHAR2(400) comment '��ϢURL',
   RECEIVEUSER          NVARCHAR2(100) comment '�����û�',
   RECEIVEUSERNAME      NVARCHAR2(100) comment '�����û���',
   OWNERCOMPANYID       NVARCHAR2(100) comment '��˾ID',
   OWNERDEPARTMENTID    NVARCHAR2(100) comment '����ID',
   OWNERPOSTID          NVARCHAR2(100) comment '��λID',
   CREATEDATE           NVARCHAR2(100) comment '��������',
   CREATETIME           NVARCHAR2(100) comment '����ʱ��',
   CREATEUSERNAME       NVARCHAR2(50) comment '�����û���',
   CREATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   primary key (PROCESSID)
);

alter table T_FLOW_CUSTOMFLOWDEFINE comment '�Զ��崥����';

/*==============================================================*/
/* Table: T_FLOW_ENGINEMSGLIST                                  */
/*==============================================================*/
create table T_FLOW_ENGINEMSGLIST
(
   MESSAGEID            NUMBER(10) not null comment '��ϢID',
   ORDERNODECODE        NVARCHAR2(100) not null comment '˳�������',
   MESSAGEBODY          NVARCHAR2(2000) comment '��Ϣ��',
   APPLICATIONURL       NVARCHAR2(2000) comment 'Ӧ��URL',
   APPLICATIONCODE      NVARCHAR2(50) comment 'Ӧ�ô���',
   RECEIVEUSER          NVARCHAR2(50) comment '�����û�',
   RECEIVEDATE          NVARCHAR2(50) comment '��������',
   RECEIVETIME          NVARCHAR2(50) comment '����ʱ��',
   BEFOREPROCESSDATE    DATE comment '����ǰ��ʱ��',
   MESSAGESTATUS        NVARCHAR2(50) comment '��Ϣ״̬',
   OPERATIONUSER        NVARCHAR2(50) comment '�����û�',
   OPERATIONDATE        NVARCHAR2(50) comment '��������',
   OPERATIONTIME        NVARCHAR2(50) comment '����ʱ��',
   CREATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   CREATEDATE           NVARCHAR2(50) comment '��������',
   CREATETIME           NVARCHAR2(50) comment '����ʱ��',
   UPDATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   UPDATEDATE           NVARCHAR2(50) comment '��������',
   UPDATETIME           NVARCHAR2(50) comment '����ʱ��',
   ENGINECODE           NVARCHAR2(200) comment '�������',
   MAILSTATUS           NVARCHAR2(50) comment '�ʼ�״̬',
   RTXSTATUS            NVARCHAR2(50) comment 'RTX״̬',
   MODELCODE            NVARCHAR2(100) comment 'ģ�����',
   ISALARM              NVARCHAR2(2) comment '�Ƿ�������',
   COMPANYCODE          NVARCHAR2(50) comment '��˾����',
   APPFIELDVALUE        NCLOB comment 'Ӧ���ֶ�ֵ',
   FLOWXML              NCLOB comment '����XML',
   APPXML               NCLOB comment 'Ӧ��XML',
   TEMPFIELD            NVARCHAR2(100) comment '��ʱ�ֶ�',
   primary key (MESSAGEID)
)
lob
 (APPFIELDVALUE)
    store as (
        chunk 8192
        pctversion 10
         nocache
         logging
         enable storage in row
    )
lob
 (FLOWXML)
    store as (
        chunk 8192
        pctversion 10
         nocache
         logging
         enable storage in row
    )
lob
 (APPXML)
    store as (
        chunk 8192
        pctversion 10
         nocache
         logging
         enable storage in row
    )
monitoring
 noparallel;

alter table T_FLOW_ENGINEMSGLIST comment '��������';

/*==============================================================*/
/* Index: IDX_RECEIVEUSER                                       */
/*==============================================================*/
create index IDX_RECEIVEUSER on T_FLOW_ENGINEMSGLIST
(
   RECEIVEUSER
);

/*==============================================================*/
/* Table: T_FLOW_ENGINENOTES                                    */
/*==============================================================*/
create table T_FLOW_ENGINENOTES
(
   NOTESID              NUMBER(10) not null comment '֪ͨID',
   MESSAGEBODY          NVARCHAR2(500) comment '��Ϣ��',
   APPLICATIONCODE      NVARCHAR2(50) comment 'Ӧ�ô���',
   RECEIVEUSER          NVARCHAR2(50) comment '�����û�',
   RECEIVEDATE          NVARCHAR2(50) comment '��������',
   RECEIVETIME          NVARCHAR2(50) comment '����ʱ��',
   MESSAGESTATUS        NVARCHAR2(50) comment '��Ϣ״̬',
   CREATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   CREATEDATE           NVARCHAR2(50) comment '��������',
   CREATETIME           NVARCHAR2(50) comment '����ʱ��',
   APPLICATIONORDERCODE NVARCHAR2(200) comment 'Ӧ��˳�����',
   COMPANYCODE          NVARCHAR2(50) comment '��˾����',
   MAILSTATUS           NVARCHAR2(50) comment '�ʼ�״̬',
   RTXSTATUS            NVARCHAR2(50) comment 'TRX״̬',
   primary key (NOTESID)
)
monitoring
 noparallel;

alter table T_FLOW_ENGINENOTES comment '����֪ͨ��';

/*==============================================================*/
/* Table: T_FLOW_ENGINEPREFIX                                   */
/*==============================================================*/
create table T_FLOW_ENGINEPREFIX
(
   PREFIXCODE           NVARCHAR2(100) not null comment 'ǰ׺����',
   PREFIXNAME           NVARCHAR2(100) comment 'ǰ׺����',
   DEFAULTBIT           NVARCHAR2(50) comment 'DEFAULTBIT',
   CURRENTORDER         NUMBER(10) comment '��ǰ˳��',
   ORDERLENGTH          NUMBER(10) comment '˳�򳤶�',
   CREATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   CREATEDATE           NVARCHAR2(50) comment '��������',
   CREATETIME           NVARCHAR2(50) comment '����ʱ��',
   primary key (PREFIXCODE)
)
monitoring
 noparallel;

alter table T_FLOW_ENGINEPREFIX comment '����ǰ׺';

/*==============================================================*/
/* Table: T_FLOW_EVENTTRIGGER                                   */
/*==============================================================*/
create table T_FLOW_EVENTTRIGGER
(
   PROCESSID            NUMBER not null comment '����ID',
   COMPANYCODE          NVARCHAR2(50) comment '��˾����',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   APPLICATIONORDERCODE NVARCHAR2(100) comment 'Ӧ��˳�����',
   PROCESSSTARTDATE     NVARCHAR2(50) comment '����ʼ����',
   PROCESSSTARTTIME     NVARCHAR2(50) comment '����ʼʱ��',
   PROCESSCYCLE         NVARCHAR2(100) comment '��������',
   RECEIVEUSER          NVARCHAR2(1000) comment '�����û�',
   RECEIVEROLE          NVARCHAR2(50) comment '���ս�ɫ',
   MESSAGEBODY          NVARCHAR2(1000) comment '��Ϣ��',
   MSGLINKURL           NVARCHAR2(2000) comment '��Ϣ����URL',
   PROCESSWCFURL        NVARCHAR2(2000) comment '����WCF��URL',
   PROCESSFUNCNAME      NVARCHAR2(400) comment '��������',
   PROCESSFUNCPAMETER   NVARCHAR2(2000) comment '�����ܲ���',
   PAMETERSPLITCHAR     NVARCHAR2(100) comment '�����ָ��',
   WCFBINDINGCONTRACT   NVARCHAR2(100) comment 'WCF����Լ',
   DATASTATUS           NVARCHAR2(50) comment '����״̬',
   CREATEDATE           NVARCHAR2(50) comment '��������',
   CREATETIME           NVARCHAR2(50) comment '����ʱ��',
   UPDATEDATE           NVARCHAR2(50) comment '��������',
   UPDATETIME           NVARCHAR2(50) comment '����ʱ��',
   FUNCTIONMARK         NVARCHAR2(50) comment '���ܱ�ע',
   APPFIELDVALUE        NCLOB comment 'Ӧ���ֶ�ֵ',
   primary key (PROCESSID)
)
lob
 (APPFIELDVALUE)
    store as (
        chunk 8192
        pctversion 10
         nocache
         logging
         enable storage in row
    )
monitoring
 noparallel;

alter table T_FLOW_EVENTTRIGGER comment '�¼�������';

/*==============================================================*/
/* Table: T_FLOW_FLOWPROCESSDEFINE                              */
/*==============================================================*/
create table T_FLOW_FLOWPROCESSDEFINE
(
   PROCESSID            NVARCHAR2(100) not null comment '����ID',
   ENGINECODE           NVARCHAR2(100) not null comment '�������',
   COMPANYCODE          NVARCHAR2(50) comment '��˾����',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   SYSTEMNAME           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   MODELNAME            NVARCHAR2(50) comment 'ģ������',
   PROCESSWCFURL        NVARCHAR2(400) comment '����WCF��URL',
   PROCESSFUNCNAME      NVARCHAR2(100) comment '��������',
   PROCESSFUNCPAMETER   NVARCHAR2(2000) comment '�����ܲ���',
   PAMETERSPLITCHAR     NVARCHAR2(100) comment '�����ֽ��',
   WCFBINDINGCONTRACT   NVARCHAR2(100) comment 'WCF�󶨵���Լ',
   MESSAGEBODY          NVARCHAR2(400) comment '��Ϣ��',
   AVAILABILITYPROCESSDATES NVARCHAR2(100) comment '�ɴ�������',
   CREATEDATE           NVARCHAR2(100) comment '��������',
   CREATETIME           NVARCHAR2(100) comment '����ʱ��',
   APPLICATIONURL       NCLOB comment 'Ӧ��URL',
   RECEIVEUSER          NVARCHAR2(100) comment '�����û�',
   RECEIVEUSERNAME      NVARCHAR2(100) comment '�����û���',
   OWNERCOMPANYID       NVARCHAR2(100) comment '������˾ID',
   OWNERDEPARTMENTID    NVARCHAR2(100) comment '��������ID',
   OWNERPOSTID          NVARCHAR2(100) comment '������λID',
   DEFAULTMSG           NVARCHAR2(100) comment 'ȱʡ��Ϣ',
   CREATEUSERNAME       NVARCHAR2(50) comment '�����û���',
   CREATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   PROCESSFUNCLANGUAGE  NVARCHAR2(100) comment '����������',
   ISOTHERSOURCE        NVARCHAR2(100) comment '�Ƿ�������Դ',
   OTHERSYSTEMCODE      NVARCHAR2(100) comment '����ϵͳ����',
   OTHERMODELCODE       NVARCHAR2(100) comment '����ϵͳģ��',
   primary key (PROCESSID)
)
lob
 (APPLICATIONURL)
    store as (
        chunk 8192
        pctversion 10
         nocache
         logging
         enable storage in row
    )
monitoring
 noparallel;

alter table T_FLOW_FLOWPROCESSDEFINE comment '���̴������';

/*==============================================================*/
/* Table: T_FLOW_FLOWTRIGGER                                    */
/*==============================================================*/
create table T_FLOW_FLOWTRIGGER
(
   ENGINECODE           NVARCHAR2(100) not null comment '�������',
   COMPANYCODE          NVARCHAR2(50) comment '��˾����',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   SYSTEMNAME           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   MODELNAME            NVARCHAR2(50) comment 'ģ������',
   TRIGGERCONDITION     NVARCHAR2(50) comment '��������',
   CREATEDATE           NVARCHAR2(50) comment '��������',
   CREATETIME           NVARCHAR2(50) comment '����ʱ��',
   CREATEUSERNAME       NVARCHAR2(50) comment '�����û���',
   CREATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   primary key (ENGINECODE)
)
monitoring
 noparallel;

alter table T_FLOW_FLOWTRIGGER comment '���̴�����';

/*==============================================================*/
/* Table: T_FLOW_MSGBODYDEFINE                                  */
/*==============================================================*/
create table T_FLOW_MSGBODYDEFINE
(
   DEFINEID             NVARCHAR2(100) not null comment '����ID',
   SYSTEMCODE           NVARCHAR2(100) not null comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(100) not null comment 'ģ�����',
   MSGBODY              NVARCHAR2(400) comment '��Ϣ��',
   MSGURL               NVARCHAR2(2000) comment '��ϢURL',
   CREATEDATE           NVARCHAR2(100) comment '��������',
   CREATETIME           NVARCHAR2(100) comment '����ʱ��',
   COMPANYCODE          NVARCHAR2(100) comment '��˾����',
   CREATEUSERNAME       NVARCHAR2(50) comment '�����û���',
   CREATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   MSGTYPE              NVARCHAR2(50) comment '��Ϣ���ͣ�Ĭ�ϣ�������',
   primary key (DEFINEID)
)
monitoring
 noparallel;

alter table T_FLOW_MSGBODYDEFINE comment '��Ϣ����';

/*==============================================================*/
/* Table: T_FLOW_MSGDEFINE                                      */
/*==============================================================*/
create table T_FLOW_MSGDEFINE
(
   MSGID                NUMBER not null comment '��ϢID',
   MSGKEY               NVARCHAR2(400) not null comment '��ϢKey',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   MSGCONTENT           NVARCHAR2(400) comment '��Ϣ����',
   MSGURL               NVARCHAR2(2000) comment '��ϢURL',
   CREATEDATE           NVARCHAR2(50) comment '��������',
   CREATETIME           NVARCHAR2(50) comment '����ʱ��',
   primary key (MSGID, MSGKEY)
)
monitoring
 noparallel;

alter table T_FLOW_MSGDEFINE comment '��Ϣ�����';

/*==============================================================*/
/* Table: T_FLOW_TIMINGEVENTTRIGGER                             */
/*==============================================================*/
create table T_FLOW_TIMINGEVENTTRIGGER
(
   PROCESSID            NUMBER not null comment '����ID',
   COMPANYCODE          NVARCHAR2(50) comment '��˾����',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   APPLICATIONORDERCODE NVARCHAR2(100) comment 'Ӧ��˳�����',
   PROCESSSTARTDATE     NVARCHAR2(50) comment '����ʼ����',
   PROCESSSTARTTIME     NVARCHAR2(50) comment '����ʼʱ��',
   PROCESSCYCLE         NVARCHAR2(100) comment '��������',
   RECEIVEUSER          NVARCHAR2(50) comment '�����û�',
   RECEIVEROLE          NVARCHAR2(50) comment '���ս�ɫ',
   MESSAGEBODY          NVARCHAR2(1000) comment '��Ϣ��',
   MSGLINKURL           NVARCHAR2(2000) comment '��Ϣ����URL',
   PROCESSWCFURL        NVARCHAR2(2000) comment '����WCF��URL',
   PROCESSFUNCNAME      NVARCHAR2(400) comment '��������',
   PROCESSFUNCPAMETER   NVARCHAR2(2000) comment '�����ܲ���',
   PAMETERSPLITCHAR     NVARCHAR2(100) comment '�����ָ��',
   WCFBINDINGCONTRACT   NVARCHAR2(100) comment 'WCF����Լ',
   DATASTATUS           NVARCHAR2(50) comment '����״̬',
   CREATEDATE           NVARCHAR2(50) comment '��������',
   CREATETIME           NVARCHAR2(50) comment '����ʱ��',
   UPDATEDATE           NVARCHAR2(50) comment '��������',
   UPDATETIME           NVARCHAR2(50) comment '����ʱ��',
   FUNCTIONMARK         NVARCHAR2(50) comment '���ܱ�ע',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   TRIGGERTYPE          NVARCHAR2(50) comment '��������',
   CONTRACTTYPE         NVARCHAR2(50) comment '��Լ����',
   primary key (PROCESSID)
)
monitoring
 noparallel;

alter table T_FLOW_TIMINGEVENTTRIGGER comment '��ʱ�¼�������';

/*==============================================================*/
/* Table: T_HR_AdjustLeave                                      */
/*==============================================================*/
create table T_HR_AdjustLeave
(
   AdjustLeaveID        varchar(50) not null,
   LeaveRecordID        varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   LeaveTypeSetID       varchar(50),
   OffseObjectType      varchar(50) comment '0 �Ӱ��¼, 1 ��н�ٸ���',
   OffsetDays           numeric(8,0),
   BeginTime            varchar(50),
   EndTime              varchar(50),
   AdjustLeaveDays      numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   CreateUserID         varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   primary key (AdjustLeaveID)
);

alter table T_HR_AdjustLeave comment '��¼Ա����ٵ��ݵ���???
���ݿɴӼӰ��е���
Ҳ�ɴӵ��ݸ����п۳�
';

/*==============================================================*/
/* Table: T_HR_AreaAllowance                                    */
/*==============================================================*/
create table T_HR_AreaAllowance
(
   AreaAllowanceID      varchar(50) not null,
   AreaDifferenceID     varchar(50),
   PostLevel            varchar(50),
   Allowance            numeric(8,0),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (AreaAllowanceID)
);

/*==============================================================*/
/* Table: T_HR_AreaCity                                         */
/*==============================================================*/
create table T_HR_AreaCity
(
   AreaCityID           varchar(50) not null,
   AreaDifferenceID     varchar(50),
   City                 varchar(10) comment '���ڵس��У�ϵͳ�ֵ��ж���',
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (AreaCityID)
);

/*==============================================================*/
/* Table: T_HR_AreaDifference                                   */
/*==============================================================*/
create table T_HR_AreaDifference
(
   AreaDifferenceID     varchar(50) not null,
   AreaCategory         varchar(50),
   AreaIndex            numeric(8,0),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (AreaDifferenceID)
);

/*==============================================================*/
/* Table: T_HR_AssessmentFormDetail                             */
/*==============================================================*/
create table T_HR_AssessmentFormDetail
(
   AssessmentFormDetailID varchar(50) not null,
   AssessmentFormMasterID varchar(50),
   CheckPoint           varchar(50),
   CheckPointSetID      varchar(50),
   FirstNibsGrade       varchar(50),
   SecondNibsGrade      varchar(50),
   FirstScore           numeric(8,0),
   SecondScore          numeric(8,0),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (AssessmentFormDetailID)
);

/*==============================================================*/
/* Table: T_HR_AssessmentFormMaster                             */
/*==============================================================*/
create table T_HR_AssessmentFormMaster
(
   AssessmentFormMasterID varchar(50) not null,
   BEREGULARID          varchar(50),
   POStCHANGEID         varchar(50),
   EmployeeID           varchar(50),
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   EmployeeLevel        varchar(50) comment '0  ��ͨԱ��
            1 �ɲ�',
   CheckType            varchar(50) comment '0 ת��
            1 �춯',
   CheckPerson          varchar(50),
   CheckStartDate       varchar(50),
   CheckEndDate         varchar(50),
   CheckReason          varchar(50),
   FirstNibsGradeSum    numeric(8,0),
   SecondNibsGradeSum   numeric(8,0),
   AwardsScore          numeric(8,0),
   PunishmentScore      numeric(8,0),
   TotalScore           numeric(8,0),
   FirstComment         varchar(2000),
   SecondComment        varchar(2000),
   HRDepartmentComment  varchar(2000),
   FirstCommentName     varchar(2000),
   SecondCommentName    varchar(2000),
   HRCommentName        varchar(2000),
   FirstCommentDate     datetime,
   SecondCommentDate    datetime,
   HRCommentDate        datetime,
   AttachmentPath       varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (AssessmentFormMasterID)
);

/*==============================================================*/
/* Table: T_HR_AttendFreeLeave                                  */
/*==============================================================*/
create table T_HR_AttendFreeLeave
(
   AttendFreeLeaveID    varchar(50) not null,
   AttendanceSolutionID varchar(50),
   LeaveTypeSetID       varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (AttendFreeLeaveID)
);

/*==============================================================*/
/* Table: T_HR_AttendMachineSet                                 */
/*==============================================================*/
create table T_HR_AttendMachineSet
(
   AttendMachineSetID   varchar(50) not null,
   CompanyID            varchar(50),
   Area                 varchar(2000),
   AttendMachineName    varchar(50),
   AttendMachineCode    varchar(50),
   IPAddress            varchar(50),
   ComNumber            varchar(50),
   ReadDataType         varchar(1) comment '��ȡ���ݷ�ʽ:
            0,���紫��
            1,���ݿ�
            2,�ļ�',
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (AttendMachineSetID)
);

/*==============================================================*/
/* Table: T_HR_AttendMonthlyBalance                             */
/*==============================================================*/
create table T_HR_AttendMonthlyBalance
(
   MonthlyBalanceID     varchar(50) not null,
   MonthlyBatchID       varchar(50),
   EmployeeID           varchar(50),
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   BalanceYear          numeric(8,0),
   BalanceMonth         numeric(8,0),
   BalanceDate          datetime,
   NeedAttendDays       numeric(8,0),
   RealAttendDays       numeric(8,0),
   LateDays             numeric(8,0),
   LeaveEarlyDays       numeric(8,0),
   AbsentDays           numeric(8,0),
   AffairLeaveDays      numeric(8,0),
   SickLeaveDays        numeric(8,0),
   OtherLeaveDays       numeric(8,0),
   OverTimeTimes        numeric(8,0),
   OvertimeSumHours     numeric(8,0),
   OvertimeSumDays      numeric(8,0),
   LateTimes            numeric(8,0),
   LeaveEarlyTimes      numeric(8,0),
   ForgetCardTimes      numeric(8,0),
   CheckState           varchar(1),
   EditState            varchar(1),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   Remark               varchar(2000),
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   EvectionTime         numeric(8,0),
   AnnualLevelDays      numeric(8,0),
   LeaveUsedDays        numeric(8,0),
   MarryDays            numeric(8,0),
   MaternityLeaveDays   numeric(8,0),
   NursesDays           numeric(8,0),
   FuneralLeaveDays     numeric(8,0),
   TripDays             numeric(8,0),
   InjuryLeaveDays      numeric(8,0),
   primary key (MonthlyBalanceID)
);

/*==============================================================*/
/* Table: T_HR_AttendMonthlyBatchBalance                        */
/*==============================================================*/
create table T_HR_AttendMonthlyBatchBalance
(
   MonthlyBatchID       varchar(50) not null,
   BalanceYear          numeric(8,0),
   BalanceMonth         numeric(8,0),
   BalanceDate          datetime,
   BalanceObjectType    varchar(1),
   BalanceObjectId      varchar(50),
   BalanceObjectName    varchar(500),
   CheckState           varchar(1),
   EditState            varchar(1),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   Remark               varchar(2000),
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (MonthlyBatchID)
);

/*==============================================================*/
/* Table: T_HR_AttendMonthlyLeave                               */
/*==============================================================*/
create table T_HR_AttendMonthlyLeave
(
   MonthlyBalanceID     varchar(50) not null,
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   Remark               varchar(2000),
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (MonthlyBalanceID)
);

/*==============================================================*/
/* Table: T_HR_AttendYearlyBalance                              */
/*==============================================================*/
create table T_HR_AttendYearlyBalance
(
   YearlyBalanceID      varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   BalanceYear          numeric(8,0),
   BalanceDate          datetime,
   LastAnnualLevelUnusedDays numeric(8,0),
   AnnualLeaveUsedDays  numeric(8,0),
   AnnualLeaveSumDays   numeric(8,0),
   AnnualLeaveValidDays numeric(8,0),
   LastLeaveValidDays   numeric(8,0),
   LeaveUsedDays        numeric(8,0),
   LeaveValidDays       numeric(8,0),
   LeaveSumDays         numeric(8,0),
   NeedAttendDays       numeric(8,0),
   RealAttendDays       numeric(8,0),
   LateDays             numeric(8,0),
   LeaveEarlyDays       numeric(8,0),
   AbsentDays           numeric(8,0),
   AffairLeaveDays      numeric(8,0),
   SickLeaveDays        numeric(8,0),
   OtherLeaveDays       numeric(8,0),
   OverTimeTimes        numeric(8,0),
   OvertimeSumHours     numeric(8,0),
   OvertimeSumDays      numeric(8,0),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   Remark               varchar(2000),
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (YearlyBalanceID)
);

/*==============================================================*/
/* Table: T_HR_AttendanceDeductDetail                           */
/*==============================================================*/
create table T_HR_AttendanceDeductDetail
(
   DeductDetailID       varchar(50) not null,
   DeductMasterID       varchar(50),
   FineType             varchar(50) comment '1��ÿ�ο�XԪ��2������н/���� * �ٵ��ķ�����������һ�ְ�һ���㣩����Ϳ� X Ԫ��',
   ParameterValue       numeric(8,0),
   FineRatio            numeric(8,0),
   LowestTimes          numeric(8,0),
   HighestTimes         numeric(8,0),
   FineSum              numeric(8,0),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (DeductDetailID)
);

/*==============================================================*/
/* Table: T_HR_AttendanceDeductMaster                           */
/*==============================================================*/
create table T_HR_AttendanceDeductMaster
(
   DeductMasterID       varchar(50) not null,
   AttendAbnormalName   varchar(50),
   AttendAbnormalType   varchar(1) comment '0�ٵ�,1 ����,2δˢ��,3����',
   FineType             varchar(50) comment '1��ÿ�ο�XԪ��2������н/���� * �ٵ��ķ�����������һ�ְ�һ���㣩����Ϳ� X Ԫ��3�ֶοۿ�',
   ParameterValue       numeric(8,0),
   FineRatio            numeric(8,0),
   IsAccumulating       varchar(50),
   FineSum              numeric(8,0),
   IsPerfectAttendanceFactor varchar(1),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (DeductMasterID)
);

/*==============================================================*/
/* Table: T_HR_AttendanceRecord                                 */
/*==============================================================*/
create table T_HR_AttendanceRecord
(
   AttendanceRecordID   varchar(50) not null,
   AttendanceSolutionID varchar(50),
   EmployeeID           varchar(50),
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   WorkTimeSetID        varchar(50),
   AttendanceDate       datetime,
   FirstStartTime       varchar(50),
   FirstEndTime         varchar(50),
   FirstStartState      varchar(50),
   FirstEndState        varchar(50),
   SecondStartTime      varchar(50),
   SecondEndTime        varchar(50),
   SecondStartState     varchar(50),
   SecondEndState       varchar(50),
   thirdStartTime       varchar(50),
   thirdEndTime         varchar(50),
   ThirdStartState      varchar(50),
   ThirdEndState        varchar(50),
   FourthEndTime        varchar(50),
   FourthStartTime      varchar(50),
   FourthStartState     varchar(50),
   FourthEndState       varchar(50),
   AttendanceState      varchar(50) comment '0,������1�쳣��2������3���4��Ϣ��5���',
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   Remark               varchar(2000),
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (AttendanceRecordID)
);

/*==============================================================*/
/* Table: T_HR_AttendanceSolution                               */
/*==============================================================*/
create table T_HR_AttendanceSolution
(
   AttendanceSolutionID varchar(50) not null,
   AttendanceSolutionName varchar(50),
   OvertimeRewardID     varchar(50),
   TemplateMasterID     varchar(50),
   AttendanceType       varchar(50) comment '0 �򿨿���
            1 ����򿨿���
            2 ��¼ϵͳ
            3 �򿨼ӵ�¼ϵͳ
            ',
   WorkDayType          varchar(36) comment '�����������㷽ʽ��
            0:�̶���ʽ��
            1��������ʵ�ʹ����ռ�',
   WorkDays             numeric(8,0),
   WorkMode             numeric(8,0),
   CardType             varchar(50) comment '0 ָ�ƴ�
            1 �ֶ�ǩ��
            2 ���ӿ�',
   OneDayOvertimeHours  numeric(8,0),
   AllowLostCardTimes   numeric(8,0),
   AllowLateMaxMinute   numeric(8,0),
   AllowLateMaxTimes    numeric(8,0),
   IsCurrentMonth       varchar(1),
   SettlementDate       varchar(50),
   AlarmDate            varchar(50),
   AnnualLeaveSet       varchar(50) comment '����ݼٷ�ʽ:
            0 һ�������꣬��ʱ�������ڳ�����¼٣�
            1����N�����꣬ÿ���һ�β��¼���һ�Σ�
            2�������ƣ������ڳ�����¼٣�',
   WorkTimePerDay       numeric(8,0),
   IsExpired            varchar(1) comment '0:�����ڣ�1�����ڣ�',
   AdjustExpiredValue   varchar(50),
   OverTimePayType      varchar(1) comment '�Ӱ౨�귽ʽ��0 ���ݷ�ʽ��1 �Ӱ๤�ʷ�ʽ��2 �ȵ����ٸ����ʷ�ʽ��3 �ޱ��귽ʽ��',
   OverTimeValid        varchar(1) comment '�Ӱ���Ч��ʽ
            0 ���ͨ���ļӰ����룻1 ��������ʱ�����Զ��ۼƣ�2 ���ڼ����ۼƣ�',
   OverTimeCheck        varchar(1),
   CheckState           varchar(1),
   EditState            varchar(1),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   YearlyBalanceType    varchar(1) comment '������㷽ʽ:0���,1�ۼƵ���һ��,2����ɹ���',
   YearlyBalanceDate    varchar(50),
   primary key (AttendanceSolutionID)
);

/*==============================================================*/
/* Table: T_HR_AttendanceSolutionAsign                          */
/*==============================================================*/
create table T_HR_AttendanceSolutionAsign
(
   AttendanceSolutionAsignID varchar(50) not null,
   AttendanceSolutionID varchar(50),
   AssignedObjectID     varchar(2000),
   AssignedObjectType   varchar(50),
   StartDate            datetime,
   EndDate              datetime,
   CheckState           varchar(1),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   primary key (AttendanceSolutionAsignID)
);

/*==============================================================*/
/* Table: T_HR_AttendanceSolutionDeduct                         */
/*==============================================================*/
create table T_HR_AttendanceSolutionDeduct
(
   SolutionDeductID     varchar(50) not null,
   AttendanceSolutionID varchar(50),
   DeductMasterID       varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SolutionDeductID)
);

/*==============================================================*/
/* Table: T_HR_BlackList                                        */
/*==============================================================*/
create table T_HR_BlackList
(
   BlackListID          varchar(50) not null,
   IDCARDNUMBER         varchar(50) not null,
   Name                 varchar(50) not null,
   Reason               varchar(2000),
   begindate            varchar(50),
   OwnerCompanyID       varchar(50),
   UpdateDate           datetime,
   CreatePostID         varchar(50),
   UpdateUserID         varchar(50),
   CreateDate           datetime,
   CreateUserID         varchar(50),
   CreateCompanyID      varchar(50),
   CreateDepartmentID   varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   Remark               varchar(2000),
   primary key (BlackListID)
);

/*==============================================================*/
/* Table: T_HR_CheckCategorySet                                 */
/*==============================================================*/
create table T_HR_CheckCategorySet
(
   CheckCategoryID      varchar(50) not null,
   CheckCategoryName    varchar(500),
   Description          varchar(2000),
   CheckType            varchar(1) comment '���˷�ʽ��0������ʱ�䣬1���ֹ�������������ֹ�������ô���ַ�ʽ����ѡ�����',
   ScoreType            varchar(1) comment '���ַ�ʽ����Ϊϵͳ��֣�ϵͳͨ���������̲����ʱ�����Զ���֣����ֹ���֣�������һ���踺����Ϊ������һ���踺���˴�֣�������֣����趨�ĳ������������һ�����������̲����֣����� ',
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (CheckCategoryID)
);

/*==============================================================*/
/* Table: T_HR_CheckModelDefine                                 */
/*==============================================================*/
create table T_HR_CheckModelDefine
(
   CheckModelId         varchar(50) not null,
   OrgCheckModelID      varchar(50),
   PerformanceGoal      varchar(2000),
   Weighing             numeric(8,0),
   Point                numeric(8,0),
   IsFlowModel          varchar(1),
   FlowID               varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (CheckModelId)
);

/*==============================================================*/
/* Table: T_HR_CheckPointLevelSet                               */
/*==============================================================*/
create table T_HR_CheckPointLevelSet
(
   PointLeveID          varchar(50) not null,
   CheckPointSetID      varchar(50),
   PointLevel           varchar(50),
   PointScore           numeric(8,0),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (PointLeveID)
);

/*==============================================================*/
/* Table: T_HR_CheckPointSet                                    */
/*==============================================================*/
create table T_HR_CheckPointSet
(
   CheckPointSetID      varchar(50) not null,
   CheckProjectID       varchar(50),
   CheckEmployeeType    varchar(1),
   CheckPoint           varchar(50),
   CheckPointDes        varchar(50),
   CheckPointScore      numeric(8,0),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (CheckPointSetID)
);

/*==============================================================*/
/* Table: T_HR_CheckProjectSet                                  */
/*==============================================================*/
create table T_HR_CheckProjectSet
(
   CheckProjectID       varchar(50) not null,
   CheckProject         varchar(50),
   CheckProjectScore    numeric(8,0),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (CheckProjectID)
);

/*==============================================================*/
/* Table: T_HR_Company                                          */
/*==============================================================*/
create table T_HR_Company
(
   CompanyID            varchar(50) not null,
   CompanyType          varchar(50) comment '��ҵ����:1�ز���ҵ,2������ҵ,3������ҵ,4�����ҵ,������ҵ',
   CompanryCode         varchar(50),
   EName                varchar(100),
   CName                varchar(100),
   CompanyCategory      varchar(50),
   City                 varchar(50) comment '���ڵس��У�ϵͳ�ֵ��ж���',
   CountyType           varchar(50) comment '0 �й���½
            1 �й����
            ϵͳ�ֵ��ж���',
   CompanyLevel         varchar(50),
   FatherCompanyID      varchar(50),
   FatherID             varchar(50),
   FatherType           varchar(50),
   Address              varchar(100),
   LegalPerson          varchar(100),
   LinkMan              varchar(50),
   TelNumber            varchar(50),
   LegalPersonID        varchar(50),
   BussinessLicenceNo   varchar(100),
   BussinessArea        varchar(1000),
   AccountCode          varchar(100),
   BankID               varchar(100),
   Email                varchar(50),
   ZiPCode              varchar(50),
   FaxNumber            varchar(50),
   CheckState           varchar(1),
   EditState            varchar(1),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (CompanyID)
);

/*==============================================================*/
/* Table: T_HR_CompanyHistory                                   */
/*==============================================================*/
create table T_HR_CompanyHistory
(
   RecordsID            varchar(50) not null,
   CompanyID            varchar(50) not null,
   CompanryCode         varchar(50),
   EName                varchar(100),
   CName                varchar(100),
   CompanyCategory      varchar(50),
   CompanyLevel         varchar(50),
   FatherCompanyID      varchar(50),
   LegalPerson          varchar(100),
   LinkMan              varchar(50),
   TelNumber            varchar(50),
   Address              varchar(100),
   LegalPersonID        varchar(50),
   BussinessLicenceNo   varchar(100),
   BussinessArea        varchar(1000),
   AccountCode          varchar(100),
   BankID               varchar(100),
   Email                varchar(50),
   ZiPCode              varchar(50),
   FaxNumber            varchar(50),
   ReuseDate            datetime,
   CancelDate           datetime,
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (RecordsID)
);

/*==============================================================*/
/* Table: T_HR_CustomGuerdon                                    */
/*==============================================================*/
create table T_HR_CustomGuerdon
(
   CustomGuerdonID      varchar(50) not null,
   SalaryStandardID     varchar(50),
   CustomGuerdonSetID   varchar(50),
   CalculateFormula     varchar(2000),
   Sum                  numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (CustomGuerdonID)
);

/*==============================================================*/
/* Table: T_HR_CustomGuerdonArchive                             */
/*==============================================================*/
create table T_HR_CustomGuerdonArchive
(
   CustomGuerdonArchiveID varchar(50) not null,
   SalaryArchiveID      varchar(50),
   CustomerGuerdonID    varchar(50),
   Sum                  numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (CustomGuerdonArchiveID)
);

/*==============================================================*/
/* Table: T_HR_CustomGuerdonArchiveHis                          */
/*==============================================================*/
create table T_HR_CustomGuerdonArchiveHis
(
   CustomGuerdonArchiveID varchar(50) not null,
   SalaryArchiveID      varchar(50),
   CustomerGuerdonID    varchar(50),
   Sum                  numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (CustomGuerdonArchiveID)
);

/*==============================================================*/
/* Table: T_HR_CustomGuerdonRecord                              */
/*==============================================================*/
create table T_HR_CustomGuerdonRecord
(
   CustomGuerdonRecordID varchar(50) not null,
   EmployeeID           varchar(50) not null,
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   SalaryMonth          varchar(50),
   SalaryYear           varchar(50),
   GenerateType         varchar(50) comment '0�Զ����ɵ�
            1�ֶ���ӵ�',
   CustomerGuerdonID    varchar(50),
   GuerdonName          varchar(100),
   SalarySum            numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   CHECKSTATE           varchar(50),
   primary key (CustomGuerdonRecordID)
);

/*==============================================================*/
/* Table: T_HR_CustomGuerdonSet                                 */
/*==============================================================*/
create table T_HR_CustomGuerdonSet
(
   CustomGuerdonSetID   varchar(50) not null,
   GuerdonName          varchar(50),
   GuerdonCategory      varchar(50) comment 'ָ����Ŀ�����ԣ��ӻ����',
   CalculatorType       varchar(50) comment '1����ϵͳ�ж������Ŀ֮��ļ��㹫ʽ��
            2��н�ʵ��������룻
            3���ֹ�¼�룻',
   GuerdonSum           numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   CheckState           varchar(1),
   EditState            varchar(1),
   primary key (CustomGuerdonSetID)
);

/*==============================================================*/
/* Table: T_HR_Department                                       */
/*==============================================================*/
create table T_HR_Department
(
   DepartMentID         varchar(50) not null,
   FatherType           varchar(50),
   FatherID             varchar(50),
   DepartMentBossHead   varchar(50) not null,
   CompanyID            varchar(50),
   DepartmentDictionaryID varchar(50),
   DepartMentFunction   varchar(2000),
   CheckState           varchar(1),
   EditState            varchar(1),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (DepartMentID)
);

/*==============================================================*/
/* Table: T_HR_DepartmentDictionary                             */
/*==============================================================*/
create table T_HR_DepartmentDictionary
(
   DepartmentDictionaryID varchar(50) not null,
   DepartMentType       varchar(1) comment '�������:0ͨ�ò���,1�ز���ҵ����,2������ҵ����,3������ҵ����,4�����ҵ����,������ҵ����',
   DepartMentCode       varchar(50),
   DepartmentName       varchar(50),
   DepartMentFunction   varchar(2000),
   DepartMentLevel      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (DepartmentDictionaryID)
);

/*==============================================================*/
/* Table: T_HR_DepartmentHistory                                */
/*==============================================================*/
create table T_HR_DepartmentHistory
(
   RecordsID            varchar(50) not null,
   DepartmentDictionaryID varchar(50),
   DepartMentID         varchar(50),
   CompanyID            varchar(50),
   DepartMentFunction   varchar(2000),
   EditState            varchar(1),
   CancelDate           datetime,
   ReuseDate            datetime,
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (RecordsID)
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEE                                         */
/*==============================================================*/
create table T_HR_EMPLOYEE
(
   EmployeeID           varchar(50) not null,
   EmployeeCode         varchar(50) not null,
   EmployeeCName        varchar(50) not null,
   EmployeeEName        varchar(50) not null,
   EmployeeLevel        varchar(50),
   Sex                  varchar(1) not null,
   ProfessionalTitle    varchar(50),
   IDType               varchar(50) not null,
   IDNumber             varchar(50) not null,
   Nation               varchar(50),
   Height               varchar(50),
   BankID               varchar(50),
   BankCardNumber       varchar(50),
   ResumeId             varchar(50),
   Province             varchar(100),
   BloodType            varchar(50),
   Marriage             varchar(50),
   HasChildren          varchar(50),
   Politics             varchar(100),
   RegResidence         varchar(200),
   RegResidenceType     varchar(50) comment '�������ͣ�ʡ����Ͻ��',
   ResidenceType        varchar(50) comment '�������ͣ�
            0 ��ũҵ��ͥ����
            1 ��ũҵ���廧��
            2 ��ũҵ�չһ���
            3 ũҵ��??',
   Email                varchar(50),
   Mobile               varchar(50),
   SecondLanguage       varchar(50),
   SecondLanguageDegree varchar(50),
   OfficePhone          varchar(50),
   CurrentAddress       varchar(100),
   UrgencyPerson        varchar(50),
   UrgencyContact       varchar(50),
   FamilyAddress        varchar(100),
   FamilyZIPCode        varchar(100),
   FamilyPhone          varchar(50),
   FingerPrintID        varchar(50),
   Photo                longblob,
   TopEducation         varchar(100),
   Birthday             datetime,
   EmployeeState        varchar(50),
   WorkingAge           numeric(8,0),
   EMPLOYEETYPE         varchar(1),
   EditState            varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   OtherCommunicate     varchar(500) comment 'RTX��QQ',
   primary key (EmployeeID)
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEEPOST                                     */
/*==============================================================*/
create table T_HR_EMPLOYEEPOST
(
   EmployeePostID       varchar(50) not null,
   IsAgency             varchar(1) comment '�Ƿ����:0�Ǵ���,1�����λ',
   EmployeeID           varchar(50),
   PostID               varchar(50),
   SalaryLevel          numeric(8,0),
   CheckState           varchar(1),
   EditState            varchar(1),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   PostLevel            numeric(8,0),
   primary key (EmployeePostID)
);

/*==============================================================*/
/* Table: T_HR_EMPLOYEEPOSTHISTORY                              */
/*==============================================================*/
create table T_HR_EMPLOYEEPOSTHISTORY
(
   RecordsID            varchar(50) not null,
   EmployeePostID       varchar(50),
   PostID               varchar(50),
   EmployeeID           varchar(50),
   CheckState           varchar(1),
   SalaryLevel          numeric(8,0),
   EditState            varchar(1),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (RecordsID)
);

/*==============================================================*/
/* Table: T_HR_EducateHistory                                   */
/*==============================================================*/
create table T_HR_EducateHistory
(
   EducateHistoryID     varchar(50) not null,
   ResumeId             varchar(50),
   SchooName            varchar(50),
   Specialty            varchar(50),
   Major                varchar(50),
   StartDate            varchar(50),
   EndDate              varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (EducateHistoryID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeAbnormRecord                             */
/*==============================================================*/
create table T_HR_EmployeeAbnormRecord
(
   AbnormRecordID       varchar(50) not null,
   AttendanceRecordID   varchar(50),
   AbnormalDate         datetime,
   AbnormCategory       varchar(50) comment 'ȱ��',
   AttendPeriod         varchar(1) comment '����,����,����,����',
   AbnormalTime         numeric(8,0) comment '��Сʱ��',
   SingInState          varchar(1) comment 'ǩ��״̬��0��δǩ����1����ǩ��',
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   CreateCompanyID      varchar(50),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (AbnormRecordID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeAddSum                                   */
/*==============================================================*/
create table T_HR_EmployeeAddSum
(
   AddSumID             varchar(50) not null,
   MonthlyBatchID       varchar(50),
   EmployeeID           varchar(50) not null,
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   ProjectName          varchar(50),
   ProjectCode          varchar(50),
   ProjectMoney         numeric(8,0),
   SystemType           varchar(50),
   DealYear             varchar(50),
   DealMonth            varchar(50),
   CHECKSTATE           varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (AddSumID)
);

alter table T_HR_EmployeeAddSum comment '�ṩ���ⲿϵͳ����Ա���ӿۿ���';

/*==============================================================*/
/* Table: T_HR_EmployeeAddSumBatch                              */
/*==============================================================*/
create table T_HR_EmployeeAddSumBatch
(
   MonthlyBatchID       varchar(50) not null,
   BalanceYear          numeric(8,0),
   BalanceMonth         numeric(8,0),
   BalanceDate          datetime,
   BalanceObjectType    varchar(1),
   BalanceObjectId      varchar(50),
   BalanceObjectName    varchar(500),
   CheckState           varchar(1),
   EditState            varchar(1),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   Remark               varchar(2000),
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (MonthlyBatchID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeCancelLeave                              */
/*==============================================================*/
create table T_HR_EmployeeCancelLeave
(
   CancelLeaveID        varchar(50) not null,
   LeaveRecordID        varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   StartDateTime        datetime,
   EndDateTime          datetime,
   LeaveDays            numeric(8,0),
   LeaveHours           numeric(8,0),
   TotalHours           numeric(8,0),
   Reason               varchar(50),
   CheckState           varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (CancelLeaveID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeCheck                                    */
/*==============================================================*/
create table T_HR_EmployeeCheck
(
   BEREGULARID          varchar(50) not null,
   EmployeeID           varchar(50),
   EMPLOYEENAME         varchar(50),
   EMPLOYEECODE         varchar(50),
   ProbationPeriod      int,
   CheckDate            datetime,
   CheckResult          varchar(50),
   CheckContent         text,
   SelfCheckResult      varchar(50),
   CheckUser            varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   BeRegularDate        datetime,
   CHECKSTATE           varchar(50),
   ONDUTYDATE           datetime,
   REPORTDATE           datetime,
   REMARK               varchar(500),
   primary key (BEREGULARID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeClockInRecord                            */
/*==============================================================*/
create table T_HR_EmployeeClockInRecord
(
   ClockInRecordID      varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   ClockID              varchar(50),
   FingerPrintID        varchar(50),
   PunchDate            datetime,
   PunchTime            varchar(100),
   VERIFYCODE           numeric(8,0) comment '��֤��ʽ:0-ָ�ƣ�1-����룻2-����',
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (ClockInRecordID)
);

alter table T_HR_EmployeeClockInRecord comment '�ӿ��ڻ�����';

/*==============================================================*/
/* Table: T_HR_EmployeeContract                                 */
/*==============================================================*/
create table T_HR_EmployeeContract
(
   EmployeeContactID    varchar(50) not null,
   EmployeeID           varchar(50),
   ContactCode          varchar(50),
   NoEndDate            varchar(50) comment '0�������޹̶����޺�ͬ
            1�����޹̶����޺�ͬ
            ',
   FromDate             datetime,
   ToDate               varchar(50),
   ContactPeriod        int,
   EndDate              datetime,
   Reason               varchar(50),
   Attachment           longblob,
   AttachmentPath       varchar(2000),
   CheckState           varchar(1),
   EditState            varchar(1),
   IsSpecialContract    varchar(50),
   AlarmDay             varchar(50),
   Remark               varchar(2000),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (EmployeeContactID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeEntry                                    */
/*==============================================================*/
create table T_HR_EmployeeEntry
(
   EmployeeEntryID      varchar(50) not null,
   EmployeeID           varchar(50),
   CheckState           varchar(50),
   EntryDate            datetime,
   OnPostDate           datetime,
   ProbationPeriod      numeric(8,0),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (EmployeeEntryID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeEvectionRecord                           */
/*==============================================================*/
create table T_HR_EmployeeEvectionRecord
(
   EvectionRecordID     varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   EvectionRecordCategory varchar(50),
   StartTime            varchar(50),
   EndTime              varchar(50),
   StartDate            datetime,
   EndDate              datetime,
   TotalDays            numeric(8,0),
   Destination          varchar(100),
   EvectionReason       varchar(500),
   ReplacePeople        varchar(50),
   CheckState           varchar(1),
   SubsidyType          varchar(50) comment '0���Σ�1����',
   SubsidyValue         numeric(8,0) comment '�������',
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (EvectionRecordID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeEvectionReport                           */
/*==============================================================*/
create table T_HR_EmployeeEvectionReport
(
   EvectionReportID     varchar(50) not null,
   EvectionRecordID     varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   EvectionRecordCategory varchar(50),
   StartTime            varchar(50),
   EndTime              varchar(50),
   StartDate            datetime,
   EndDate              datetime,
   TotalDays            numeric(8,0),
   Destination          varchar(100),
   EvectionReason       varchar(500),
   ReplacePeople        varchar(50),
   CheckState           varchar(1),
   SubsidyType          varchar(50) comment '0���Σ�1����',
   SubsidyValue         numeric(8,0) comment '�������',
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (EvectionReportID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeInsurance                                */
/*==============================================================*/
create table T_HR_EmployeeInsurance
(
   EmployInsuranceID    varchar(50) not null,
   EmployeeID           varchar(50),
   InsuranceCategory    varchar(50),
   InsuranceName        varchar(50),
   InsuranceCompany     varchar(50),
   InsuranceCost        numeric(8,0),
   ContractCode         varchar(50),
   StartDate            varchar(50),
   LastDate             varchar(50),
   Period               varchar(50),
   AlarmDay             varchar(50),
   InsurancePay         varchar(50),
   EditState            varchar(1),
   CheckState           varchar(1),
   Remark               varchar(2000),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (EmployInsuranceID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeLeaveRecord                              */
/*==============================================================*/
create table T_HR_EmployeeLeaveRecord
(
   LeaveRecordID        varchar(50) not null,
   LeaveTypeSetID       varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   StartDateTime        datetime,
   EndDateTime          datetime,
   LeaveDays            numeric(8,0),
   LeaveHours           numeric(8,0),
   TotalHours           numeric(8,0),
   Reason               varchar(50),
   AttachmentPath       varchar(50),
   CheckState           varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (LeaveRecordID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeLevelDayCount                            */
/*==============================================================*/
create table T_HR_EmployeeLevelDayCount
(
   RecordID             varchar(50) not null,
   LeaveTypeSetID       varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   VacationType         varchar(1),
   Days                 numeric(8,0),
   EfficDate            datetime,
   TerminateDate        datetime,
   Remark               varchar(2000),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (RecordID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeLevelDayDetails                          */
/*==============================================================*/
create table T_HR_EmployeeLevelDayDetails
(
   LevelDayDetailsID    varchar(50) not null,
   RecordID             varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   VacationType         varchar(1),
   Days                 numeric(8,0),
   EfficDate            datetime,
   Remark               varchar(2000),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (LevelDayDetailsID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeLoginRecord                              */
/*==============================================================*/
create table T_HR_EmployeeLoginRecord
(
   LoginRecordID        varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   UserName             varchar(50) not null,
   LoginDate            varchar(50),
   LoginTime            varchar(50),
   Remark               varchar(2000),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (LoginRecordID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeOverTimeDetailRd                         */
/*==============================================================*/
create table T_HR_EmployeeOverTimeDetailRd
(
   OverTimeDetailRdID   varchar(50) not null,
   StartDateTime        datetime,
   EndDateTime          datetime,
   OverTimeHours        varchar(50),
   PayCategory          varchar(50) comment '�Ӱ౨�귽ʽ��0 ���ݷ�ʽ��1 �Ӱ๤�ʷ�ʽ��2 �ȵ����ٸ����ʷ�ʽ��3 �ޱ��귽ʽ��',
   Remark               varchar(2000),
   primary key (OverTimeDetailRdID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeOverTimeRecord                           */
/*==============================================================*/
create table T_HR_EmployeeOverTimeRecord
(
   OverTimeRecordID     varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   OverTimeCate         varchar(50) comment '�Ӱ���Ч��ʽ
            0 ���ͨ���ļӰ����룻1 ��������ʱ�����Զ��ۼƣ�2 ���ڼ����ۼƣ�',
   StartDate            datetime,
   EndDate              datetime,
   OverTimeHours        varchar(50),
   PayCategory          varchar(50) comment '�Ӱ౨�귽ʽ��0 ���ݷ�ʽ��1 �Ӱ๤�ʷ�ʽ��2 �ȵ����ٸ����ʷ�ʽ��3 �ޱ��귽ʽ��',
   IsConvertLeveDay     varchar(1),
   BeginCardTime        varchar(50),
   BeginCardType        varchar(1) comment '0,����ˢ��,1 ǩ��',
   BeginCardState       varchar(50),
   EndCardTime          varchar(50),
   EndCardType          varchar(1) comment '0,����ˢ��,1 ǩ��',
   EndCardState         varchar(50),
   CheckState           varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (OverTimeRecordID)
);

/*==============================================================*/
/* Table: T_HR_EmployeePostChange                               */
/*==============================================================*/
create table T_HR_EmployeePostChange
(
   POStCHANGEID         varchar(50) not null,
   EmployeeID           varchar(50),
   POStChangCategory    varchar(50),
   PostChangReason      varchar(100),
   FromCompanyID        varchar(50),
   ToCompanyID          varchar(50),
   FromDepartmentID     varchar(50),
   TODepartmentID       varchar(50),
   FromPostID           varchar(50),
   FromPostLevel        numeric(8,0),
   FromSalaryLevel      numeric(8,0),
   IsAgency             varchar(50),
   TOPostID             varchar(50),
   ToPostLevel          numeric(8,0),
   ToSalaryLevel        numeric(8,0),
   EmployeePostID       varchar(50) not null,
   CheckState           varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   ChangeDate           varchar(50),
   primary key (POStCHANGEID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeSalaryRecord                             */
/*==============================================================*/
create table T_HR_EmployeeSalaryRecord
(
   EmployeeSalaryRecordID varchar(50) not null,
   MonthlyBatchID       varchar(50),
   SalaryStandardID     varchar(50),
   EmployeeID           varchar(50) not null,
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   SalaryMonth          varchar(50),
   SalaryYear           varchar(50),
   AttendanceUnusualDeduct numeric(8,0),
   AttendanceUnusualTime varchar(50),
   AttendanceUnusualTimes varchar(50),
   PaidDate             datetime,
   PaidLateDate         datetime,
   OvertimeTimes        varchar(50),
   OvertimeSum          numeric(8,0),
   AbsentTimes          varchar(50),
   AbsentDeduct         numeric(8,0),
   Leavetime            varchar(50),
   LeaveDeduct          numeric(8,0),
   EvectionTimes        numeric(8,0),
   EvectionSubsidy      numeric(8,0),
   PaidBy               varchar(50),
   PaidType             varchar(50) comment '0���У��ֽ𣬴ӷ�����Ĭ�ϣ��������޸�',
   ActuallyPay          varchar(2000),
   BasicSalary          numeric(8,0),
   PostSalary           numeric(8,0),
   SecurityAllowance    numeric(8,0),
   HousingAllowance     numeric(8,0),
   AreaDifAllowance     numeric(8,0),
   FoodAllowance        numeric(8,0),
   FixedIncomeSum       numeric(8,0),
   AbsenceDays          numeric(8,0),
   VacationDeduct       numeric(8,0),
   WorkingSalary        numeric(8,0),
   OtherAddDeduct       numeric(8,0),
   Subtotal             numeric(8,0),
   HousingAllowanceDeduct numeric(8,0),
   PersonalSICost       numeric(8,0),
   PretaxSubTotal       numeric(8,0),
   Balance              numeric(8,0),
   PersonalIncomeTax    numeric(8,0),
   OtherSubjoin         numeric(8,0),
   OffenceDeduct        numeric(8,0),
   MantissaDeduct       numeric(8,0),
   DeductTotal          numeric(8,0),
   PerformanceSum       numeric(8,0),
   CustomerSum          numeric(8,0),
   Confirm              varchar(50),
   ConfirmDate          datetime,
   DrawMoneyRemark      varchar(50),
   LoanDeduct           numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   PayConfirm           varchar(1),
   EditState            varchar(1),
   CHECKSTATE           varchar(1),
   primary key (EmployeeSalaryRecordID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeSalaryRecordItem                         */
/*==============================================================*/
create table T_HR_EmployeeSalaryRecordItem
(
   SalaryRecordItemID   varchar(50) not null,
   EmployeeSalaryRecordID varchar(50),
   SalaryArchiveID      varchar(50),
   SalaryStandardID     varchar(50),
   SalaryItemID         varchar(50),
   CalculateFormula     varchar(2000),
   Sum                  varchar(2000),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   OrderNumber          numeric(8,0),
   primary key (SalaryRecordItemID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeSignInDetail                             */
/*==============================================================*/
create table T_HR_EmployeeSignInDetail
(
   SignInDetailID       varchar(50) not null,
   SignInID             varchar(50),
   AbnormRecordID       varchar(50),
   AbnormalDate         datetime,
   AbnormCategory       varchar(50) comment 'ȱ��',
   AttendPeriod         varchar(1) comment '����,����,����,����',
   AbnormalTime         numeric(8,0) comment '��Сʱ��',
   ReasonCategory       varchar(1) comment '©��,�����,��',
   DetailReason         varchar(2000),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   CreateCompanyID      varchar(50),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (SignInDetailID)
);

/*==============================================================*/
/* Table: T_HR_EmployeeSignInRecord                             */
/*==============================================================*/
create table T_HR_EmployeeSignInRecord
(
   SignInID             varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   SignInTime           datetime,
   CheckState           varchar(1) comment '0,©��,1�����,2��е����',
   SIGNINCATEGORY       varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SignInID)
);

/*==============================================================*/
/* Table: T_HR_Experience                                       */
/*==============================================================*/
create table T_HR_Experience
(
   ExperienceID         varchar(50) not null,
   ResumeId             varchar(50),
   CompanyName          varchar(50),
   Post                 varchar(50),
   Salary               varchar(50),
   StartDate            varchar(50),
   EndDate              varchar(50),
   JobDescription       varchar(2000),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (ExperienceID)
);

/*==============================================================*/
/* Table: T_HR_FamilyMember                                     */
/*==============================================================*/
create table T_HR_FamilyMember
(
   FamilyMemberID       varchar(50) not null,
   EmployeeID           varchar(50),
   Name                 varchar(50),
   Age                  varchar(50),
   Sex                  varchar(1),
   Relationship         varchar(50),
   Contact              varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (FamilyMemberID)
);

/*==============================================================*/
/* Table: T_HR_FreeLeaveDaySet                                  */
/*==============================================================*/
create table T_HR_FreeLeaveDaySet
(
   FreeLeaveDaySetID    varchar(50) not null,
   LeaveTypeSetID       varchar(50),
   MiniMonth            numeric(8,0),
   MaxMonth             numeric(8,0),
   LeaveDays            numeric(8,0),
   IsPerfectAttendanceFactor varchar(50),
   OffestType           varchar(1) comment '1��һ�������꣬��ʱ�������ڳ�����¼٣�2����N�����꣬ÿ���һ�β��¼���һ�Σ�3�������ƣ������ڳ�����¼٣�',
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (FreeLeaveDaySetID)
);

alter table T_HR_FreeLeaveDaySet comment '��¼Ա���ɴ�н�ݼ��������������Ϳ�������٣�Ҳ�����Ǳ�ļ���';

/*==============================================================*/
/* Table: T_HR_ImportSetDetail                                  */
/*==============================================================*/
create table T_HR_ImportSetDetail
(
   DetailID             varchar(50) not null,
   MasterID             varchar(50),
   EntityColumnName     varchar(100),
   EntityColumnCode     varchar(100),
   EXECELROW            numeric(8,0),
   EXECELCOLUMN         varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (DetailID)
);

/*==============================================================*/
/* Table: T_HR_ImportSetMaster                                  */
/*==============================================================*/
create table T_HR_ImportSetMaster
(
   MasterID             varchar(50) not null,
   City                 varchar(100),
   EntityName           varchar(100),
   EntityCode           varchar(100),
   StartColumn          varchar(50),
   StartRow             varchar(50),
   EndRow               varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (MasterID)
);

/*==============================================================*/
/* Table: T_HR_KPIPointDefine                                   */
/*==============================================================*/
create table T_HR_KPIPointDefine
(
   KPIPointID           varchar(50) not null,
   CheckCategoryID      varchar(50),
   PerformanceGoal      varchar(2000),
   CheckModelId         varchar(50),
   IsFlowStepCheck      varchar(1),
   FlowID               varchar(50),
   FlowName             varchar(50),
   FlowStepID           varchar(50),
   FlowStepName         varchar(50),
   DealTime             numeric(8,0) comment 'ϵͳ�������Ч����ʱ�䣬������',
   SystemGradeWeighing  numeric(8,0) comment 'ϵͳ���Ȩ�أ�ϵͳ�Զ�����',
   PersonGradeWeighing  numeric(8,0),
   SpotGradeWeighing    numeric(8,0),
   SpotCheckGroupID     varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (KPIPointID)
);

/*==============================================================*/
/* Table: T_HR_KPIRecord                                        */
/*==============================================================*/
create table T_HR_KPIRecord
(
   KPIRecordID          varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   KPIPointID           varchar(50),
   T_H_SpotCheckerID    varchar(50),
   FlowID               varchar(50),
   FlowName             varchar(50),
   FlowStep             varchar(50),
   CheckDate            datetime,
   SystemGradeScroe     numeric(8,0),
   PersonGradeScroe     numeric(8,0),
   PersonID             varchar(50),
   PersonComment        varchar(2000),
   SpotGradeScore       numeric(8,0),
   SpotPersonId         varchar(50),
   SpotPersonComment    varchar(2000),
   TotalScore           varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (KPIRecordID)
);

/*==============================================================*/
/* Table: T_HR_KPIRecordAppeal                                  */
/*==============================================================*/
create table T_HR_KPIRecordAppeal
(
   KPIAppealID          varchar(50) not null,
   KPIRecordID          varchar(50),
   AppealReason         varchar(2000),
   CheckState           varchar(1),
   EditState            varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (KPIAppealID)
);

/*==============================================================*/
/* Table: T_HR_KPIRecordPersonSummary                           */
/*==============================================================*/
create table T_HR_KPIRecordPersonSummary
(
   KPIRecordSummaryID   varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   SystemType           varchar(50),
   PerformYear          varchar(50),
   PerformQuarter       varchar(50),
   PerformMoth          varchar(50),
   Average              numeric(8,0),
   ExamineDate          varchar(50),
   ExaminePoint         numeric(8,0),
   GradePersonId        varchar(50),
   LeadComment          varchar(2000),
   CheckState           varchar(1),
   EditState            varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   CreateCompanyID      varchar(50),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (KPIRecordSummaryID)
);

/*==============================================================*/
/* Table: T_HR_LeaveTypeSet                                     */
/*==============================================================*/
create table T_HR_LeaveTypeSet
(
   LeaveTypeSetID       varchar(50) not null,
   LeaveTypeName        varchar(50),
   LeaveTypeValue       varchar(50),
   IsFreeLeaveDay       varchar(1) comment '�Ƿ��н��:0:��,1��,���Ǵ�н�ٵ�ʱ��Ӧ���д�н���ӱ��¼',
   MaxDays              numeric(8,0),
   FineType             varchar(1) comment '0,����(��н��) 1���ۿ2������+�ۿ3������+��н�ٵֿ�+�ۿ',
   SexRestrict          varchar(1) comment '�Ա����ƣ����ޣ��У�Ů',
   PostLevelRestrict    varchar(50) comment '���ܵĸ�λ����ʲô???λ�������ϵ�����',
   EntryRestrict        varchar(50),
   OffestType           varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   Remark               varchar(2000),
   UpdateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   CreateUserID         varchar(50),
   primary key (LeaveTypeSetID)
);

alter table T_HR_LeaveTypeSet comment '����Ա���ļ���
������٣�ÿ�����ܵĲ���������
';

/*==============================================================*/
/* Table: T_HR_LeftOffice                                       */
/*==============================================================*/
create table T_HR_LeftOffice
(
   DIMISSIONID          varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeePostID       varchar(50),
   LeftOfficeDate       datetime,
   StopPayMentDate      datetime,
   LeftOfficeCategory   varchar(50),
   LeftOfficeReason     varchar(500),
   CheckState           varchar(1),
   ApplyDate            datetime,
   ConfirmDate          datetime,
   Remark               varchar(2000),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (DIMISSIONID)
);

/*==============================================================*/
/* Table: T_HR_LeftOfficeConfirm                                */
/*==============================================================*/
create table T_HR_LeftOfficeConfirm
(
   ConfirmID            varchar(50) not null,
   DIMISSIONID          varchar(50),
   EmployeeID           varchar(50),
   StopPayMentDate      datetime,
   CheckState           varchar(1),
   ConfirmDate          datetime,
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (ConfirmID)
);

/*==============================================================*/
/* Table: T_HR_OrgCheckSummary                                  */
/*==============================================================*/
create table T_HR_OrgCheckSummary
(
   OrgCheckSummaryID    varchar(50) not null,
   FatherlID            varchar(50),
   IsTop                varchar(50),
   OrderNumber          numeric(8,0),
   CheckObjType         varchar(1),
   CheckObjID           varchar(50),
   CheckModelName       varchar(500),
   PerformanceGoal      varchar(2000),
   Point                numeric(8,0) comment '���˷�ֵ����������ģ���ֶ����ã�����ģ�����Ȩ���Զ������',
   PerformYear          varchar(50),
   PerformQuarter       varchar(50),
   PerformMoth          varchar(50),
   Average              numeric(8,0),
   ExamineDate          varchar(50),
   ExaminePoint         numeric(8,0),
   LeadComment          varchar(2000),
   CheckState           varchar(1),
   Remark               varchar(2000),
   EditState            varchar(1),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (OrgCheckSummaryID)
);

/*==============================================================*/
/* Table: T_HR_OrganizationCheckModel                           */
/*==============================================================*/
create table T_HR_OrganizationCheckModel
(
   OrgCheckModelID      varchar(50) not null,
   FatherlID            varchar(50),
   IsTop                varchar(50),
   OrderNumber          numeric(8,0),
   CheckObjType         varchar(1),
   CheckObjID           varchar(50),
   CheckModelName       varchar(500),
   PerformanceGoal      varchar(2000),
   Weighing             numeric(8,0),
   Point                numeric(8,0) comment '���˷�ֵ����������ģ���ֶ����ã�����ģ�����Ȩ���Զ������',
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (OrgCheckModelID)
);

/*==============================================================*/
/* Table: T_HR_OutPlanDays                                      */
/*==============================================================*/
create table T_HR_OutPlanDays
(
   OutPlanDayID         varchar(50) not null,
   VacationID           varchar(50),
   StartDate            datetime,
   EndDate              datetime,
   Days                 numeric(8,0),
   DayType              varchar(1),
   primary key (OutPlanDayID)
);

/*==============================================================*/
/* Table: T_HR_OvertimeReward                                   */
/*==============================================================*/
create table T_HR_OvertimeReward
(
   OvertimeRewardID     varchar(50) not null,
   OvertimeRewardName   varchar(50),
   UsualOvertimePayRate numeric(8,0),
   WeekEndPayRate       numeric(8,0),
   VacationPayRate      numeric(8,0),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (OvertimeRewardID)
);

/*==============================================================*/
/* Table: T_HR_PensionAlarmSet                                  */
/*==============================================================*/
create table T_HR_PensionAlarmSet
(
   PensionSetID         varchar(50) not null,
   CompanyID            varchar(50),
   AlarmPay             int,
   AlarmDown            int,
   Remark               varchar(2000),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (PensionSetID)
);

/*==============================================================*/
/* Table: T_HR_PensionDetail                                    */
/*==============================================================*/
create table T_HR_PensionDetail
(
   PensionDetailID      varchar(50) not null,
   EmployeeID           varchar(50),
   PensionMasterID      varchar(50),
   CardID               varchar(50),
   PensionYear          numeric(8,0),
   PensionMoth          numeric(8,0),
   EmployeeName         varchar(50),
   ComputerNo           varchar(50),
   PayBase              numeric(8,0),
   TotalCost            numeric(8,0),
   TotalPersonCost      numeric(8,0),
   TotalCompanyCost     numeric(8,0),
   PensionPersonCost    numeric(8,0),
   PensionCompanyCost   numeric(8,0),
   HousingFundCompanyCost numeric(8,0),
   MedicarePersonCost   numeric(8,0),
   MedicareCompanyCost  numeric(8,0),
   InjuryInsuranceCompanyCost numeric(8,0),
   UnemployedInsuranceCompanyCost numeric(8,0),
   BirthInsuranceCompanyCost numeric(8,0),
   PayDate              datetime,
   CompanyID            varchar(500),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   IDNUMBER             varchar(50),
   primary key (PensionDetailID)
);

/*==============================================================*/
/* Table: T_HR_PensionMaster                                    */
/*==============================================================*/
create table T_HR_PensionMaster
(
   PensionMasterID      varchar(50) not null,
   EmployeeID           varchar(50),
   CardID               varchar(50),
   ComputerNo           varchar(50),
   PensionCity          varchar(100),
   StartDate            datetime,
   LastDate             datetime,
   IsValid              varchar(50) comment '0 ��Ч
            1 ��Ч',
   CheckState           varchar(1),
   EditState            varchar(1),
   Remark               varchar(2000),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (PensionMasterID)
);

alter table T_HR_PensionMaster comment 'EmploymentSocialInsurance';

/*==============================================================*/
/* Table: T_HR_PerformanceRewardRecord                          */
/*==============================================================*/
create table T_HR_PerformanceRewardRecord
(
   PerformanceRewardRecordID varchar(50) not null,
   PerformanceSum       numeric(8,0),
   EmployeeID           varchar(50) not null,
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   SalaryMonth          varchar(50),
   SalaryYear           varchar(50),
   GenerateType         varchar(50) comment '0�Զ����ɵģ�1�ֶ������',
   CHECKSTATE           varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   PerformanceScore     numeric(8,0),
   StartDate            datetime,
   EndDate              datetime,
   primary key (PerformanceRewardRecordID)
);

/*==============================================================*/
/* Table: T_HR_PerformanceRewardSet                             */
/*==============================================================*/
create table T_HR_PerformanceRewardSet
(
   PerformanceRewardSetID varchar(50) not null,
   PerformanceCategory  varchar(50),
   PerformanceCapital   numeric(8,0),
   CalculateType        varchar(50) comment '0�̶�ֵ��1����ֵ',
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   EditState            varchar(1),
   CheckState           varchar(1),
   primary key (PerformanceRewardSetID)
);

/*==============================================================*/
/* Table: T_HR_Post                                             */
/*==============================================================*/
create table T_HR_Post
(
   PostID               varchar(50) not null,
   PostDictionaryID     varchar(50),
   CompanyID            varchar(50),
   DepartMentID         varchar(50),
   DepartmentName       varchar(100),
   PostFunction         varchar(2000),
   PostNumber           int,
   PostLevel            numeric(8,0),
   PostCoefficient      varchar(50),
   SalaryLevel          numeric(8,0),
   PostGoal             varchar(500),
   FatherPostID         varchar(50),
   UnderNumber          int,
   PromoteDirection     varchar(50),
   ChangePost           varchar(50),
   CheckState           varchar(1),
   EditState            varchar(1),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (PostID)
);

/*==============================================================*/
/* Table: T_HR_PostDictionary                                   */
/*==============================================================*/
create table T_HR_PostDictionary
(
   PostDictionaryID     varchar(50) not null,
   DepartmentDictionaryID varchar(50),
   PostCode             varchar(50),
   PostName             varchar(50),
   PostFunction         varchar(2000),
   PostLevel            numeric(8,0),
   SalaryLevel          varchar(50),
   PromoteDirection     varchar(50),
   ChangePost           varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (PostDictionaryID)
);

/*==============================================================*/
/* Table: T_HR_PostHistory                                      */
/*==============================================================*/
create table T_HR_PostHistory
(
   RecordsID            varchar(50) not null,
   PostDictionaryID     varchar(50),
   PostID               varchar(50),
   DepartMentID         varchar(50),
   DepartmentName       varchar(100),
   COMPANYID            varchar(100),
   PostFunction         varchar(2000),
   PostNumber           int,
   PostGoal             varchar(100),
   CheckUser            varchar(50),
   FatherPostID         varchar(50),
   UnderNumber          int,
   PromoteDirection     varchar(100),
   ChangePost           varchar(50),
   EditState            varchar(1),
   ReuseDate            datetime,
   CancelDate           datetime,
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   primary key (RecordsID)
);

/*==============================================================*/
/* Table: T_HR_PostLevelDistinction                             */
/*==============================================================*/
create table T_HR_PostLevelDistinction
(
   PostLevelID          varchar(50) not null,
   SalarySystemID       varchar(50),
   PostLevel            varchar(50),
   BasicSalary          numeric(8,0),
   LevelBalance         numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (PostLevelID)
);

/*==============================================================*/
/* Table: T_HR_RelationPost                                     */
/*==============================================================*/
create table T_HR_RelationPost
(
   RecordID             varchar(50) not null,
   PostID               varchar(50),
   RelationPostId       varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (RecordID)
);

/*==============================================================*/
/* Table: T_HR_Resume                                           */
/*==============================================================*/
create table T_HR_Resume
(
   ResumeId             varchar(50) not null,
   WishCompany          varchar(300),
   WishPost             varchar(100),
   WishArea             varchar(100),
   Name                 varchar(50),
   Sex                  varchar(10),
   Nation               varchar(50),
   Province             varchar(100),
   Height               varchar(50),
   Marriage             varchar(1),
   IDCardNumber         varchar(50),
   Politics             varchar(100),
   RegResidence         varchar(200),
   Email                varchar(50),
   Mobile               varchar(50),
   CurrentAdress        varchar(100),
   UrgencyPerson        varchar(50),
   UrgencyContact       varchar(100),
   FamilyAddress        varchar(100),
   FamilyZIPCode        varchar(100),
   Photo                longblob,
   TiptopEducation      varchar(100),
   ExpectationSalary    varchar(50),
   HaveComRelation      varchar(10),
   ComRelationInfo      varchar(100),
   SelfAppraise         varchar(300),
   SchoolEncourage      varchar(500),
   OutEncourage         varchar(500),
   GraduateSchool       varchar(100),
   Specialty            varchar(300),
   EnglishLevel         varchar(20),
   Majors               varchar(500),
   EditState            varchar(1),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (ResumeId)
);

/*==============================================================*/
/* Table: T_HR_SalaryArchive                                    */
/*==============================================================*/
create table T_HR_SalaryArchive
(
   SalaryArchiveID      varchar(50) not null,
   SalarySolutionID     varchar(50),
   SalaryStandardID     varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   BaseSalary           numeric(8,0),
   PostSalary           numeric(8,0),
   SecurityAllowance    numeric(8,0),
   HousingAllowance     numeric(8,0),
   AreaDifAllowance     numeric(8,0),
   FoodAllowance        numeric(8,0),
   OtherAddDeduct       numeric(8,0),
   OtherAddDeductDesc   varchar(2000),
   HousingAllowanceDeduct numeric(8,0),
   PersonalSIRatio      numeric(8,0),
   PersonalIncomeRatio  numeric(8,0),
   OtherSubjoin         numeric(8,0),
   OtherSubjoinDesc     varchar(50),
   EditState            varchar(1),
   CHECKSTATE           varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreateCompanyID      varchar(50),
   CreateDepartmentID   varchar(50),
   CreatePostID         varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   SALARYSOLUTIONNAME   varchar(500),
   primary key (SalaryArchiveID)
);

/*==============================================================*/
/* Table: T_HR_SalaryArchiveHis                                 */
/*==============================================================*/
create table T_HR_SalaryArchiveHis
(
   SalaryArchiveID      varchar(50) not null,
   SalarySolutionID     varchar(50) not null,
   SalaryStandardID     varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   BaseSalary           numeric(8,0),
   PostSalary           numeric(8,0),
   SecurityAllowance    numeric(8,0),
   HousingAllowance     numeric(8,0),
   AreaDifAllowance     numeric(8,0),
   FoodAllowance        numeric(8,0),
   OtherAddDeduct       numeric(8,0),
   OtherAddDeductDesc   varchar(50),
   HousingAllowanceDeduct numeric(8,0),
   PersonalSIRatio      numeric(8,0),
   PersonalIncomeRatio  numeric(8,0),
   OtherSubjoin         numeric(8,0),
   OtherSubjoinDesc     varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   SALARYSOLUTIONNAME   varchar(500),
   primary key (SalaryArchiveID)
);

/*==============================================================*/
/* Table: T_HR_SalaryArchiveHisItem                             */
/*==============================================================*/
create table T_HR_SalaryArchiveHisItem
(
   SalaryArchiveItemID  varchar(50) not null,
   SalaryArchiveID      varchar(50),
   SalaryStandardID     varchar(50),
   SalaryItemID         varchar(50),
   CalculateFormula     varchar(2000),
   CalculateFormulaCode varchar(2000),
   Sum                  varchar(2000),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   OrderNumber          numeric(8,0),
   primary key (SalaryArchiveItemID)
);

/*==============================================================*/
/* Table: T_HR_SalaryArchiveItem                                */
/*==============================================================*/
create table T_HR_SalaryArchiveItem
(
   SalaryArchiveItemID  varchar(50) not null,
   SalaryArchiveID      varchar(50),
   SalaryStandardID     varchar(50),
   SalaryItemID         varchar(50),
   CalculateFormula     varchar(2000),
   CalculateFormulaCode varchar(2000),
   Sum                  varchar(2000),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   OrderNumber          numeric(8,0),
   primary key (SalaryArchiveItemID)
);

/*==============================================================*/
/* Table: T_HR_SalaryItem                                       */
/*==============================================================*/
create table T_HR_SalaryItem
(
   SalaryItemID         varchar(50) not null,
   SalaryItemCode       varchar(50),
   SalaryItemName       varchar(50),
   SalaryItemType       varchar(50) comment '����������:��н��,������,��Ч��.',
   CalculatorType       varchar(50) comment '1�����㹫ʽ��
            2��н�ʵ��������룻
            3���ֹ�¼�룻',
   CalculateFormula     varchar(2000),
   CalculateFormulaCode varchar(2000),
   GuerdonSum           numeric(8,0),
   EntityName           varchar(50),
   EntityCode           varchar(50),
   EntityColumnName     varchar(100),
   EntityColumnCode     varchar(100),
   IsAutoGenerate       varchar(1),
   MustSelected         varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   UpdateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateDate           datetime default 'SYSDATE',
   primary key (SalaryItemID)
);

/*==============================================================*/
/* Table: T_HR_SalaryLevel                                      */
/*==============================================================*/
create table T_HR_SalaryLevel
(
   SalaryLevelID        varchar(50) not null,
   PostLevelID          varchar(50),
   SalaryLevel          varchar(50),
   SalarySum            numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SalaryLevelID)
);

/*==============================================================*/
/* Table: T_HR_SalaryRecordBatch                                */
/*==============================================================*/
create table T_HR_SalaryRecordBatch
(
   MonthlyBatchID       varchar(50) not null,
   BalanceYear          numeric(8,0),
   BalanceMonth         numeric(8,0),
   BalanceDate          datetime,
   BalanceObjectType    varchar(1),
   BalanceObjectId      varchar(50),
   BalanceObjectName    varchar(500),
   CheckState           varchar(1),
   EditState            varchar(1),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   Remark               varchar(2000),
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (MonthlyBatchID)
);

/*==============================================================*/
/* Table: T_HR_SalarySolution                                   */
/*==============================================================*/
create table T_HR_SalarySolution
(
   SalarySolutionID     varchar(50) not null,
   AreaDifferenceID     varchar(50),
   SalarySystemID       varchar(50),
   SalarySolutionName   varchar(500),
   SalaryCountDay       varchar(50),
   SalaryCountAlertDay  varchar(50),
   PayDay               varchar(50),
   BankName             varchar(50),
   BankAccountNo        varchar(50),
   PayType              varchar(50) comment '0���д�����1�ֽ������������Ĭ�����õ�',
   PayAlertDay          varchar(50),
   SalaryPrecision      varchar(50),
   TaxesBasic           numeric(8,0),
   TaxesCostRate        numeric(8,0),
   CheckState           varchar(1),
   EditState            varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SalarySolutionID)
);

/*==============================================================*/
/* Table: T_HR_SalarySolutionAssign                             */
/*==============================================================*/
create table T_HR_SalarySolutionAssign
(
   SalarySolutionAssignID varchar(50) not null,
   AssignedObjectID     varchar(50),
   AssignedObjectType   varchar(50),
   SalarySolutionID     varchar(50),
   StartDate            varchar(50),
   EndDate              varchar(50),
   CheckState           varchar(1),
   EditState            varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SalarySolutionAssignID)
);

/*==============================================================*/
/* Table: T_HR_SalarySolutionItem                               */
/*==============================================================*/
create table T_HR_SalarySolutionItem
(
   SolutionItemID       varchar(50) not null,
   SalaryItemID         varchar(50),
   SalarySolutionID     varchar(50),
   OrderNumber          numeric(8,0),
   primary key (SolutionItemID)
);

/*==============================================================*/
/* Table: T_HR_SalarySolutionStandard                           */
/*==============================================================*/
create table T_HR_SalarySolutionStandard
(
   SolutionStandardID   varchar(50) not null,
   SalaryStandardID     varchar(50),
   SalarySolutionID     varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SolutionStandardID)
);

/*==============================================================*/
/* Table: T_HR_SalaryStandard                                   */
/*==============================================================*/
create table T_HR_SalaryStandard
(
   SalaryStandardID     varchar(50) not null,
   SALARYSOLUTIONID     varchar(50),
   SalaryStandardName   varchar(200),
   BaseSalary           numeric(8,0),
   SalaryLevelID        varchar(50),
   PostSalary           numeric(8,0),
   SecurityAllowance    numeric(8,0),
   HousingAllowance     numeric(8,0),
   AreaDifAllowance     numeric(8,0),
   FoodAllowance        numeric(8,0),
   OtherAddDeduct       numeric(8,0),
   OtherAddDeductDesc   varchar(200),
   HousingAllowanceDeduct numeric(8,0),
   PersonalSIRatio      numeric(8,0),
   PersonalIncomeRatio  numeric(8,0),
   OtherSubjoin         numeric(8,0),
   OtherSubjoinDesc     varchar(50),
   CheckState           varchar(1),
   EditState            varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SalaryStandardID)
);

/*==============================================================*/
/* Table: T_HR_SalaryStandardItem                               */
/*==============================================================*/
create table T_HR_SalaryStandardItem
(
   StandRecordItemID    varchar(50) not null,
   SalaryStandardID     varchar(50),
   SalaryItemID         varchar(50),
   Sum                  numeric(8,0),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   OrderNumber          numeric(8,0),
   primary key (StandRecordItemID)
);

/*==============================================================*/
/* Table: T_HR_SalarySystem                                     */
/*==============================================================*/
create table T_HR_SalarySystem
(
   SalarySystemID       varchar(50) not null,
   SalarySystemName     varchar(200),
   CheckState           varchar(1),
   EditState            varchar(1),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   StartSalaryLevel     numeric(8,0),
   EndSalaryLevel       numeric(8,0),
   primary key (SalarySystemID)
);

/*==============================================================*/
/* Table: T_HR_SalaryTaxes                                      */
/*==============================================================*/
create table T_HR_SalaryTaxes
(
   SalaryTaxesID        varchar(50) not null,
   SalarySolutionID     varchar(50),
   MiniTaxesSum         numeric(8,0),
   TaxesSum             numeric(8,0),
   TaxesRate            numeric(8,0),
   CalculateDeduct      numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SalaryTaxesID)
);

/*==============================================================*/
/* Table: T_HR_SampleTable                                      */
/*==============================================================*/
create table T_HR_SampleTable
(
   SampleTableID        varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   Remark               varchar(2000),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SampleTableID)
);

/*==============================================================*/
/* Table: T_HR_SampleTable2                                     */
/*==============================================================*/
create table T_HR_SampleTable2
(
   EmployeeID           varchar(50) not null,
   EmployeeCode         varchar(50),
   EmployeeName         varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (EmployeeID)
);

/*==============================================================*/
/* Table: T_HR_SchedulingTemplateDetail                         */
/*==============================================================*/
create table T_HR_SchedulingTemplateDetail
(
   TemplateDetailID     varchar(50) not null,
   TemplateMasterID     varchar(50),
   ShiftDefineID        varchar(50),
   SchedulingDate       varchar(50),
   SchedulingIndex      numeric(8,0),
   Remark               varchar(2000),
   UpdateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   CreateUserID         varchar(50),
   primary key (TemplateDetailID)
);

alter table T_HR_SchedulingTemplateDetail comment '�Ű�ģ����ϸ';

/*==============================================================*/
/* Table: T_HR_SchedulingTemplateMaster                         */
/*==============================================================*/
create table T_HR_SchedulingTemplateMaster
(
   TemplateMasterID     varchar(50) not null,
   TemplateName         varchar(50),
   SchedulingCircleType varchar(50) comment '0�£�1�ܣ�2��',
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   Remark               varchar(2000),
   UpdateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   CreateUserID         varchar(50),
   primary key (TemplateMasterID)
);

alter table T_HR_SchedulingTemplateMaster comment '�Ű�ģ����ϸ';

/*==============================================================*/
/* Table: T_HR_ShiftDefine                                      */
/*==============================================================*/
create table T_HR_ShiftDefine
(
   ShiftDefineID        varchar(50) not null,
   ShiftName            varchar(50),
   FirstStartTime       varchar(50),
   FirstEndTime         varchar(50),
   FirstCardStartTime   varchar(50),
   FirstCardEndTime     varchar(50),
   NeedFirstCard        varchar(1),
   SecondStartTime      varchar(50),
   SecondEndTime        varchar(50),
   NeedSecondCard       varchar(1),
   SecondCardStartTime  varchar(50),
   SecondCardEndTime    varchar(50),
   thirdStartTime       varchar(50),
   thirdEndTime         varchar(50),
   NeedThirdCard        varchar(1),
   ThirdCardStartTime   varchar(50),
   ThirdCardEndTime     varchar(50),
   FourthStartTime      varchar(50),
   FourthEndTime        varchar(50),
   NeedFourthCard       varchar(50),
   FourthCardStartTime  varchar(50),
   FourthCardEndTime    varchar(50),
   WorkTime             numeric(8,0),
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   NeedFirstOffCard     varchar(1),
   FirstOffCardStartTime varchar(50),
   FirstOffCardEndTime  varchar(50),
   NeedSecondOffCard    varchar(1),
   SecondOffCardStartTime varchar(50),
   SecondOffCardEndTime varchar(50),
   NeedThirdOffCard     varchar(1),
   ThirdOffCardEndTime  varchar(50),
   ThirdOffCardStartTime varchar(50),
   NeedFourthOffCard    varchar(50),
   FourthOffCardEndTime varchar(50),
   FourthOffCardStartTime varchar(50),
   primary key (ShiftDefineID)
);

/*==============================================================*/
/* Table: T_HR_SpotCheckGroup                                   */
/*==============================================================*/
create table T_HR_SpotCheckGroup
(
   SpotCheckGroupID     varchar(50) not null,
   SpotCheckGroupName   varchar(50),
   CompanyID            varchar(50),
   CompanyName          varchar(50),
   DepartmentID         varchar(50),
   DepartmentName       varchar(50),
   PostID               varchar(50),
   PostName             varchar(50),
   PostLevel            varchar(1),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (SpotCheckGroupID)
);

/*==============================================================*/
/* Table: T_HR_SpotChecker                                      */
/*==============================================================*/
create table T_HR_SpotChecker
(
   SpotCheckerID        varchar(50) not null,
   SpotCheckGroupID     varchar(50),
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   CompanyID            varchar(50),
   CompanyName          varchar(50),
   DepartmentID         varchar(50),
   DepartmentName       varchar(50),
   PostID               varchar(50),
   PostName             varchar(50),
   PostLevel            varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (SpotCheckerID)
);

/*==============================================================*/
/* Table: T_HR_StandRewardArchive                               */
/*==============================================================*/
create table T_HR_StandRewardArchive
(
   StandRewardArchiveID varchar(50) not null,
   SalaryArchiveID      varchar(50),
   PerformanceRewardID  varchar(50),
   Sum                  numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (StandRewardArchiveID)
);

/*==============================================================*/
/* Table: T_HR_StandRewardArchiveHis                            */
/*==============================================================*/
create table T_HR_StandRewardArchiveHis
(
   StandRewardArchiveID varchar(50) not null,
   SalaryArchiveID      varchar(50),
   PerformanceRewardID  varchar(50),
   Sum                  numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (StandRewardArchiveID)
);

/*==============================================================*/
/* Table: T_HR_StandardPerformanceReward                        */
/*==============================================================*/
create table T_HR_StandardPerformanceReward
(
   StandardPerformanceRewardID varchar(50) not null,
   SalaryStandardID     varchar(50),
   PerformanceRewardSetID varchar(50),
   Sum                  numeric(8,0),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (StandardPerformanceRewardID)
);

/*==============================================================*/
/* Table: T_HR_SystemSetting                                    */
/*==============================================================*/
create table T_HR_SystemSetting
(
   SystemSettingID      varchar(50) not null,
   ModelType            varchar(50) comment 'ģ������:0 ȫ�ֲ���;1��֯�ܹ�����,2���¹������,3���ڹ������,4н�ʹ������,5��Ч�������',
   ModelValue           varchar(50),
   ParameterName        varchar(50),
   ParameterValue       varchar(50),
   Remark               varchar(2000),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerCompanyID       varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   CreateUserID         varchar(50),
   CreateDate           datetime,
   UpdateUserID         varchar(50),
   UpdateDate           datetime,
   primary key (SystemSettingID)
);

/*==============================================================*/
/* Table: T_HR_SystemSetting2                                   */
/*==============================================================*/
create table T_HR_SystemSetting2
(
   SystemSettingID      varchar(50) not null,
   ModelName            varchar(36) comment 'ģ������
            ����ģ��
            ����ģ��
            н��ģ��',
   ModelCode            varchar(36),
   ParameterName        varchar(50),
   ParameterCode        varchar(50),
   ParameterValue       varchar(100),
   ParameterDesc        varchar(50),
   Remark               varchar(2000),
   UpdateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   CreateUserID         varchar(50),
   primary key (SystemSettingID)
);

/*==============================================================*/
/* Table: T_HR_VacationSet                                      */
/*==============================================================*/
create table T_HR_VacationSet
(
   VacationID           varchar(50) not null,
   VacationName         varchar(50),
   AssignedObjectType   varchar(50),
   AssignedObjectID     varchar(2000),
   VacationYear         varchar(50),
   CountyType           varchar(1),
   Remark               varchar(2000),
   CreateUserID         varchar(50),
   CreateDate           datetime default 'SYSDATE',
   UpdateUserID         varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   OwnerCompanyID       varchar(50),
   OwnerDepartmentID    varchar(50),
   OwnerPostID          varchar(50),
   OwnerID              varchar(50),
   CreatePostID         varchar(50),
   CreateDepartmentID   varchar(50),
   CreateCompanyID      varchar(50),
   primary key (VacationID)
);

/*==============================================================*/
/* Table: T_OA_ACCIDENTRECORD                                   */
/*==============================================================*/
create table T_OA_ACCIDENTRECORD
(
   ACCIDENTRECORDID     NVARCHAR2(50) not null,
   ASSETID              NVARCHAR2(50) not null,
   CONTENT              NVARCHAR2(200) not null,
   ACCIDENTDATE         DATE not null,
   Flag                 NVARCHAR2(1) not null default '0' comment '0:δ����,1:�Ѵ���',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ACCIDENTRECORDID)
);

/*==============================================================*/
/* Table: T_OA_APPROVALINFO                                     */
/*==============================================================*/
create table T_OA_APPROVALINFO
(
   APPROVALID           VARCHAR(50) not null,
   ApprovalCode         VARCHAR(200) not null,
   APPROVALTITLE        VARCHAR(200) not null,
   Tel                  NVARCHAR2(50) not null,
   CONTENT              BLOB not null,
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   TYPEAPPROVAL         NVARCHAR2(50),
   TYPEAPPROVALONE      NVARCHAR2(50),
   TYPEAPPROVALTWO      NVARCHAR2(50),
   TYPEAPPROVALTHREE    NVARCHAR2(50),
   primary key (APPROVALID)
);

/*==============================================================*/
/* Table: T_OA_ARCHIVES                                         */
/*==============================================================*/
create table T_OA_ARCHIVES
(
   ARCHIVESID           NVARCHAR2(50) not null,
   COMPANYID            NVARCHAR2(50) not null,
   ARCHIVESTITLE        NVARCHAR2(200) not null,
   CONTENT              BLOB not null,
   SOURCEFLAG           NVARCHAR2(1) not null default '1' comment '0:�Զ����룬1������,��ԭ�����ɽ���',
   RECORDTYPE           NVARCHAR2(50) not null comment 'SENDDOC�����ǹ�˾���ĵ�',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ARCHIVESID)
);

alter table T_OA_ARCHIVES comment '���и����ϴ���OA_FILEUPLOAD_T,ģ����ȡARCHIVES';

/*==============================================================*/
/* Table: T_OA_AgentDateSet                                     */
/*==============================================================*/
create table T_OA_AgentDateSet
(
   AgentDateSetID       NVARCHAR2(50) not null,
   ModelCode            NVARCHAR2(50) not null,
   UserID               NVARCHAR2(50) not null,
   EffectiveDate        DATE not null,
   PlanExpirationDate   DATE not null,
   ExpirationDate       DATE,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (AgentDateSetID)
);

alter table T_OA_AgentDateSet comment 'ʹ�ô���ʱЧ���ñ�';

/*==============================================================*/
/* Table: T_OA_AgentSet                                         */
/*==============================================================*/
create table T_OA_AgentSet
(
   AgentSetID           NVARCHAR2(50) not null,
   SysCode              NVARCHAR2(50) not null,
   ModelCode            NVARCHAR2(50) not null,
   UserID               NVARCHAR2(50) not null,
   AgentPostID          NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (AgentSetID)
);

alter table T_OA_AgentSet comment '��������';

/*==============================================================*/
/* Table: T_OA_AreaAllowance                                    */
/*==============================================================*/
create table T_OA_AreaAllowance
(
   AreaAllowanceID      NVARCHAR2(50) not null,
   AreaDifferenceID     NVARCHAR2(50),
   PostLevel            NVARCHAR2(50),
   ACCOMMODATION        NUMBER,
   TRAFFICMEALALLOWANCE NUMBER,
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE default 'SYSDATE',
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE default 'SYSDATE',
   primary key (AreaAllowanceID)
);

/*==============================================================*/
/* Table: T_OA_AreaCity                                         */
/*==============================================================*/
create table T_OA_AreaCity
(
   AreaCityID           NVARCHAR2(50) not null,
   AreaDifferenceID     NVARCHAR2(50),
   City                 NVARCHAR2(10) comment '���ڵس��У�ϵͳ�ֵ��ж���',
   CreateUserID         NVARCHAR2(50),
   CreateDate           DATE default 'SYSDATE',
   UpdateUserID         NVARCHAR2(50),
   UpdateDate           DATE default 'SYSDATE',
   primary key (AreaCityID)
);

/*==============================================================*/
/* Table: T_OA_AreaDifference                                   */
/*==============================================================*/
create table T_OA_AreaDifference
(
   AreaDifferenceID     NVARCHAR2(50) not null,
   AreaCategory         NVARCHAR2(50),
   AreaIndex            NUMBER,
   CreateUserID         NVARCHAR2(50),
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CreateDate           DATE default 'SYSDATE',
   UpdateUserID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UpdateDate           DATE default 'SYSDATE',
   OwnerID              NVARCHAR2(50),
   OwnerPostID          NVARCHAR2(50),
   OwnerDepartmentID    NVARCHAR2(50),
   OwnerCompanyID       NVARCHAR2(50),
   primary key (AreaDifferenceID)
);

/*==============================================================*/
/* Table: T_OA_BUSINESSREPORT                                   */
/*==============================================================*/
create table T_OA_BUSINESSREPORT
(
   BUSINESSREPORTID     NVARCHAR2(50) not null,
   BUSINESSTRIPID       NVARCHAR2(50) not null,
   Tel                  NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null,
   CONTENT              BLOB not null,
   DepCity              NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DestCity             NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (BUSINESSREPORTID)
);

/*==============================================================*/
/* Table: T_OA_BUSINESSREPORT2                                  */
/*==============================================================*/
create table T_OA_BUSINESSREPORT2
(
   BUSINESSREPORTID     NVARCHAR2(50) not null,
   BUSINESSTRIPID       NVARCHAR2(50),
   Tel                  NVARCHAR2(50) not null,
   CONTENT              varchar(2000) not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   REMARKS              NVARCHAR2(200),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (BUSINESSREPORTID)
);

/*==============================================================*/
/* Table: T_OA_BUSINESSREPORTDETAIL                             */
/*==============================================================*/
create table T_OA_BUSINESSREPORTDETAIL
(
   BUSINESSREPORTDETAILID NVARCHAR2(50) not null,
   BUSINESSREPORTID     NVARCHAR2(50) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null,
   DepCity              NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DestCity             NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   BUSINESSDAYS         NVARCHAR2(50),
   PRIVATEAFFAIR        NVARCHAR2(50),
   TYPEOFTRAVELTOOLS    NVARCHAR2(50),
   TAKETHETOOLLEVEL     NVARCHAR2(50),
   GOOUTTOMEET          NVARCHAR2(50),
   COMPANYCAR           NVARCHAR2(50),
   primary key (BUSINESSREPORTDETAILID)
);

/*==============================================================*/
/* Table: T_OA_BUSINESSTRIP                                     */
/*==============================================================*/
create table T_OA_BUSINESSTRIP
(
   BUSINESSTRIPID       NVARCHAR2(50) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null,
   Tel                  NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CONTENT              BLOB not null,
   DepCity              NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DestCity             NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   ISAGENT              NVARCHAR2(1) not null default '0' comment '0:�����ã�1:����',
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (BUSINESSTRIPID)
);

/*==============================================================*/
/* Table: T_OA_BUSINESSTRIP2                                    */
/*==============================================================*/
create table T_OA_BUSINESSTRIP2
(
   BUSINESSTRIPID       NVARCHAR2(50) not null,
   Tel                  NVARCHAR2(50) not null,
   ISAGENT              NVARCHAR2(1) not null default '0' comment '0:�����ã�1:����',
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   CONTENT              varchar(2000) not null,
   REMARKS              NVARCHAR2(200),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   OWNERPOSTNAME        NVARCHAR2(2000),
   OWNERDEPARTMENTNAME  NVARCHAR2(2000),
   OWNERCOMPANYNAME     NVARCHAR2(2000),
   POSTLEVEL            NVARCHAR2(2000),
   primary key (BUSINESSTRIPID)
);

/*==============================================================*/
/* Table: T_OA_BUSINESSTRIPDETAIL                               */
/*==============================================================*/
create table T_OA_BUSINESSTRIPDETAIL
(
   BUSINESSTRIPDETAILID NVARCHAR2(50) not null,
   BUSINESSTRIPID       NVARCHAR2(50) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null,
   DepCity              NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DestCity             NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   StartCityName        NVARCHAR2(2000) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   EndCityName          NVARCHAR2(2000) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   PRIVATEAFFAIR        NVARCHAR2(50),
   TYPEOFTRAVELTOOLS    NVARCHAR2(50),
   TAKETHETOOLLEVEL     NVARCHAR2(50),
   GOOUTTOMEET          NVARCHAR2(50),
   COMPANYCAR           NVARCHAR2(50),
   primary key (BUSINESSTRIPDETAILID)
);

/*==============================================================*/
/* Table: T_OA_CALENDAR                                         */
/*==============================================================*/
create table T_OA_CALENDAR
(
   CALENDARID           VARCHAR(50) not null,
   Title                VARCHAR(50) not null,
   CONTENT              VARCHAR(1000) not null,
   REMINDERRMODEL       NVARCHAR2(50) not null,
   PLANTIME             DATE not null,
   REPARTREMINDER       NVARCHAR2(50) not null comment 'NOTHING�����ظ���DAY��ÿ�죬WEEK�����ܣ�MONTH�����£�YEAR������',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CALENDARID)
);

/*==============================================================*/
/* Table: T_OA_CANTAKETHEPLANELINE                              */
/*==============================================================*/
create table T_OA_CANTAKETHEPLANELINE
(
   CANTAKETHEPLANELINEID NVARCHAR2(50) not null,
   TRAVELSOLUTIONSID    NVARCHAR2(50),
   REGIONAL             NVARCHAR2(50) comment '���磺���������ֵ��ж���',
   DepCity              NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DestCity             NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   LANDTIME             NVARCHAR2(20) comment '½·����ʱ��',
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CANTAKETHEPLANELINEID)
);

/*==============================================================*/
/* Table: T_OA_CONSERVATION                                     */
/*==============================================================*/
create table T_OA_CONSERVATION
(
   CONSERVATIONID       NVARCHAR2(50) not null,
   ASSETID              NVARCHAR2(50) not null,
   CONSERVATYPE         NVARCHAR2(50) not null comment '��ϵͳ�ֵ���л�ȡ',
   Content              NVARCHAR2(200) not null,
   Tel                  NVARCHAR2(50) not null,
   RepairDate           DATE not null,
   RetrieveDate         DATE not null,
   ConservationCompany  NVARCHAR2(200) not null,
   ConservationRange    NUMBER,
   ReMark               NVARCHAR2(200),
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CONSERVATIONID)
);

/*==============================================================*/
/* Table: T_OA_CONTRACTAPP                                      */
/*==============================================================*/
create table T_OA_CONTRACTAPP
(
   CONTRACTAPPID        NVARCHAR2(50) not null,
   CONTRACTCODE         NVARCHAR2(50) not null,
   CONTRACTTYPEID       NVARCHAR2(50) not null,
   CONTRACTLEVEL        NVARCHAR2(50) not null,
   PARTYA               NVARCHAR2(50) not null,
   PARTYB               NVARCHAR2(50) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null comment '��ͬ����ʱ��',
   CONTRACTFLAG         NVARCHAR2(1) not null default '0' comment '0:�����ͬ��1��Ա����ͬ',
   ExpirationReminder   NUMBER not null default '0' comment '0:�����ͬ��1��Ա����ͬ',
   CONTRACTTITLE        NVARCHAR2(100) not null,
   CONTENT              BLOB not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CONTRACTAPPID)
);

/*==============================================================*/
/* Table: T_OA_CONTRACTPRINT                                    */
/*==============================================================*/
create table T_OA_CONTRACTPRINT
(
   CONTRACTPRINTID      NVARCHAR2(50) not null,
   CONTRACTAPPID        NVARCHAR2(50) not null,
   NUM                  INT not null,
   SignDate             DATE,
   IsUpLoad             NVARCHAR2(1) not null default '0' comment '0:δ�ϴ���1:���Ǵ�',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CONTRACTPRINTID)
);

/*==============================================================*/
/* Table: T_OA_CONTRACTTEMPLATE                                 */
/*==============================================================*/
create table T_OA_CONTRACTTEMPLATE
(
   CONTRACTTEMPLATEID   NVARCHAR2(50) not null,
   CONTRACTTEMPLATENAME NVARCHAR2(50) not null,
   CONTRACTTYPEID       NVARCHAR2(50) not null,
   CONTRACTLEVEL        NVARCHAR2(50) not null,
   CONTRACTTITLE        NVARCHAR2(100) not null,
   CONTENT              BLOB not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CONTRACTTEMPLATEID)
);

/*==============================================================*/
/* Table: T_OA_CONTRACTTYPE                                     */
/*==============================================================*/
create table T_OA_CONTRACTTYPE
(
   CONTRACTTYPEID       NVARCHAR2(50) not null,
   CONTRACTTYPE         NVARCHAR2(50),
   CONTRACTLEVEL        NVARCHAR2(50) not null,
   CONTENT              NVARCHAR2(600) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CONTRACTTYPEID)
);

/*==============================================================*/
/* Table: T_OA_CONTRACTVIEW                                     */
/*==============================================================*/
create table T_OA_CONTRACTVIEW
(
   CONTRACTVIEWID       NVARCHAR2(50) not null,
   CONTRACTPRINTID      NVARCHAR2(50) not null,
   Tel                  NVARCHAR2(50) not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CONTRACTVIEWID)
);

/*==============================================================*/
/* Table: T_OA_COSTRECORD                                       */
/*==============================================================*/
create table T_OA_COSTRECORD
(
   COSTRECORDID         NVARCHAR2(50) not null,
   ASSETID              NVARCHAR2(50) not null,
   MODELNAME            NVARCHAR2(50),
   FORMID               NVARCHAR2(50),
   CONSTTYPE            NVARCHAR2(50) not null comment 'ͨ���ֵ��ȡ��������',
   CONTENT              NVARCHAR2(50) not null,
   COST                 NUMBER not null default '0',
   COSTDATE             DATE not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (COSTRECORDID)
);

/*==============================================================*/
/* Table: T_OA_ConservationRecord                               */
/*==============================================================*/
create table T_OA_ConservationRecord
(
   ConservationRecordID NVARCHAR2(50) not null,
   CONSERVATIONID       NVARCHAR2(50) not null,
   CONSERVATYPE         NVARCHAR2(50) not null comment '��ϵͳ�ֵ���л�ȡ',
   Content              NVARCHAR2(200) not null,
   Tel                  NVARCHAR2(50) not null,
   RepairDate           DATE not null,
   RetrieveDate         DATE not null,
   ConservationRange    NUMBER,
   ReMark               NVARCHAR2(200),
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ConservationRecordID)
);

/*==============================================================*/
/* Table: T_OA_DISTRIBUTEUSER                                   */
/*==============================================================*/
create table T_OA_DISTRIBUTEUSER
(
   DISTRIBUTEUSERID     NVARCHAR2(50) not null,
   MODELNAME            NVARCHAR2(50) not null,
   FORMID               NVARCHAR2(50) not null,
   VIEWTYPE             NVARCHAR2(1) not null default '3' comment '1������˾��2�������ţ�3�����û�',
   VIEWER               NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MODELNAME, FORMID, VIEWTYPE, VIEWER)
);

/*==============================================================*/
/* Table: T_OA_GRADED                                           */
/*==============================================================*/
create table T_OA_GRADED
(
   GRADEDID             NVARCHAR2(50) not null,
   GRADED               NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (GRADED)
);

/*==============================================================*/
/* Table: T_OA_HIREAPP                                          */
/*==============================================================*/
create table T_OA_HIREAPP
(
   HIREAPPID            NVARCHAR2(50) not null,
   HOUSELISTID          NVARCHAR2(50) not null,
   RENTCOST             INT not null default 0,
   DEPOSIT              INT not null default 0,
   MANAGECOST           INT not null default 0,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null comment 'Ԥ�Ƶ���ʱ�䣬ʵ�ʵ������˷�ʱ��Ϊ׼',
   BACKDATE             DATE comment '�˷�ʱ�޸�',
   RentType             NVARCHAR2(1) not null default '0' comment '0�����⣻1�����⣻',
   SettlementType       NVARCHAR2(1) not null default '0' comment '0�����ʿۣ�1���ֽ�',
   IsBack               NVARCHAR2(1) not null default '0' comment '0:δ�ˣ�1������',
   IsOK                 NVARCHAR2(1) not null default '0' comment '0:δȷ�ϣ�1�������ϣ�2��ȡ��',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1������У�2�����ͨ����3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (HIREAPPID)
);

/*==============================================================*/
/* Table: T_OA_HOUSEINFO                                        */
/*==============================================================*/
create table T_OA_HOUSEINFO
(
   HOUSEID              NVARCHAR2(50) not null,
   UPTOWN               NVARCHAR2(50) not null,
   HOUSENAME            NVARCHAR2(50) not null,
   FLOOR                INT not null,
   RoomCode             NVARCHAR2(50) not null,
   RENTCOST             INT not null default 0,
   DEPOSIT              INT not null default 0,
   SharedRentCost       INT not null default 0,
   SharedDeposit        INT not null default 0,
   MANAGECOST           INT not null default 0,
   Number               INT not null default 0,
   RentNumber           INT not null default 0,
   ReMark               NVARCHAR2(2000),
   CONTENT              BLOB not null,
   ISRENT               NVARCHAR2(1) not null default '0' comment '0:δ���⣬1���ѳ���',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null default 'SYSDATE',
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (HOUSEID)
);

/*==============================================================*/
/* Table: T_OA_HOUSEINFOISSUANCE                                */
/*==============================================================*/
create table T_OA_HOUSEINFOISSUANCE
(
   ISSUANCEID           NVARCHAR2(50) not null,
   ISSUANCETITLE        NVARCHAR2(200) not null,
   CONTENT              BLOB not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ISSUANCEID)
);

/*==============================================================*/
/* Table: T_OA_HOUSELIST                                        */
/*==============================================================*/
create table T_OA_HOUSELIST
(
   HOUSELISTID          NVARCHAR2(50) not null,
   ISSUANCEID           NVARCHAR2(50) not null,
   HOUSEID              NVARCHAR2(50) not null,
   RENTCOST             INT not null default 0,
   DEPOSIT              INT not null default 0,
   SharedRentCost       INT not null default 0,
   SharedDeposit        INT not null default 0,
   MANAGECOST           INT not null default 0,
   CONTENT              CLOB not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (HOUSELISTID)
);

/*==============================================================*/
/* Table: T_OA_HireRecord                                       */
/*==============================================================*/
create table T_OA_HireRecord
(
   HireRecord           NVARCHAR2(50) not null,
   HIREAPPID            NVARCHAR2(50) not null,
   Renter               NVARCHAR2(50) not null default '0' comment '0�����⣻1�����⣻',
   RENTCOST             INT not null default 0,
   MANAGECOST           INT not null default 0,
   Water                INT default 0,
   Electricity          INT default 0,
   OtherCost            INT default 0,
   WaterNum             INT default 0,
   ElectricityNum       INT default 0,
   SettlementDate       DATE not null,
   SettlementType       NVARCHAR2(1) not null default '0' comment '0�����ʿۣ�1���ֽ�',
   IsSettlement         NVARCHAR2(1) not null default '0' comment '0:δ���㣬1���ѽ���',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (HireRecord)
);

/*==============================================================*/
/* Table: T_OA_LENDARCHIVES                                     */
/*==============================================================*/
create table T_OA_LENDARCHIVES
(
   LENDARCHIVESID       NVARCHAR2(50) not null,
   ARCHIVESID           NVARCHAR2(50) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE,
   PLANENDDATE          DATE not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (LENDARCHIVESID)
);

alter table T_OA_LENDARCHIVES comment 'ֻ����ԭ���Ĳ��ܽ��ģ�OA_ARCHIVES_T�е�FLAGΪ1��';

/*==============================================================*/
/* Table: T_OA_LICENSEDETAIL                                    */
/*==============================================================*/
create table T_OA_LICENSEDETAIL
(
   LICENSEDETAILID      NVARCHAR2(50) not null,
   LICENSEMASTERID      NVARCHAR2(50) not null,
   REGISTERTYPE         NVARCHAR2(50) not null comment '��¼��컹�Ǳ���ȣ����ֵ��ж���',
   LEGALPERSON          NVARCHAR2(50) not null,
   ADDRESS              NVARCHAR2(200) not null,
   LICENCENO            NVARCHAR2(100) not null,
   BUSSINESSAREA        NVARCHAR2(1000) not null,
   REGISTERCHARGE       NVARCHAR2(50) default '0',
   FROMDATE             DATE not null,
   TODATE               DATE,
   REMARK               NVARCHAR2(2000),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (LICENSEDETAILID)
);

/*==============================================================*/
/* Table: T_OA_LICENSEMASTER                                    */
/*==============================================================*/
create table T_OA_LICENSEMASTER
(
   LICENSEMASTERID      NVARCHAR2(50) not null,
   ORGCODE              NVARCHAR2(50),
   LICENSENAME          NVARCHAR2(200) not null comment '�ֵ��ж���',
   POSITION             NVARCHAR2(200) not null,
   LEGALPERSON          NVARCHAR2(50) not null comment '���ӱ��ж���',
   ADDRESS              NVARCHAR2(200) not null comment '���ӱ��ж���',
   LICENCENO            NVARCHAR2(100) not null comment '���ӱ��ж���',
   BUSSINESSAREA        NVARCHAR2(1000) not null comment '���ӱ��ж���',
   FROMDATE             DATE comment '���ӱ��ж���',
   TODATE               DATE comment '���ӱ��ж���',
   DAY                  NUMBER not null default '0' comment '���õ��ڶ�����ǰ����',
   LENDFLAG             NVARCHAR2(1) not null default '0' comment '0:δ�����1���ѽ��',
   IsValid              NVARCHAR2(1) not null default '0' comment '0:��Ч��1����Ч',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (LICENSEMASTERID)
);

/*==============================================================*/
/* Table: T_OA_LICENSEUSER                                      */
/*==============================================================*/
create table T_OA_LICENSEUSER
(
   LICENSEUSERID        NVARCHAR2(50) not null,
   LICENSEMASTERID      NVARCHAR2(50) not null,
   CONTENT              NVARCHAR2(500) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null,
   HASRETURN            NVARCHAR2(1) not null comment '0:δ����1���ѻ�',
   CHECKSTATE           NVARCHAR2(1) not null comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (LICENSEUSERID)
);

/*==============================================================*/
/* Table: T_OA_MAINTENANCEAPP                                   */
/*==============================================================*/
create table T_OA_MAINTENANCEAPP
(
   MAINTENANCEAPPID     NVARCHAR2(50) not null,
   ASSETID              NVARCHAR2(50) not null,
   MaintenanceType      NVARCHAR2(50) not null,
   Content              NVARCHAR2(200) not null,
   RepairDate           DATE not null,
   RetrieveDate         DATE not null,
   RepairCompany        NVARCHAR2(50) not null,
   Tel                  NVARCHAR2(50) not null,
   ReMark               NVARCHAR2(200),
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MAINTENANCEAPPID)
);

/*==============================================================*/
/* Table: T_OA_MAINTENANCERECORD                                */
/*==============================================================*/
create table T_OA_MAINTENANCERECORD
(
   MaintenanceRecordID  NVARCHAR2(50) not null,
   MAINTENANCEAPPID     NVARCHAR2(50) not null,
   MaintenanceType      NVARCHAR2(50) not null,
   Content              NVARCHAR2(200) not null,
   RepairDate           DATE not null,
   RetrieveDate         DATE not null,
   RepairCompany        NVARCHAR2(50) not null,
   Tel                  NVARCHAR2(50) not null,
   ReMark               NVARCHAR2(200),
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MaintenanceRecordID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGCONTENT                                   */
/*==============================================================*/
create table T_OA_MEETINGCONTENT
(
   MEETINGCONTENTID     NVARCHAR2(50) not null,
   MEETINGINFOID        NVARCHAR2(50) not null,
   MEETINGUSERID        NVARCHAR2(50) not null,
   CONTENT              BLOB not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGCONTENTID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGINFO                                      */
/*==============================================================*/
create table T_OA_MEETINGINFO
(
   MEETINGINFOID        NVARCHAR2(50) not null,
   IsAuto               NVARCHAR2(1) not null default '0',
   MEETINGROOMNAME      NVARCHAR2(100),
   STARTTIME            DATE not null,
   ENDTIME              DATE not null,
   COUNT                NUMBER not null default '2',
   MEETINGTITLE         NVARCHAR2(100) not null,
   CONTENT              BLOB not null,
   DEPARTNAME           NVARCHAR2(100) not null,
   HostID               NVARCHAR2(50) not null,
   HostName             NVARCHAR2(50) not null,
   RecordUserID         NVARCHAR2(50) not null,
   RecordUserName       NVARCHAR2(50) not null,
   MEETINGTYPE          NVARCHAR2(100) not null,
   Tel                  NVARCHAR2(50) not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   ISCANCEL             NVARCHAR2(1) not null default '1' comment '0��ȡ����1������',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGINFOID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGMESSAGE                                   */
/*==============================================================*/
create table T_OA_MEETINGMESSAGE
(
   MeetingMessageID     NVARCHAR2(50) not null default '0',
   MEETINGINFOID        NVARCHAR2(50) not null,
   Title                NVARCHAR2(200) not null,
   CONTENT              BLOB not null,
   Tel                  NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MeetingMessageID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGROOM                                      */
/*==============================================================*/
create table T_OA_MEETINGROOM
(
   MEETINGROOMID        NVARCHAR2(50) not null,
   MEETINGROOMNAME      NVARCHAR2(100) not null,
   Location             NVARCHAR2(100),
   CompanyID            NVARCHAR2(50) not null,
   Seat                 INT not null,
   Area                 INT not null,
   Rostrum              NVARCHAR2(1) not null default '0' comment '0���ޣ�1����',
   Video                NVARCHAR2(1) not null default '0' comment '0���ޣ�1����',
   Audio                NVARCHAR2(1) not null default '1' comment '0���ޣ�1����',
   Network              NVARCHAR2(1) not null default '1' comment '0���ޣ�1����',
   Wifi                 NVARCHAR2(1) not null default '0' comment '0���ޣ�1����',
   Tel                  NVARCHAR2(1) not null default '0' comment '0���ޣ�1����',
   Projector            NVARCHAR2(1) not null default '1' comment '0���ޣ�1����',
   AirConditioning      NVARCHAR2(1) not null default '1' comment '0���ޣ�1����',
   WaterDispenser       NVARCHAR2(1) not null default '0' comment '0���ޣ�1����',
   Remark               NVARCHAR2(200),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGROOMNAME)
);

/*==============================================================*/
/* Table: T_OA_MEETINGROOMAPP                                   */
/*==============================================================*/
create table T_OA_MEETINGROOMAPP
(
   MEETINGROOMAPPID     NVARCHAR2(50) not null,
   MEETINGROOMNAME      NVARCHAR2(100) not null,
   STARTTIME            DATE not null,
   ENDTIME              DATE not null,
   DEPARTNAME           NVARCHAR2(100) not null,
   Tel                  NVARCHAR2(50) not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�������У�2������ͨ����3��������ͨ��',
   ISCANCEL             NVARCHAR2(1) not null default '1' comment '0��ȡ����1������',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGROOMAPPID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGROOMTIMECHANGE                            */
/*==============================================================*/
create table T_OA_MEETINGROOMTIMECHANGE
(
   MEETINGROOMTIMECHANGEID NVARCHAR2(50) not null,
   MEETINGROOMAPPID     NVARCHAR2(50) not null,
   STARTTIME            DATE not null,
   ENDTIME              DATE not null,
   REASON               NVARCHAR2(2000),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGROOMTIMECHANGEID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGSTAFF                                     */
/*==============================================================*/
create table T_OA_MEETINGSTAFF
(
   MEETINGSTAFFID       NVARCHAR2(50),
   MEETINGINFOID        NVARCHAR2(50) not null,
   MEETINGUSERID        NVARCHAR2(50) not null,
   FILENAME             NVARCHAR2(50),
   CONFIRMFLAG          NVARCHAR2(1) not null default '0' comment '0:δȷ�ϣ�1����ȷ��,2:���μ�,���ϴ�����,3:���μ�',
   ReMark               NVARCHAR2(200),
   IsOK                 NVARCHAR2(1) not null default '0' comment '0:δȷ�ϣ�1����ȷ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null default 'SYSDATE',
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGINFOID, MEETINGUSERID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGTEMPLATE                                  */
/*==============================================================*/
create table T_OA_MEETINGTEMPLATE
(
   MEETINGTEMPLATEID    NVARCHAR2(50) not null,
   TEMPLATENAME         NVARCHAR2(100) not null,
   MEETINGTYPE          NVARCHAR2(100) not null,
   CONTENT              BLOB not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGTEMPLATEID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGTIMECHANGE                                */
/*==============================================================*/
create table T_OA_MEETINGTIMECHANGE
(
   MEETINGTIMECHANGEID  NVARCHAR2(50) not null,
   MEETINGINFOID        NVARCHAR2(50) not null,
   STARTTIME            DATE not null,
   ENDTIME              DATE not null,
   REASON               NVARCHAR2(2000),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGTIMECHANGEID)
);

/*==============================================================*/
/* Table: T_OA_MEETINGTYPE                                      */
/*==============================================================*/
create table T_OA_MEETINGTYPE
(
   MEETINGTYPEID        NVARCHAR2(50) not null,
   MEETINGTYPE          NVARCHAR2(100) not null,
   IsAuto               NVARCHAR2(1) not null default '0' comment '0����1����',
   Cycle                INT,
   RemindDay            INT,
   Convener             NVARCHAR2(50),
   ConvenerName         NVARCHAR2(50),
   Content              BLOB,
   REMARK               NVARCHAR2(1000),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (MEETINGTYPE)
);

/*==============================================================*/
/* Table: T_OA_ORDERMEAL                                        */
/*==============================================================*/
create table T_OA_ORDERMEAL
(
   ORDERMEALID          NVARCHAR2(50) not null,
   ORDERMEALTITLE       NVARCHAR2(100) not null,
   CONTENT              NVARCHAR2(1000) not null default '0' comment '0:δ����;1:�Ѷ���',
   REMARK               NVARCHAR2(2000),
   ORDERMEALFLAG        NVARCHAR2(1) not null comment '0:ȡ����1���Ѷ�,2:����',
   Tel                  NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ORDERMEALID)
);

/*==============================================================*/
/* Table: T_OA_ORGANIZATION                                     */
/*==============================================================*/
create table T_OA_ORGANIZATION
(
   ORGANIZATIONID       NVARCHAR2(50) not null,
   ORGCODE              NVARCHAR2(50) not null,
   ORGNAME              NVARCHAR2(200) not null,
   LEGALPERSON          NVARCHAR2(50) not null,
   ADDRESS              NVARCHAR2(200) not null,
   LICENCENO            NVARCHAR2(100) not null,
   BUSSINESSAREA        NVARCHAR2(1000) not null,
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ORGCODE)
);

/*==============================================================*/
/* Table: T_OA_PRIORITIES                                       */
/*==============================================================*/
create table T_OA_PRIORITIES
(
   PRIORITIESID         NVARCHAR2(50) not null,
   PRIORITIES           NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (PRIORITIES)
);

/*==============================================================*/
/* Table: T_OA_PROGRAMAPPLICATIONS                              */
/*==============================================================*/
create table T_OA_PROGRAMAPPLICATIONS
(
   PROGRAMAPPLICATIONSID NVARCHAR2(50) not null,
   TRAVELSOLUTIONSID    NVARCHAR2(50),
   CompanyID            NVARCHAR2(50),
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (PROGRAMAPPLICATIONSID)
);

/*==============================================================*/
/* Table: T_OA_REIMBURSEMENTDETAIL                              */
/*==============================================================*/
create table T_OA_REIMBURSEMENTDETAIL
(
   REIMBURSEMENTDETAILID NVARCHAR2(50) not null,
   TRAVELREIMBURSEMENTID NVARCHAR2(50),
   STARTDATE            DATE not null,
   ENDDATE              DATE not null,
   StartCityName        NVARCHAR2(2000) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   EndCityName          NVARCHAR2(2000) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DepCity              NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   DestCity             NVARCHAR2(50) not null comment 'ͨ��SYS_TYPEGROUP_T��ȡ����������',
   COMPUTINGTIME        NVARCHAR2(50) comment '�ܼƳ����ʱ��',
   TYPEOFTRAVELTOOLS    NVARCHAR2(50) comment '�����Ľ�ͨ��������',
   TAKETHETOOLLEVEL     NVARCHAR2(50) comment '��ͨ���ߵļ���(���磺�ɻ�ͷ�Ȳ�)',
   TRANSPORTCOSTS       NUMBER comment '������ͨ���߷���',
   ACCOMMODATION        NUMBER,
   TRAFFICMEALALLOWANCE NUMBER,
   OTHERCOSTS           NUMBER,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UPDATEDATE           DATE,
   PRIVATEAFFAIR        NVARCHAR2(50),
   GOOUTTOMEET          NVARCHAR2(50),
   COMPANYCAR           NVARCHAR2(50),
   primary key (REIMBURSEMENTDETAILID)
);

/*==============================================================*/
/* Table: T_OA_REQUIRE                                          */
/*==============================================================*/
create table T_OA_REQUIRE
(
   REQUIREID            NVARCHAR2(50) not null,
   REQUIREMASTERID      NVARCHAR2(50) not null,
   APPTITLE             NVARCHAR2(100) not null,
   CONTENT              NVARCHAR2(2000) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null,
   OPTFLAG              NVARCHAR2(1) not null default '0' comment '0���ɲ��1������',
   Way                  NVARCHAR2(1) not null default '0' comment '0��������1��ʵ��',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (REQUIREID)
);

/*==============================================================*/
/* Table: T_OA_REQUIREDETAIL                                    */
/*==============================================================*/
create table T_OA_REQUIREDETAIL
(
   REQUIREDETAILID      NVARCHAR2(50) not null,
   REQUIREMASTERID      NVARCHAR2(50),
   SUBJECTID            NUMBER not null comment '��Ŀ˳���',
   CODE                 NVARCHAR2(100) not null comment '����ʾ���룬��1��2��3��A��B��C',
   CONTENT              NVARCHAR2(200) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (REQUIREDETAILID)
);

/*==============================================================*/
/* Table: T_OA_REQUIREDETAIL2                                   */
/*==============================================================*/
create table T_OA_REQUIREDETAIL2
(
   REQUIREDETAIL2ID     NVARCHAR2(50) not null,
   REQUIREMASTERID      NVARCHAR2(50) not null,
   SUBJECTID            NUMBER not null,
   CONTENT              NVARCHAR2(200) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (REQUIREMASTERID, SUBJECTID)
);

/*==============================================================*/
/* Table: T_OA_REQUIREMASTER                                    */
/*==============================================================*/
create table T_OA_REQUIREMASTER
(
   REQUIREMASTERID      NVARCHAR2(50) not null,
   REQUIRETITLE         NVARCHAR2(100) not null,
   CONTENT              CLOB not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (REQUIREMASTERID)
);

/*==============================================================*/
/* Table: T_OA_REQUIRERESULT                                    */
/*==============================================================*/
create table T_OA_REQUIRERESULT
(
   REQUIRERESULTID      NVARCHAR2(50) not null,
   REQUIREID            NVARCHAR2(50) not null,
   REQUIREMASTERID      NVARCHAR2(50) not null,
   SUBJECTID            NUMERIC not null,
   RESULT               NVARCHAR2(200) not null,
   CONTENT              NVARCHAR2(500),
   UPDATEDATE           DATE,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   primary key (REQUIRERESULTID)
);

/*==============================================================*/
/* Table: T_OA_RequireDistribute                                */
/*==============================================================*/
create table T_OA_RequireDistribute
(
   RequireDistributeID  NVARCHAR2(50) not null,
   REQUIREID            NVARCHAR2(50) not null,
   DistributeTitle      NVARCHAR2(100) not null,
   CONTENT              NVARCHAR2(2000) not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (RequireDistributeID)
);

/*==============================================================*/
/* Table: T_OA_SENDDOC                                          */
/*==============================================================*/
create table T_OA_SENDDOC
(
   SENDDOCID            NVARCHAR2(50) not null,
   GRADED               NVARCHAR2(50) not null,
   PRIORITIES           NVARCHAR2(50) not null,
   SENDDOCTITLE         NVARCHAR2(100) not null,
   Keywords             NVARCHAR2(50) not null,
   SEND                 NVARCHAR2(200) not null,
   CC                   NVARCHAR2(200) not null,
   SENDDOCTYPE          NVARCHAR2(50) not null,
   CONTENT              BLOB not null,
   DEPARTID             NVARCHAR2(50) not null,
   NUM                  NVARCHAR2(100),
   Tel                  VARCHAR(50) not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0:δ�ύ;1:�����У�2������ͨ����3��δͨ��',
   ISDISTRIBUTE         NVARCHAR2(1) not null comment '0:δ�ַ���1���ѷַ�',
   ISSAVE               NVARCHAR2(1) not null comment '0:δ�鵵��1���ѹ鵵',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (SENDDOCID)
);

/*==============================================================*/
/* Table: T_OA_SENDDOCTEMPLATE                                  */
/*==============================================================*/
create table T_OA_SENDDOCTEMPLATE
(
   SENDDOCTEMPLATEID    NVARCHAR2(50) not null,
   TEMPLATENAME         NVARCHAR2(50) not null,
   GRADED               NVARCHAR2(50) not null,
   PRIORITIES           NVARCHAR2(50) not null,
   SENDDOCTITLE         NVARCHAR2(100) not null,
   SENDDOCTYPE          NVARCHAR2(50) not null,
   CONTENT              BLOB not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (SENDDOCTEMPLATEID)
);

/*==============================================================*/
/* Table: T_OA_SENDDOCTYPE                                      */
/*==============================================================*/
create table T_OA_SENDDOCTYPE
(
   SENDDOCTYPEID        NVARCHAR2(50) not null,
   SENDDOCTYPE          NVARCHAR2(50) not null,
   OPTFLAG              NVARCHAR2(1) not null comment '0:���鵵��1:�鵵',
   Remark               NVARCHAR2(200) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (SENDDOCTYPE)
);

/*==============================================================*/
/* Table: T_OA_SatisfactionDetail                               */
/*==============================================================*/
create table T_OA_SatisfactionDetail
(
   SatisfactionDetailID NVARCHAR2(50) not null,
   SatisfactionMasterID NVARCHAR2(50) not null,
   SUBJECTID            NUMBER not null,
   CONTENT              NVARCHAR2(200) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (SatisfactionMasterID, SUBJECTID)
);

/*==============================================================*/
/* Table: T_OA_SatisfactionDistribute                           */
/*==============================================================*/
create table T_OA_SatisfactionDistribute
(
   SatisfactionDistributeID NVARCHAR2(50) not null,
   SatisfactionRequireID NVARCHAR2(50) not null,
   DistributeTitle      NVARCHAR2(100) not null,
   CONTENT              NVARCHAR2(2000) not null,
   AnswerID             NVARCHAR2(50) not null comment '����ѡ�д�ID���ϵ�Ϊ�����������',
   Percentage           NUMERIC not null default 0 comment '���ðٷֱȶ���Ϊ����',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (SatisfactionDistributeID)
);

/*==============================================================*/
/* Table: T_OA_SatisfactionMaster                               */
/*==============================================================*/
create table T_OA_SatisfactionMaster
(
   SatisfactionMasterID NVARCHAR2(50) not null,
   SatisfactionTitle    NVARCHAR2(100) not null,
   Content              CLOB not null,
   CheckState           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (SatisfactionMasterID)
);

/*==============================================================*/
/* Table: T_OA_SatisfactionRequire                              */
/*==============================================================*/
create table T_OA_SatisfactionRequire
(
   SatisfactionRequireID NVARCHAR2(50) not null,
   SatisfactionMasterID NVARCHAR2(50) not null,
   SatisfactionTitle    NVARCHAR2(100) not null,
   Content              NVARCHAR2(2000) not null,
   AnswerGroupID        NVARCHAR2(50) not null,
   STARTDATE            DATE not null,
   ENDDATE              DATE not null,
   OPTFLAG              NVARCHAR2(1) not null default '0' comment '0���ɲ��1������',
   Way                  NVARCHAR2(1) not null default '0' comment '0��������1��ʵ��',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (SatisfactionRequireID)
);

/*==============================================================*/
/* Table: T_OA_SatisfactionResult                               */
/*==============================================================*/
create table T_OA_SatisfactionResult
(
   SatisfactionResultID NVARCHAR2(50) not null,
   SatisfactionRequireID NVARCHAR2(50) not null,
   SUBJECTID            NUMERIC not null,
   RESULT               NVARCHAR2(200) not null,
   CONTENT              NVARCHAR2(500),
   UPDATEDATE           DATE,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   primary key (SatisfactionResultID)
);

/*==============================================================*/
/* Table: T_OA_TAKETHESTANDARDTRANSPORT                         */
/*==============================================================*/
create table T_OA_TAKETHESTANDARDTRANSPORT
(
   TAKETHESTANDARDTRANSPORTID NVARCHAR2(50) not null,
   TRAVELSOLUTIONSID    NVARCHAR2(50),
   STARTPOSTLEVEL       NVARCHAR2(50) comment '��λ�ĵȼ����磨H����',
   ENDPOSTLEVEL         NVARCHAR2(50) comment '��λ�ĵȼ����磨H����',
   LANDTIME             numeric comment '½·����ʱ�䣬�ӷɻ���·�������������',
   TYPEOFTRAVELTOOLS    NVARCHAR2(50) comment '���ߵ�����(�磺�ɻ�)',
   TAKETHETOOLLEVEL     NVARCHAR2(50) comment '���磺�ɻ���ͷ�Ȳգ�',
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (TAKETHESTANDARDTRANSPORTID)
);

/*==============================================================*/
/* Table: T_OA_TRAVELREIMBURSEMENT                              */
/*==============================================================*/
create table T_OA_TRAVELREIMBURSEMENT
(
   TRAVELREIMBURSEMENTID NVARCHAR2(50) not null,
   BUSINESSREPORTID     NVARCHAR2(50),
   CLAIMSWERE           NVARCHAR2(50),
   REIMBURSEMENTTIME    DATE,
   Tel                  NVARCHAR2(50) not null,
   THETOTALCOST         NUMBER,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   REMARKS              NVARCHAR2(200),
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UPDATEDATE           DATE,
   NOBUDGETCLAIMS       NVARCHAR2(50),
   REIMBURSEMENTOFCOSTS NUMBER,
   COMPUTINGTIME        NVARCHAR2(50),
   CLAIMSWERENAME       NVARCHAR2(50),
   OWNERPOSTNAME        NVARCHAR2(2000),
   OWNERDEPARTMENTNAME  NVARCHAR2(2000),
   OWNERCOMPANYNAME     NVARCHAR2(2000),
   POSTLEVEL            NVARCHAR2(2000),
   primary key (TRAVELREIMBURSEMENTID)
);

/*==============================================================*/
/* Table: T_OA_TRAVELSOLUTIONS                                  */
/*==============================================================*/
create table T_OA_TRAVELSOLUTIONS
(
   TRAVELSOLUTIONSID    NVARCHAR2(50) not null,
   PROGRAMMENAME        NVARCHAR2(50) comment '���������Ƿ���һ��',
   ANDFROMTHATDAY       NVARCHAR2(50) comment '���������Ƿ���һ��',
   CUSTOMDAY            NVARCHAR2(20) comment '����Сʱ��һ��',
   CUSTOMHALFDAY        NVARCHAR2(20) comment '����Сʱ�����',
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (TRAVELSOLUTIONSID)
);

/*==============================================================*/
/* Table: T_OA_VEHICLE                                          */
/*==============================================================*/
create table T_OA_VEHICLE
(
   VEHICLEID            NVARCHAR2(50) not null,
   ASSETID              NVARCHAR2(50) not null,
   VEHICLEMODEL         NVARCHAR2(50) not null,
   VIN                  NVARCHAR2(50) not null,
   VehicleBrands        NVARCHAR2(50) not null,
   VehicleType          NVARCHAR2(50) not null,
   Weight               INT,
   SeatQuantity         INT,
   BuyDate              DATE not null,
   BuyPrice             INT not null,
   InitialRange         INT not null,
   IntervalRange        INT not null,
   MaintenanceCycle     INT not null,
   MaintenanceRemind    INT not null,
   MaintainCompany      NVARCHAR2(50) not null,
   MaintainTel          NVARCHAR2(50) not null,
   COMPANYID            NVARCHAR2(50) not null,
   VEHICLEFLAG          NVARCHAR2(1) default '0' comment '0:δʹ�ã�1����ʹ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ASSETID)
);

/*==============================================================*/
/* Table: T_OA_VEHICLECARD                                      */
/*==============================================================*/
create table T_OA_VEHICLECARD
(
   VEHICLECARDID        NVARCHAR2(50) not null,
   ASSETID              NVARCHAR2(50) not null,
   CardName             NVARCHAR2(50) not null,
   CardType             NVARCHAR2(50) not null,
   EffectDate           DATE not null,
   InvalidDate          DATE not null,
   ChargeMoney          NUMBER default '0',
   CONTENT              NVARCHAR2(200) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (VEHICLECARDID)
);

/*==============================================================*/
/* Table: T_OA_VEHICLEDISPATCH                                  */
/*==============================================================*/
create table T_OA_VEHICLEDISPATCH
(
   VEHICLEDISPATCHID    NVARCHAR2(50) not null,
   ASSETID              NVARCHAR2(50),
   STARTTIME            DATE not null,
   ENDTIME              DATE not null,
   NUM                  NVARCHAR2(50) not null default '1',
   ROUTE                NVARCHAR2(200) not null,
   DRIVER               NVARCHAR2(50) not null,
   TEL                  NVARCHAR2(50) not null,
   CONTENT              NVARCHAR2(200),
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   ISCANCEL             NVARCHAR2(1) not null default '1' comment '0��ȡ����1������',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (VEHICLEDISPATCHID)
);

/*==============================================================*/
/* Table: T_OA_VEHICLEDISPATCHDETAIL                            */
/*==============================================================*/
create table T_OA_VEHICLEDISPATCHDETAIL
(
   VEHICLEDISPATCHDETAILID NVARCHAR2(50) not null,
   VEHICLEDISPATCHID    NVARCHAR2(50) not null,
   VEHICLEUSEAPPID      NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (VEHICLEDISPATCHDETAILID)
);

/*==============================================================*/
/* Table: T_OA_VEHICLEUSEAPP                                    */
/*==============================================================*/
create table T_OA_VEHICLEUSEAPP
(
   VEHICLEUSEAPPID      NVARCHAR2(50) not null,
   STARTTIME            DATE not null,
   ENDTIME              DATE not null,
   NUM                  NVARCHAR2(50) not null default '1',
   ROUTE                NVARCHAR2(200) not null,
   TEL                  NVARCHAR2(50) not null,
   CONTENT              NVARCHAR2(200),
   DEPARTMENTID         NVARCHAR2(50) not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (VEHICLEUSEAPPID)
);

/*==============================================================*/
/* Table: T_OA_VehicledispatchRecord                            */
/*==============================================================*/
create table T_OA_VehicledispatchRecord
(
   VehicledispatchRecordID NVARCHAR2(50) not null,
   VEHICLEDISPATCHDETAILID NVARCHAR2(50) not null,
   STARTTIME            DATE not null,
   ENDTIME              DATE not null,
   NUM                  NVARCHAR2(50) not null default '1',
   ROUTE                NVARCHAR2(200) not null,
   TEL                  NVARCHAR2(50) not null,
   Fuel                 NUMBER not null,
   Range                NUMBER not null,
   CONTENT              NVARCHAR2(200),
   Ischarge             NVARCHAR2(1) not null default '0' comment '0���޷��ã�1���з���',
   ChargeMoney          NUMBER default '0',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (VehicledispatchRecordID)
);

/*==============================================================*/
/* Table: T_OA_WELFAREDETAIL                                    */
/*==============================================================*/
create table T_OA_WELFAREDETAIL
(
   WELFAREDETAILID      NVARCHAR2(50) not null,
   WELFAREID            NVARCHAR2(50) not null,
   POSTID               NVARCHAR2(50),
   PostLevelA           NVARCHAR2(50),
   PostLevelB           NVARCHAR2(50),
   IsLevel              NVARCHAR2(1) not null comment '0����λ��1������',
   STANDARD             DECIMAL default 0,
   REMARK               NVARCHAR2(1000),
   primary key (WELFAREDETAILID)
);

/*==============================================================*/
/* Table: T_OA_WELFAREDISTRIBUTEDETAIL                          */
/*==============================================================*/
create table T_OA_WELFAREDISTRIBUTEDETAIL
(
   WELFAREDISTRIBUTEDETAILID NVARCHAR2(50) not null,
   WELFAREDISTRIBUTEMASTERID NVARCHAR2(50),
   USERID               NVARCHAR2(50) not null,
   STANDARD             DECIMAL default 0,
   REMARK               NVARCHAR2(1000),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (WELFAREDISTRIBUTEDETAILID)
);

alter table T_OA_WELFAREDISTRIBUTEDETAIL comment '��������׼����ÿ���˱��η��ż�¼';

/*==============================================================*/
/* Table: T_OA_WELFAREDISTRIBUTEMASTER                          */
/*==============================================================*/
create table T_OA_WELFAREDISTRIBUTEMASTER
(
   WELFAREDISTRIBUTEMASTERID NVARCHAR2(50) not null,
   WELFAREID            NVARCHAR2(50),
   WELFAREDISTRIBUTETITLE NVARCHAR2(1000) not null,
   DISTRIBUTEDATE       DATE not null,
   CONTENT              NVARCHAR2(2000) not null,
   ISWAGE               NVARCHAR2(1) not null default '0' comment '0:���湤�ʷ���1���湤�ʷ�',
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��2�����ͨ����1������У�3�����δͨ��',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (WELFAREDISTRIBUTEMASTERID)
);

/*==============================================================*/
/* Table: T_OA_WELFAREDISTRIBUTEUNDO                            */
/*==============================================================*/
create table T_OA_WELFAREDISTRIBUTEUNDO
(
   WELFAREDISTRIBUTEUNDOID NVARCHAR2(50) not null,
   WELFAREDISTRIBUTEMASTERID NVARCHAR2(50) not null,
   Tel                  NVARCHAR2(50) not null,
   CHECKSTATE           NVARCHAR2(1) not null default '0' comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   REMARK               NVARCHAR2(2000) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (WELFAREDISTRIBUTEUNDOID)
);

/*==============================================================*/
/* Table: T_OA_WELFAREMASERT                                    */
/*==============================================================*/
create table T_OA_WELFAREMASERT
(
   WELFAREID            NVARCHAR2(50) not null,
   WELFAREPROID         NVARCHAR2(50) not null,
   Tel                  NVARCHAR2(50) not null,
   StartDate            DATE not null,
   EndDate              DATE,
   REMARK               NVARCHAR2(1000),
   CHECKSTATE           NVARCHAR2(1) not null comment '0��δ�ύ��1�����ͨ����2������У�3�����δͨ��',
   COMPANYID            NVARCHAR2(50) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null default 'SYSDATE',
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (WELFAREID)
);

/*==============================================================*/
/* Table: T_OA_WORKRECORD                                       */
/*==============================================================*/
create table T_OA_WORKRECORD
(
   WORKRECORDID         VARCHAR(50) not null,
   Title                VARCHAR(50) not null,
   PLANTIME             DATE not null,
   CONTENT              VARCHAR(1000) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null,
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (WORKRECORDID)
);

/*==============================================================*/
/* Table: T_PF_News                                             */
/*==============================================================*/
create table T_PF_News
(
   NewsID               NVARCHAR2(50) not null,
   NewsTypeID           NVARCHAR2(50) not null,
   NewsTitel            NVARCHAR2(200 not null,
   NewsContent          CLOB not null,
   ISIMAGE              NVARCHAR2(50),
   ReadCount            NVARCHAR2(50),
   CommentCount         NVARCHAR2(50),
   NewsState            NVARCHAR2(50) not null default '0' comment '0:δ������1:�ѷ���,2:�ѹر�',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (NewsID)
);

alter table T_PF_News comment '�������š���̬��֪ͨ��������Ϣ���������';

/*==============================================================*/
/* Table: T_PF_NewsComment                                      */
/*==============================================================*/
create table T_PF_NewsComment
(
   CommentID            NVARCHAR2(50) not null,
   NewsID               NVARCHAR2(50),
   CommentContent       NVARCHAR2(500),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (CommentID)
);

alter table T_PF_NewsComment comment '�������۱�';

/*==============================================================*/
/* Table: T_PF_NewsType                                         */
/*==============================================================*/
create table T_PF_NewsType
(
   NewsTypeID           NVARCHAR2(50) not null,
   NewsTypeName         NVARCHAR2(50),
   NewsTypeState        NVARCHAR2(50) default '1' comment '0�� ����
            1������  Ĭ��ֵ',
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (NewsTypeID)
);

alter table T_PF_NewsType comment '��������';

/*==============================================================*/
/* Table: T_PF_PlatformConfig                                   */
/*==============================================================*/
create table T_PF_PlatformConfig
(
   ConfigID             NVARCHAR2(50) not null,
   ParentID             NVARCHAR2(50),
   PIocPath             NVARCHAR2(200),
   IsResizable          NVARCHAR2(1) not null default '1' comment '0:�����ԣ�1������',
   Titel                NVARCHAR2(200) not null,
   FullName             NVARCHAR2(200) not null,
   AssemplyName         NVARCHAR2(200) not null,
   ProgramType          NVARCHAR2(200),
   IsSysShortcut        NVARCHAR2(1) default '0' comment '0�����ǣ�1����',
   IsSysNeed            NVARCHAR2(1) default '0' comment '0:�����ԣ�1������',
   InitParams           NVARCHAR2(500),
   IswebPart            NVARCHAR2(1) default '1' comment '0�����ǣ�1����',
   UserState            NVARCHAR2(20) not null,
   SystemCode           NVARCHAR2(20) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ConfigID)
);

/*==============================================================*/
/* Table: T_PF_ProjectConfig                                    */
/*==============================================================*/
create table T_PF_ProjectConfig
(
   ProjectID            NVARCHAR2(50) not null,
   SystemCode           NVARCHAR2(50) not null,
   ProjectName          NVARCHAR2(200) not null,
   VersionFileName      NVARCHAR2(500) not null,
   Description          NVARCHAR2(2000),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (ProjectID)
);

alter table T_PF_ProjectConfig comment 'ƽ̨����Ŀ���ñ����г�������Ա�д�ϵͳȨ��';

/*==============================================================*/
/* Table: T_PF_UserConfig                                       */
/*==============================================================*/
create table T_PF_UserConfig
(
   UserConfigID         NVARCHAR2(50) not null,
   UserID               NVARCHAR2(50),
   ConfigName           NVARCHAR2(50),
   ConfigInfo           NVARCHAR2(2000),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (UserConfigID)
);

/*==============================================================*/
/* Table: T_PF_UserConfigRelevance                              */
/*==============================================================*/
create table T_PF_UserConfigRelevance
(
   UserConfigRelevanceID NVARCHAR2(50) not null,
   UserID               NVARCHAR2(50) not null,
   ConfigID             NVARCHAR2(50),
   TemplateName         NVARCHAR2(200) not null,
   CustomParams         NVARCHAR2(500),
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (UserConfigRelevanceID)
);

/*==============================================================*/
/* Table: T_SYS_DICTIONARY                                      */
/*==============================================================*/
create table T_SYS_DICTIONARY
(
   DICTIONARYID         varchar(50) not null,
   FatherID             varchar(50),
   SystemName           varchar(100),
   SystemCode           varchar(100),
   DICTIONCategoryName  varchar(100),
   DICTIONCategory      varchar(100),
   DICTIONARYName       varchar(100),
   DICTIONARYValue      varchar(100),
   OrderNumber          numeric(8,0),
   SystemNeed           varchar(1) comment 'ϵͳ�����ֵ�:�û������޸�',
   Remark               varchar(2000),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (DICTIONARYID)
);

/*==============================================================*/
/* Table: T_SYS_EntityMenu                                      */
/*==============================================================*/
create table T_SYS_EntityMenu
(
   EntityMenuID         varchar(50) not null,
   SystemType           varchar(50) not null,
   ChildSystemName      varchar(500),
   EntityName           varchar(50),
   EntityCode           varchar(50),
   HasSystemMenu        varchar(1),
   SuperiorID           varchar(50),
   MenuCode             varchar(50) not null,
   OrderNumber          int not null,
   MenuName             varchar(50) not null,
   MenuIconPath         varchar(100),
   URLAddress           varchar(500),
   Remark               varchar(2000),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (EntityMenuID)
);

/*==============================================================*/
/* Table: T_SYS_EntityMenuCustomPerm                            */
/*==============================================================*/
create table T_SYS_EntityMenuCustomPerm
(
   EntityMenuCustomPermID varchar(50) not null,
   PermissionID         varchar(50),
   EntityMenuID         varchar(50),
   RoleID               varchar(50),
   CompanyID            varchar(50) not null,
   CompanyName          varchar(100),
   DepartMentID         varchar(50),
   DepartmentName       varchar(50),
   PostID               varchar(50),
   PostName             varchar(50),
   Remark               varchar(2000),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   StartDate            datetime,
   EndDate              datetime,
   primary key (EntityMenuCustomPermID)
);

alter table T_SYS_EntityMenuCustomPerm comment '��ɫ����ҪȨ�޿��Ƶ�ʵ���Ȩ�޹�ϵ
��ɫ��ÿ��ʵ�����ɾ�Ĳ��Ȩ��
��ɫ��ʵ���Ȩ�޷�Χ���ǶԸ�';

/*==============================================================*/
/* Table: T_SYS_FBADMIN                                         */
/*==============================================================*/
create table T_SYS_FBADMIN
(
   FBADMINID            varchar(50) not null,
   SYSUSERID            varchar(50),
   OWNERCOMPANYID       varchar(50),
   OWNERDEPARTMENTID    varchar(50),
   OWNERPOSTID          varchar(50),
   ISSUPPERADMIN        varchar(50),
   ISCOMPANYADMIN       varchar(50),
   ROLENAME             varchar(50),
   REMARK               varchar(50),
   CREATEUSERID         varchar(50),
   ADDUSERNAME          varchar(50),
   CREATEDATE           datetime,
   UPDATEUSERID         varchar(50),
   UPDATEUSERNAME       varchar(50),
   UPDATEDATE           datetime,
   primary key (FBADMINID)
);

/*==============================================================*/
/* Table: T_SYS_FBADMINROLE                                     */
/*==============================================================*/
create table T_SYS_FBADMINROLE
(
   FBADMINROLEID        varchar(50) not null,
   FBADMINID            varchar(50),
   ROLEID               varchar(50),
   ADDDATE              datetime,
   primary key (FBADMINROLEID)
);

/*==============================================================*/
/* Table: T_SYS_FILEUPLOAD                                      */
/*==============================================================*/
create table T_SYS_FILEUPLOAD
(
   FILEUPLOADID         NVARCHAR2(50) not null,
   SystemCode           NVARCHAR2(50) not null,
   COMPANYID            NVARCHAR2(50) not null,
   ModelName            NVARCHAR2(50) not null comment 'ͨ���ӿ�ȡ������ϵͳ�ڶ����ģ����',
   FORMID               NVARCHAR2(50) not null,
   FileName             NVARCHAR2(100) not null,
   OwnerID              NVARCHAR2(50) not null,
   OwnerName            NVARCHAR2(50) not null,
   OwnerCompanyID       NVARCHAR2(50) not null,
   OwnerDepartmentID    NVARCHAR2(50) not null,
   OwnerPostID          NVARCHAR2(50) not null,
   CREATEUSERID         NVARCHAR2(50) not null,
   CREATEUSERNAME       NVARCHAR2(50) not null,
   CREATECOMPANYID      NVARCHAR2(50) not null,
   CREATEDEPARTMENTID   NVARCHAR2(50) not null,
   CREATEPOSTID         NVARCHAR2(50) not null,
   CREATEDATE           DATE not null default 'SYSDATE',
   UPDATEUSERID         NVARCHAR2(50),
   UpdateUserName       NVARCHAR2(50),
   UPDATEDATE           DATE,
   primary key (FILEUPLOADID)
);

/*==============================================================*/
/* Table: T_SYS_Permission                                      */
/*==============================================================*/
create table T_SYS_Permission
(
   PermissionID         varchar(50) not null,
   PermissionName       varchar(50) not null,
   PermissionValue      varchar(50),
   Remark               varchar(2000),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   EntityMenuID         varchar(50),
   IsCommom             varchar(50),
   PermissionCode       varchar(200),
   primary key (PermissionID)
);

alter table T_SYS_Permission comment '����Ȩ��
��,ɾ,��,��,����,����,����,��ӡ,��������....';

/*==============================================================*/
/* Table: T_SYS_Role                                            */
/*==============================================================*/
create table T_SYS_Role
(
   RoleID               varchar(50) not null,
   RoleName             varchar(50),
   SystemType           varchar(1),
   Remark               varchar(2000),
   OwnerCompanyID       varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (RoleID)
);

/*==============================================================*/
/* Table: T_SYS_RoleEntityMenu                                  */
/*==============================================================*/
create table T_SYS_RoleEntityMenu
(
   RoleEntityMenuID     varchar(50) not null,
   RoleID               varchar(50),
   EntityMenuID         varchar(50),
   Remark               varchar(2000),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (RoleEntityMenuID)
);

/*==============================================================*/
/* Table: T_SYS_RoleMenuPermission                              */
/*==============================================================*/
create table T_SYS_RoleMenuPermission
(
   RoleMenuPermID       varchar(50) not null,
   PermissionID         varchar(50),
   RoleEntityMenuID     varchar(50),
   DataRange            varchar(50),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   ExtendValue          varchar(50),
   primary key (RoleMenuPermID)
);

/*==============================================================*/
/* Table: T_SYS_USer                                            */
/*==============================================================*/
create table T_SYS_USer
(
   SysUserID            varchar(50) not null,
   EmployeeID           varchar(50),
   EmployeeName         varchar(50),
   EmployeeCode         varchar(50),
   UserName             varchar(50) not null,
   PassWord             varchar(50) not null,
   IsManger             int,
   State                varchar(50),
   Remark               varchar(2000),
   OwnerCompanyID       varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (SysUserID)
);

/*==============================================================*/
/* Table: T_SYS_USerActLog                                      */
/*==============================================================*/
create table T_SYS_USerActLog
(
   LogID                varchar(50) not null,
   ClientOS             varchar(200),
   ClientOSLanguage     varchar(200),
   ClientBrowser        varchar(200),
   ClientHostAddress    varchar(200),
   ClientNetRuntime     varchar(200),
   EntityMenu           varchar(500),
   LogType              varchar(2) comment '0,��Ϊ��־
            1,������־',
   LogContext           varchar(2000),
   ServerOS             varchar(50),
   ServerNetRuntime     varchar(2000),
   OwnerCompanyID       varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   CreateDate           datetime,
   CompanyName          varchar(200),
   DepartmentName       varchar(200),
   PostName             varchar(200),
   EmployeeName         varchar(200),
   primary key (LogID)
);

/*==============================================================*/
/* Table: T_SYS_USerDataLog                                     */
/*==============================================================*/
create table T_SYS_USerDataLog
(
   LogID                varchar(50) not null,
   ClientOS             varchar(200),
   ClientOSLanguage     varchar(200),
   ClientBrowser        varchar(200),
   ClientHostAddress    varchar(200),
   ClientNetRuntime     varchar(200),
   EntityMenu           varchar(500),
   LogType              varchar(2) comment '0,��Ϊ��־
            1,������־',
   LogContext           varchar(2000),
   ServerOS             varchar(50),
   ServerNetRuntime     varchar(2000),
   OwnerCompanyID       varchar(50),
   OwnerID              varchar(50),
   OwnerPostID          varchar(50),
   OwnerDepartmentID    varchar(50),
   CreateDate           datetime,
   CompanyName          varchar(200),
   DepartmentName       varchar(200),
   PostName             varchar(200),
   EmployeeName         varchar(200),
   primary key (LogID)
);

/*==============================================================*/
/* Table: T_SYS_UserLoginRecord                                 */
/*==============================================================*/
create table T_SYS_UserLoginRecord
(
   LoginRecordID        varchar(50) not null,
   UserName             varchar(50) not null,
   LoginDate            datetime,
   LoginTime            varchar(50),
   LoginIP              varchar(50),
   OnlineState          varchar(1),
   Remark               varchar(2000),
   primary key (LoginRecordID)
);

/*==============================================================*/
/* Table: T_SYS_UserLoginRecordHis                              */
/*==============================================================*/
create table T_SYS_UserLoginRecordHis
(
   LoginRecordHisID     varchar(50) not null,
   UserName             varchar(50) not null,
   LoginDate            datetime,
   LoginTime            varchar(50),
   LoginIP              varchar(50),
   OnlineState          varchar(1),
   Remark               varchar(2000),
   primary key (LoginRecordHisID)
);

/*==============================================================*/
/* Table: T_SYS_UserRole                                        */
/*==============================================================*/
create table T_SYS_UserRole
(
   UserRoleID           varchar(50) not null,
   RoleID               varchar(50),
   OwnerCompanyID       varchar(50) not null,
   PostID               varchar(50) not null,
   EmployeePostID       varchar(50) not null,
   SysUserID            varchar(50),
   CreateUser           varchar(50),
   CreateDate           datetime,
   UpdateUser           varchar(50),
   UpdateDate           datetime default 'SYSDATE',
   primary key (UserRoleID)
);

/*==============================================================*/
/* Table: T_WF_DOTASK                                           */
/*==============================================================*/
create table T_WF_DOTASK
(
   DOTASKID             NVARCHAR2(50) not null comment '��������ID',
   COMPANYID            NVARCHAR2(50) comment '��˾ID',
   ORDERID              NVARCHAR2(50) not null comment '����ID',
   ORDERUSERID          NVARCHAR2(50) comment '����������ID',
   ORDERUSERNAME        NVARCHAR2(50) comment '��������������',
   ORDERSTATUS          NUMBER comment '����״̬',
   MESSAGEBODY          NVARCHAR2(2000) comment '��Ϣ��',
   APPLICATIONURL       NVARCHAR2(2000) comment 'Ӧ��URL',
   RECEIVEUSERID        NVARCHAR2(50) comment '�����û�ID',
   BEFOREPROCESSDATE    DATE comment '�ɴ���ʱ�䣨��Ҫ���KPI���ˣ�',
   DOTASKTYPE           NUMBER comment '������������(0����������1��������ѯ��3 )',
   CLOSEDDATE           DATE comment '����ر�ʱ��',
   ENGINECODE           NVARCHAR2(200) comment '�������',
   DOTASKSTATUS         NUMBER default '0' comment '��������״̬(0��δ���� 1���Ѵ��� ��2�������� 10��ɾ��)',
   MAILSTATUS           NUMBER default '0' comment '�ʼ�״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   RTXSTATUS            NUMBER default '0' comment 'RTX״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   ISALARM              NUMBER comment '�Ƿ�������(0��δ���� 1�������ѡ�2��δ֪ )',
   APPFIELDVALUE        NCLOB comment 'Ӧ���ֶ�ֵ',
   FLOWXML              NCLOB comment '����XML',
   APPXML               NCLOB comment 'Ӧ��XML',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   MODELNAME            NVARCHAR2(100) comment 'ģ������',
   CREATEDATETIME       DATE default 'SYSDATE' comment '��������',
   REMARK               NVARCHAR2(200) comment '��ע',
   SYSTEMNAME           NVARCHAR2(50) comment 'ϵͳ����',
   primary key (DOTASKID)
);

alter table T_WF_DOTASK comment '���������б�';

/*==============================================================*/
/* Table: T_WF_DOTASKMESSAGE                                    */
/*==============================================================*/
create table T_WF_DOTASKMESSAGE
(
   DOTASKMESSAGEID      NVARCHAR2(50) not null comment '������ϢID',
   MESSAGEBODY          NVARCHAR2(500) comment '��Ϣ��',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   RECEIVEUSERID        NVARCHAR2(50) comment '�����û�',
   ORDERID              NVARCHAR2(50) comment '����ID',
   COMPANYID            NVARCHAR2(50) comment '��˾ID',
   MESSAGESTATUS        NUMBER comment '��Ϣ״̬(0��δ���� 1���Ѵ��� ��2����Ϣ���� )',
   MAILSTATUS           NUMBER comment '�ʼ�״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   RTXSTATUS            NUMBER comment 'TRX״̬(0��δ���� 1���ѷ��͡�2��δ֪ )',
   CLOSEDDATE           DATE comment '��Ϣ�ر�ʱ��',
   CREATEDATETIME       DATE default 'SYSDATE' comment '��������ʱ��',
   REMARK               NVARCHAR2(200) comment '��ע',
   primary key (DOTASKMESSAGEID)
);

alter table T_WF_DOTASKMESSAGE comment '������Ϣ�б�';

/*==============================================================*/
/* Table: T_WF_DOTASKRULE                                       */
/*==============================================================*/
create table T_WF_DOTASKRULE
(
   DOTASKRULEID         NVARCHAR2(100) not null comment '�����������ID',
   COMPANYID            NVARCHAR2(50) comment '��˾ID',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   SYSTEMNAME           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   MODELNAME            NVARCHAR2(50) comment 'ģ������',
   TRIGGERORDERSTATUS   NUMBER comment '���������ĵ���״̬',
   CREATEDATETIME       DATE default 'SYSDATE' comment '��������ʱ��',
   primary key (DOTASKRULEID)
);

alter table T_WF_DOTASKRULE comment '����������Ϣ��������';

/*==============================================================*/
/* Table: T_WF_DOTASKRULEDETAIL                                 */
/*==============================================================*/
create table T_WF_DOTASKRULEDETAIL
(
   DOTASKRULEDETAILID   NVARCHAR2(100) not null comment '���������ϸID',
   DOTASKRULEID         NVARCHAR2(100) not null comment '�����������ID',
   COMPANYID            NVARCHAR2(50) comment '��˾ID',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   SYSTEMNAME           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   TRIGGERORDERSTATUS   NUMBER comment '���������ĵ���״̬',
   MODELNAME            NVARCHAR2(50) comment 'ģ������',
   WCFURL               NVARCHAR2(200) comment 'WCF��URL',
   FUNCTIONNAME         NVARCHAR2(50) comment '������������',
   FUNCTIONPARAMTER     NVARCHAR2(2000) comment '��������',
   PAMETERSPLITCHAR     NVARCHAR2(100) comment '�����ֽ��',
   WCFBINDINGCONTRACT   NVARCHAR2(100) comment 'WCF�󶨵���Լ',
   MESSAGEBODY          NVARCHAR2(400) comment '��Ϣ��',
   LASTDAYS             NUMBER comment '�ɴ������ڣ�ʣ��������',
   APPLICATIONURL       NCLOB comment 'Ӧ��URL',
   RECEIVEUSER          NVARCHAR2(100) comment '�����û�',
   RECEIVEUSERNAME      NVARCHAR2(100) comment '�����û���',
   OWNERCOMPANYID       NVARCHAR2(100) comment '������˾ID',
   OWNERDEPARTMENTID    NVARCHAR2(100) comment '��������ID',
   OWNERPOSTID          NVARCHAR2(100) comment '������λID',
   ISDEFAULTMSG         NUMBER comment '�Ƿ�ȱʡ��Ϣ',
   PROCESSFUNCLANGUAGE  NVARCHAR2(100) comment '����������',
   ISOTHERSOURCE        NVARCHAR2(100) comment '�Ƿ�������Դ',
   OTHERSYSTEMCODE      NVARCHAR2(100) comment '����ϵͳ����',
   OTHERMODELCODE       NVARCHAR2(100) comment '����ϵͳģ��',
   CREATEUSERNAME       NVARCHAR2(50) comment '������',
   CREATEUSERID         NVARCHAR2(50) comment '������ID',
   CREATEDATETIME       DATE default 'SYSDATE' comment '��������',
   REMARK               NVARCHAR2(200) comment '��ע',
   primary key (DOTASKRULEDETAILID)
);

alter table T_WF_DOTASKRULEDETAIL comment '����������Ϣ����ϸ��';

/*==============================================================*/
/* Table: T_WF_ENGINEPREFIX                                     */
/*==============================================================*/
create table T_WF_ENGINEPREFIX
(
   PREFIXCODE           NVARCHAR2(100) not null comment 'ǰ׺����',
   PREFIXNAME           NVARCHAR2(100) comment 'ǰ׺����',
   DEFAULTBIT           NVARCHAR2(50) comment 'DEFAULTBIT',
   CURRENTORDER         NUMBER(10) comment '��ǰ˳��',
   ORDERLENGTH          NUMBER(10) comment '˳�򳤶�',
   primary key (PREFIXCODE)
);

alter table T_WF_ENGINEPREFIX comment '����ǰ׺';

/*==============================================================*/
/* Table: T_WF_MESSAGEBODYDEFINE                                */
/*==============================================================*/
create table T_WF_MESSAGEBODYDEFINE
(
   DEFINEID             NVARCHAR2(50) not null comment 'Ĭ����ϢID',
   COMPANYID            NVARCHAR2(50) comment '��˾ID',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(50) comment 'ģ�����',
   MESSAGEBODY          NVARCHAR2(500) comment '��Ϣ��',
   MESSAGEURL           NVARCHAR2(1000) comment '��Ϣ����',
   MESSAGETYPE          NUMBER default '0' comment '��Ϣ����',
   CREATEDATE           DATE default 'SYSDATE' comment '��������',
   CREATEUSERNAME       NVARCHAR2(50) comment '����������',
   CREATEUSERID         NVARCHAR2(50) comment '������',
   primary key (DEFINEID)
);

alter table T_WF_MESSAGEBODYDEFINE comment 'Ĭ����Ϣ���ñ��繫�ķ��ͣ������쳣��������ͬ������Ϣ����)';

/*==============================================================*/
/* Table: T_WF_MESSAGEDEFINE                                    */
/*==============================================================*/
create table T_WF_MESSAGEDEFINE
(
   MESSAGEDEFINEID      NVARCHAR2(50) not null comment '��Ϣ����ID',
   MESSAGEKEY           NVARCHAR2(50) comment '��ϢKEY',
   MESSAGEBODY          NVARCHAR2(400) comment '��Ϣ��',
   MESSAGEURL           NVARCHAR2(2000) comment '��ϢURL',
   CREATEDATETIME       DATE default 'SYSDATE' comment '��������ʱ��',
   CREATEUSERNAME       NVARCHAR2(50) comment '�����û���',
   CREATEUSERID         NVARCHAR2(50) comment '�����û�ID',
   primary key (MESSAGEDEFINEID)
);

alter table T_WF_MESSAGEDEFINE comment '��Ϣ����û�н���ֱ�������ݿ���д��';

/*==============================================================*/
/* Table: T_WF_SMSRECORD                                        */
/*==============================================================*/
create table T_WF_SMSRECORD
(
   SMSRECORD            NVARCHAR2(50) not null comment '���ż�¼ID',
   BATCHNUMBER          NVARCHAR2(50) comment '��¼��������',
   COMPANYID            NVARCHAR2(50) comment '(���ͷ�)��˾ID',
   SENDSTATUS           NUMBER comment '����״̬',
   ACCOUNT              NVARCHAR2(50) comment '�����˺�',
   MOBILE               NVARCHAR2(50) comment '�绰����',
   SENDMESSAGE          NVARCHAR2(200) comment '��������',
   SENDTIME             DATE comment '����ʱ��',
   SMSTYPE              NUMBER comment '��������',
   OWNERNAME            NVARCHAR2(50) comment '����������',
   REMARK               NVARCHAR2(200) comment '��ע',
   RECORDDATE           DATE default 'SYSDATE' comment '��¼ʱ��',
   primary key (SMSRECORD)
);

alter table T_WF_SMSRECORD comment '���ŷ��ͼ�¼��';

/*==============================================================*/
/* Table: T_WF_TIMINGTRIGGERACTIVITY                            */
/*==============================================================*/
create table T_WF_TIMINGTRIGGERACTIVITY
(
   TRIGGERID            NVARCHAR2(50) not null comment '����ID',
   BUSINESSID           NVARCHAR2(50) comment 'ҵ��ϵͳʹ�õı�ʾ����Ҫ����ҵ��ϵͳɾ�������ı�ʾ��',
   TIMINGCONFIGID       NVARCHAR2(50) comment '��ʱ��������ID�������ý����ID��',
   TRIGGERNAME          NVARCHAR2(100) comment '��ʱ��������',
   COMPANYID            NVARCHAR2(50) comment '��˾ID',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   SYSTEMNAME           NVARCHAR2(100) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(100) comment 'ģ�����',
   MODELNAME            NVARCHAR2(100) comment 'ģ������',
   TRIGGERACTIVITYTYPE  NUMBER comment '��������ͣ�1�����Ż 2��������',
   TRIGGERTIME          DATE not null comment '����ʱ��',
   TRIGGERDATE          NUMBER comment '�������ڵ�����(��ʱû��)',
   TRIGGERROUND         NUMBER not null comment '�������ڣ�0��ֻ����һ��1����2���ܡ�3�£�',
   WCFURL               NVARCHAR2(200) comment 'WCF��URL',
   FUNCTIONNAME         NVARCHAR2(50) comment '������������',
   FUNCTIONPARAMTER     NVARCHAR2(2000) comment '��������',
   PAMETERSPLITCHAR     NVARCHAR2(100) comment '�����ֽ��',
   WCFBINDINGCONTRACT   NVARCHAR2(100) comment 'WCF�󶨵���Լ',
   RECEIVERUSERID       NVARCHAR2(50) comment '������ID',
   RECEIVEROLE          NVARCHAR2(50) comment '�����˽�ɫ',
   RECEIVERNAME         NVARCHAR2(100) comment '����������',
   MESSAGEBODY          NVARCHAR2(50) comment '������Ϣ',
   MESSAGEURL           NVARCHAR2(1000) comment '��Ϣ����',
   TRIGGERSTATUS        NUMBER default '0' comment '������״̬',
   TRIGGERTYPE          NVARCHAR2(50) comment '��������',
   TRIGGERDESCRIPTION   NVARCHAR2(200) comment '��������',
   CONTRACTTYPE         NVARCHAR2(50) comment '�ӿ����ͣ����棬��ʱ�ӿڣ�',
   CREATEDATETIME       DATE default 'SYSDATE' comment '��������',
   CREATEUSERID         NVARCHAR2(50) comment '������ID',
   CREATEUSERNAME       NVARCHAR2(50) comment '������',
   REMARK               NVARCHAR2(200) comment '��ע',
   primary key (TRIGGERID)
);

alter table T_WF_TIMINGTRIGGERACTIVITY comment '��ʱ���������windows������в������ã�';

/*==============================================================*/
/* Table: T_WF_TIMINGTRIGGERCONFIG                              */
/*==============================================================*/
create table T_WF_TIMINGTRIGGERCONFIG
(
   TIMINGCONFIGID       NVARCHAR2(50) not null comment '��ʱ��������ID',
   TRIGGERNAME          NVARCHAR2(100) comment '��ʱ��������',
   COMPANYID            NVARCHAR2(50) comment '��˾ID',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   SYSTEMNAME           NVARCHAR2(100) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(100) comment 'ģ�����',
   MODELNAME            NVARCHAR2(100) comment 'ģ������',
   TRIGGERACTIVITYTYPE  NUMBER comment '��������ͣ�1�����Ż 2��������',
   TRIGGERTIME          DATE not null comment '����ʱ��',
   TRIGGERDATE          NUMBER comment '�������ڵ�����(��ʱû��)',
   TRIGGERROUND         NUMBER not null comment '�������ڣ�0��ֻ����һ��1����2���ܡ�3�£�',
   WCFURL               NVARCHAR2(200) comment 'WCF��URL',
   FUNCTIONNAME         NVARCHAR2(50) comment '������������',
   FUNCTIONPARAMTER     NVARCHAR2(2000) comment '��������',
   PAMETERSPLITCHAR     NVARCHAR2(100) comment '�����ֽ��',
   WCFBINDINGCONTRACT   NVARCHAR2(100) comment 'WCF�󶨵���Լ',
   RECEIVERUSERID       NVARCHAR2(50) comment '������ID',
   RECEIVEROLE          NVARCHAR2(50) comment '�����˽�ɫ',
   RECEIVERNAME         NVARCHAR2(100) comment '����������',
   MESSAGEBODY          NVARCHAR2(50) comment '������Ϣ',
   MESSAGEURL           NVARCHAR2(1000) comment '��Ϣ����',
   TRIGGERSTATUS        NUMBER comment '������״̬',
   TRIGGERTYPE          NVARCHAR2(50) comment '��������',
   TRIGGERDESCRIPTION   NVARCHAR2(200) comment '��������',
   CONTRACTTYPE         NVARCHAR2(50) comment '�ӿ����ͣ����棬��ʱ�ӿڣ�',
   CREATEDATETIME       DATE comment '��������',
   CREATEUSERID         NVARCHAR2(50) comment '������ID',
   CREATEUSERNAME       NVARCHAR2(50) comment '������',
   REMARK               NVARCHAR2(200) comment '��ע',
   primary key (TIMINGCONFIGID)
);

alter table T_WF_TIMINGTRIGGERCONFIG comment '��ʱ������Ϣ����������ý��������';

/*==============================================================*/
/* Table: T_WF_TIMINGTRIGGERRECORD                              */
/*==============================================================*/
create table T_WF_TIMINGTRIGGERRECORD
(
   RECORDID             NVARCHAR2(50) not null comment '��¼ID',
   TRIGGERID            NVARCHAR2(50) comment '����ID',
   TRIGGERNAME          NVARCHAR2(100) comment '��ʱ��������',
   COMPANYID            NVARCHAR2(50) comment '��˾ID',
   SYSTEMCODE           NVARCHAR2(50) comment 'ϵͳ����',
   MODELCODE            NVARCHAR2(100) comment 'ģ�����',
   MODELNAME            NVARCHAR2(100) comment 'ģ������',
   TRIGGERACTIVITYTYPE  NUMBER comment '��������ͣ�1�����Ż 2��������',
   TRIGGERTIME          DATE comment '����ʱ��',
   TRIGGERROUND         NUMBER comment '��������',
   WCFURL               NVARCHAR2(1000) comment 'WCF��URL',
   FUNCTIONNAME         NVARCHAR2(50) comment '������������',
   FUNCTIONPARAMTER     NVARCHAR2(2000) comment '��������',
   PAMETERSPLITCHAR     NVARCHAR2(100) comment '�����ֽ��',
   WCFBINDINGCONTRACT   NVARCHAR2(100) comment 'WCF�󶨵���Լ',
   RECEIVERUSERID       NVARCHAR2(50) comment '������ID',
   RECEIVEROLE          NVARCHAR2(50) comment '�����˽�ɫ',
   RECEIVERNAME         NVARCHAR2(100) comment '����������',
   MESSAGEBODY          NVARCHAR2(50) comment '������Ϣ',
   MESSAGEURL           NVARCHAR2(1000) comment '��Ϣ����',
   TRIGGERSTATUS        NUMBER comment '������״̬',
   TRIGGERTYPE          NVARCHAR2(50) comment '��������',
   TRIGGERDESCRIPTION   NVARCHAR2(200) comment '��������',
   CONTRACTTYPE         NVARCHAR2(50) comment '�ӿ����ͣ����棬��ʱ�ӿڣ�',
   CREATEUSERNAME       NVARCHAR2(50) comment '������',
   REMARK               NVARCHAR2(200) comment '��ע',
   RECORDDATE           DATE default 'SYSDATE' comment '��¼����',
   primary key (RECORDID)
);

alter table T_WF_TIMINGTRIGGERRECORD comment '��ʱ������ִ�м�¼';

/*==============================================================*/
/* Table: area                                                  */
/*==============================================================*/
create table area
(
   areaID               NVARCHAR8,
   area                 NVARCHAR50,
   father               NVARCHAR8
);

alter table area comment '�������س�';

/*==============================================================*/
/* Table: city                                                  */
/*==============================================================*/
create table city
(
   cityID               NVARCHAR8,
   city                 NVARCHAR50,
   father               NVARCHAR8
);

alter table city comment '���б�';

alter table Flow_Consultation_T add constraint Flow_Consultation_T foreign key (FlowRecordDetailID)
      references Flow_FlowRecordDetail_T (FlowRecordDetailID) on delete restrict on update restrict;

alter table Flow_FlowRecordDetail_T add constraint Flow_FlowRecordDetail_T foreign key (FlowRecordMasterID)
      references Flow_FlowRecordMaster_T (FlowRecordMasterID) on delete restrict on update restrict;

alter table Flow_FlowToCategory add constraint FK_FLOW_TOCATEGORY_1 foreign key (FlowCategoryID)
      references Flow_FlowCategory (FlowCategoryID) on delete restrict on update restrict;

alter table Flow_FlowToCategory add constraint FK_FLOW_TOCATEGORY_2 foreign key (FlowCode)
      references Flow_FlowDefine_T (FlowCode) on delete restrict on update restrict;

alter table Flow_ModelFlowRelation_T add constraint FK_Flow_ModelFlowRelation_T foreign key (FlowCode)
      references Flow_FlowDefine_T (FlowCode) on delete restrict on update restrict;

alter table Flow_ModelFlowRelation_T add constraint FK_Flow_ModelFlowRelation_T1 foreign key (ModelCode)
      references Flow_ModelDefine_T (ModelCode) on delete restrict on update restrict;

alter table Flow_Rules add constraint FK_Reference_217 foreign key (FlowCode)
      references Flow_FlowDefine_T (FlowCode) on delete restrict on update restrict;

alter table T_FB_BorrowApplyDetail add constraint FK_Reference_111 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_BorrowApplyDetail add constraint FK_Reference_120 foreign key (BorrowApplyMasterID)
      references T_FB_BorrowApplyMaster (BorrowApplyMasterID) on delete restrict on update restrict;

alter table T_FB_BorrowApplyMaster add constraint FK_Reference_109 foreign key (ExtensionalOrderID)
      references T_FB_ExtensionalOrder (ExtensionalOrderID) on delete restrict on update restrict;

alter table T_FB_BudgetAccount add constraint FK_Reference_145 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_BudgetCheck add constraint FK_T_FB_BUD_REFERENCE_T_FB_SU2 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_ChargeApplyDetail add constraint FK_Reference_115 foreign key (ChargeApplyMasterID)
      references T_FB_ChargeApplyMaster (ChargeApplyMasterID) on delete restrict on update restrict;

alter table T_FB_ChargeApplyDetail add constraint FK_T_FB_CHA_REFERENCE_T_FB_s41 foreign key (BorrowApplyDetailID)
      references T_FB_BorrowApplyDetail (BorrowApplyDetailID) on delete restrict on update restrict;

alter table T_FB_ChargeApplyDetail add constraint FK_Reference_6 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_ChargeApplyMaster add constraint FK_Reference_108 foreign key (ExtensionalOrderID)
      references T_FB_ExtensionalOrder (ExtensionalOrderID) on delete restrict on update restrict;

alter table T_FB_ChargeApplyMaster add constraint FK_Reference_122 foreign key (BorrowApplyMasterID)
      references T_FB_BorrowApplyMaster (BorrowApplyMasterID) on delete restrict on update restrict;

alter table T_FB_ChargeByRepay add constraint FK_T_FB_CHA_REFERENCE_T_FB_CH1 foreign key (ChargeApplyMasterID)
      references T_FB_ChargeApplyMaster (ChargeApplyMasterID) on delete restrict on update restrict;

alter table T_FB_CompanyBudgetApplyDetail add constraint FK_Reference_142 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_CompanyBudgetApplyDetail add constraint FK_T_FB_COM_REFERENCE_T_FB_CO1 foreign key (CompanyBudgetApplyMasterID)
      references T_FB_CompanyBudgetApplyMaster (CompanyBudgetApplyMasterID) on delete restrict on update restrict;

alter table T_FB_CompanyBudgetModDetail add constraint FK_T_FB_COM_REFERENCE_T_FB_CO3 foreign key (CompanyBudgetModMasterID)
      references T_FB_CompanyBudgetModMaster (CompanyBudgetModMasterID) on delete restrict on update restrict;

alter table T_FB_CompanyBudgetModDetail add constraint FK_T_FB_COM_REFERENCE_T_FB_SU3 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_CompanyBudgetSumDetail add constraint FK_T_FB_COM_REFERENCE_T_FB_K02 foreign key (CompanyBudgetApplyMasterID)
      references T_FB_CompanyBudgetApplyMaster (CompanyBudgetApplyMasterID) on delete restrict on update restrict;

alter table T_FB_CompanyBudgetSumDetail add constraint FK_T_FB_COM_REFERENCE_T_FB_K01 foreign key (CompanyBudgetSumMasterID)
      references T_FB_CompanyBudgetSumMaster (CompanyBudgetSumMasterID) on delete restrict on update restrict;

alter table T_FB_CompanyTransferDetail add constraint FK_T_FB_TRA_REFERENCE_T_FB_SU1 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_CompanyTransferDetail add constraint FK_T_FB_COM_REFERENCE_T_Fc_Ca1 foreign key (CompanyTransferMasterID)
      references T_FB_CompanyTransferMaster (CompanyTransferMasterID) on delete restrict on update restrict;

alter table T_FB_DeptBudgetAddDetail add constraint FK_Reference_146 foreign key (DeptBudgetAddMasterID)
      references T_FB_DeptBudgetAddMaster (DeptBudgetAddMasterID) on delete restrict on update restrict;

alter table T_FB_DeptBudgetAddDetail add constraint FK_Reference_147 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_DeptBudgetApplyDetail add constraint FK_T_FB_DEP_REFERENCE_T_FB_DE2 foreign key (DeptBudgetApplyMasterID)
      references T_FB_DeptBudgetApplyMaster (DeptBudgetApplyMasterID) on delete restrict on update restrict;

alter table T_FB_DeptBudgetApplyDetail add constraint FK_T_FB_DEP_REFERENCE_T_FB_SU2 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_DeptBudgetSumDetail add constraint FK_T_FB_DEP_REFERENCE_T_FB_K04 foreign key (DeptBudgetSumMasterID)
      references T_FB_DeptBudgetSumMaster (DeptBudgetSumMasterID) on delete restrict on update restrict;

alter table T_FB_DeptBudgetSumDetail add constraint FK_T_FB_DEP_REFERENCE_T_FB_K03 foreign key (DeptBudgetApplyMasterID)
      references T_FB_DeptBudgetApplyMaster (DeptBudgetApplyMasterID) on delete restrict on update restrict;

alter table T_FB_DeptTransferDetail add constraint FK_T_FB_DEP_REFERENCE_T_Fc_S11 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_DeptTransferDetail add constraint FK_T_FB_DEP_REFERENCE_T_Fc_222 foreign key (DeptTransferMasterID)
      references T_FB_DeptTransferMaster (DeptTransferMasterID) on delete restrict on update restrict;

alter table T_FB_ExtensionOrderDetail add constraint FK_Reference_124 foreign key (ExtensionalOrderID)
      references T_FB_ExtensionalOrder (ExtensionalOrderID) on delete restrict on update restrict;

alter table T_FB_ExtensionOrderDetail add constraint FK_Reference_125 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_ExtensionalOrder add constraint FK_T_FB_EXT_REFERENCE_T_FB_S91 foreign key (ExtensionalTypeID)
      references T_FB_ExtensionalType (ExtensionalTypeID) on delete restrict on update restrict;

alter table T_FB_PersonBudgetAddDetail add constraint FK_T_FB_PER_REFERENCE_T_FB_S41 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_PersonBudgetAddDetail add constraint FK_T_FB_PER_REFERENCE_T_FB_D01 foreign key (DeptBudgetAddDetailID)
      references T_FB_DeptBudgetAddDetail (DeptBudgetAddDetailID) on delete restrict on update restrict;

alter table T_FB_PersonBudgetApplyDetail add constraint FK_Reference_144 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_PersonBudgetApplyDetail add constraint FK_T_FB_PER_REFERENCE_T_FB_D02 foreign key (DeptBudgetApplyDetailID)
      references T_FB_DeptBudgetApplyDetail (DeptBudgetApplyDetailID) on delete restrict on update restrict;

alter table T_FB_PersonMoneyAssignDetail add constraint FK_T_FB_PER_REFERENCE_T_FB_N01 foreign key (PersonMoneyAssignMasterID)
      references T_FB_PersonMoneyAssignMaster (PersonMoneyAssignMasterID) on delete restrict on update restrict;

alter table T_FB_PersonMoneyAssignDetail add constraint FK_T_FB_PER_REFERENCE_T_FB_N02 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_RepayApplyDetail add constraint FK_Reference_112 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_RepayApplyDetail add constraint FK_Reference_116 foreign key (RepayApplyMasterID)
      references T_FB_RepayApplyMaster (RepayApplyMasterID) on delete restrict on update restrict;

alter table T_FB_RepayApplyDetail add constraint FK_T_FB_REP_REFERENCE_T_FB_s43 foreign key (BorrowApplyDetailID)
      references T_FB_BorrowApplyDetail (BorrowApplyDetailID) on delete restrict on update restrict;

alter table T_FB_RepayApplyMaster add constraint FK_Reference_114 foreign key (ExtensionalOrderID)
      references T_FB_ExtensionalOrder (ExtensionalOrderID) on delete restrict on update restrict;

alter table T_FB_RepayApplyMaster add constraint FK_T_FB_REP_REFERENCE_T_FB_S01 foreign key (BorrowApplyMasterID)
      references T_FB_BorrowApplyMaster (BorrowApplyMasterID) on delete restrict on update restrict;

alter table T_FB_SUBJECTCOMPANYSET add constraint FK_Reference_137 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_SUMSETTINGSDETAIL add constraint FK_T_FB_SUMSETTINGSMASTER foreign key (SUMSETTINGSMASTERID)
      references T_FB_SUMSETTINGSMASTER (SUMSETTINGSMASTERID) on delete restrict on update restrict;

alter table T_FB_Subject add constraint FK_T_FB_SUB_REFERENCE_T_FB_SU4 foreign key (SubjectTypeID)
      references T_FB_SubjectType (SubjectTypeID) on delete restrict on update restrict;

alter table T_FB_Subject add constraint FK_Reference_134 foreign key (ParentSubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_SubjectCompany add constraint FK_T_FB_COM_REFERENCE_T_FB_SU0 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_SubjectDeptment add constraint FK_T_FB_SUB_REFERENCE_T_FB_SU1 foreign key (SubjectCompanyID)
      references T_FB_SubjectCompany (SubjectCompanyID) on delete restrict on update restrict;

alter table T_FB_SubjectDeptment add constraint FK_T_FB_SUB_REFERENCE_T_FB_S01 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_SubjectPost add constraint FK_T_FB_SUB_REFERENCE_T_FB_SU2 foreign key (SubjectDeptmentID)
      references T_FB_SubjectDeptment (SubjectDeptmentID) on delete restrict on update restrict;

alter table T_FB_SubjectPost add constraint FK_T_FB_SUB_REFERENCE_T_FB_S02 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_TravelExpApplyDetail add constraint FK_Reference_107 foreign key (SubjectID)
      references T_FB_Subject (SubjectID) on delete restrict on update restrict;

alter table T_FB_TravelExpApplyDetail add constraint FK_T_FB_TRA_REFERENCE_T_FB_s42 foreign key (BorrowApplyDetailID)
      references T_FB_BorrowApplyDetail (BorrowApplyDetailID) on delete restrict on update restrict;

alter table T_FB_TravelExpApplyDetail add constraint FK_Reference_3 foreign key (TravelExpApplyMasterID)
      references T_FB_TravelExpApplyMaster (TravelExpApplyMasterID) on delete restrict on update restrict;

alter table T_FB_TravelExpApplyMaster add constraint FK_Reference_113 foreign key (ExtensionalOrderID)
      references T_FB_ExtensionalOrder (ExtensionalOrderID) on delete restrict on update restrict;

alter table T_FB_TravelExpApplyMaster add constraint FK_Reference_123 foreign key (BorrowApplyMasterID)
      references T_FB_BorrowApplyMaster (BorrowApplyMasterID) on delete restrict on update restrict;

alter table T_HR_AdjustLeave add constraint FK_Reference_63 foreign key (LeaveRecordID)
      references T_HR_EmployeeLeaveRecord (LeaveRecordID) on delete restrict on update restrict;

alter table T_HR_AreaAllowance add constraint FK_AreaDifference_T_HR_ARE foreign key (AreaDifferenceID)
      references T_HR_AreaDifference (AreaDifferenceID) on delete restrict on update restrict;

alter table T_HR_AreaCity add constraint FK_T_HR_ARE_AreaCity foreign key (AreaDifferenceID)
      references T_HR_AreaDifference (AreaDifferenceID) on delete restrict on update restrict;

alter table T_HR_AssessmentFormDetail add constraint FK_T_HR_AsseDetail_HR_ASS foreign key (AssessmentFormMasterID)
      references T_HR_AssessmentFormMaster (AssessmentFormMasterID) on delete restrict on update restrict;

alter table T_HR_AssessmentFormDetail add constraint FK_Reference_69 foreign key (CheckPointSetID)
      references T_HR_CheckPointSet (CheckPointSetID) on delete restrict on update restrict;

alter table T_HR_AssessmentFormMaster add constraint FK_T_HR_ASS_EmployeeCheck foreign key (BEREGULARID)
      references T_HR_EmployeeCheck (BEREGULARID) on delete restrict on update restrict;

alter table T_HR_AssessmentFormMaster add constraint FK_T_HR_FormMaster_T_HR_EMP foreign key (POStCHANGEID)
      references T_HR_EmployeePostChange (POStCHANGEID) on delete restrict on update restrict;

alter table T_HR_AttendFreeLeave add constraint FK_Reference_78 foreign key (AttendanceSolutionID)
      references T_HR_AttendanceSolution (AttendanceSolutionID) on delete restrict on update restrict;

alter table T_HR_AttendFreeLeave add constraint FK_AttendFreeLeave_T_HR_LEA foreign key (LeaveTypeSetID)
      references T_HR_LeaveTypeSet (LeaveTypeSetID) on delete restrict on update restrict;

alter table T_HR_AttendMonthlyBalance add constraint FK_T_HR_ATT_Batch_ATT foreign key (MonthlyBatchID)
      references T_HR_AttendMonthlyBatchBalance (MonthlyBatchID) on delete restrict on update restrict;

alter table T_HR_AttendanceDeductDetail add constraint FK_T_HR_ATT_T_HR_DeductMaster foreign key (DeductMasterID)
      references T_HR_AttendanceDeductMaster (DeductMasterID) on delete restrict on update restrict;

alter table T_HR_AttendanceRecord add constraint FK_Reference_64 foreign key (WorkTimeSetID)
      references T_HR_ShiftDefine (ShiftDefineID) on delete restrict on update restrict;

alter table T_HR_AttendanceSolution add constraint FK_Reference_65 foreign key (OvertimeRewardID)
      references T_HR_OvertimeReward (OvertimeRewardID) on delete restrict on update restrict;

alter table T_HR_AttendanceSolution add constraint FK_Reference_74 foreign key (TemplateMasterID)
      references T_HR_SchedulingTemplateMaster (TemplateMasterID) on delete restrict on update restrict;

alter table T_HR_AttendanceSolutionAsign add constraint FK_T_HR_SolutionApl_T_HR_ATT foreign key (AttendanceSolutionID)
      references T_HR_AttendanceSolution (AttendanceSolutionID) on delete restrict on update restrict;

alter table T_HR_AttendanceSolutionDeduct add constraint FK_T_HR_Solution_T_HR_ATT foreign key (AttendanceSolutionID)
      references T_HR_AttendanceSolution (AttendanceSolutionID) on delete restrict on update restrict;

alter table T_HR_AttendanceSolutionDeduct add constraint FK_T_HR_Master_T_HR_Detail foreign key (DeductMasterID)
      references T_HR_AttendanceDeductMaster (DeductMasterID) on delete restrict on update restrict;

alter table T_HR_CheckModelDefine add constraint FK_CheckModelFlow_Model foreign key (OrgCheckModelID)
      references T_HR_OrganizationCheckModel (OrgCheckModelID) on delete restrict on update restrict;

alter table T_HR_CheckPointLevelSet add constraint FK_T_HR_CHE_PointLevel foreign key (CheckPointSetID)
      references T_HR_CheckPointSet (CheckPointSetID) on delete restrict on update restrict;

alter table T_HR_CheckPointSet add constraint FK_Reference_70 foreign key (CheckProjectID)
      references T_HR_CheckProjectSet (CheckProjectID) on delete restrict on update restrict;

alter table T_HR_Company add constraint FK_T_HR_COM_T_HR_Com foreign key (FatherID)
      references T_HR_Company (CompanyID) on delete restrict on update restrict;

alter table T_HR_CompanyHistory add constraint FK_T_HR_COMHIS_T_HR_COM foreign key (FatherCompanyID)
      references T_HR_Company (CompanyID) on delete restrict on update restrict;

alter table T_HR_CustomGuerdon add constraint FK_T_HR_CUS_GuerdonSet foreign key (CustomGuerdonSetID)
      references T_HR_CustomGuerdonSet (CustomGuerdonSetID) on delete restrict on update restrict;

alter table T_HR_CustomGuerdon add constraint FK_T_HR_CustomGuerdon_T_HR_SAL foreign key (SalaryStandardID)
      references T_HR_SalaryStandard (SalaryStandardID) on delete restrict on update restrict;

alter table T_HR_CustomGuerdonArchive add constraint FK_T_HR_GuerdonArchive_SAL foreign key (SalaryArchiveID)
      references T_HR_SalaryArchive (SalaryArchiveID) on delete restrict on update restrict;

alter table T_HR_CustomGuerdonArchiveHis add constraint FK_T_HR_ArchiveHis_T_HR_SAL foreign key (SalaryArchiveID)
      references T_HR_SalaryArchiveHis (SalaryArchiveID) on delete restrict on update restrict;

alter table T_HR_Department add constraint FK_Reference_27 foreign key (CompanyID)
      references T_HR_Company (CompanyID) on delete restrict on update restrict;

alter table T_HR_Department add constraint FK_T_HR_DEP_T_HR_DEPDIC foreign key (DepartmentDictionaryID)
      references T_HR_DepartmentDictionary (DepartmentDictionaryID) on delete restrict on update restrict;

alter table T_HR_DepartmentHistory add constraint FK_T_HR_DEPHIS_T_HR_DEPDIC foreign key (DepartmentDictionaryID)
      references T_HR_DepartmentDictionary (DepartmentDictionaryID) on delete restrict on update restrict;

alter table T_HR_EMPLOYEE add constraint FK_T_HR_EMPBASE_T_HR_RES foreign key (ResumeId)
      references T_HR_Resume (ResumeId) on delete restrict on update restrict;

alter table T_HR_EMPLOYEEPOST add constraint FK_Reference_61 foreign key (PostID)
      references T_HR_Post (PostID) on delete restrict on update restrict;

alter table T_HR_EMPLOYEEPOST add constraint FK_T_HR_EMPPOST_T_HR_EMP foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_EducateHistory add constraint FK_Reference_13 foreign key (ResumeId)
      references T_HR_Resume (ResumeId) on delete restrict on update restrict;

alter table T_HR_EmployeeAbnormRecord add constraint FK_SignInDetail_T_HR_ATT foreign key (AttendanceRecordID)
      references T_HR_AttendanceRecord (AttendanceRecordID) on delete restrict on update restrict;

alter table T_HR_EmployeeAddSum add constraint FK_EmployeeAddSumBatch_EMP foreign key (MonthlyBatchID)
      references T_HR_EmployeeAddSumBatch (MonthlyBatchID) on delete restrict on update restrict;

alter table T_HR_EmployeeCancelLeave add constraint FK_Reference_88 foreign key (LeaveRecordID)
      references T_HR_EmployeeLeaveRecord (LeaveRecordID) on delete restrict on update restrict;

alter table T_HR_EmployeeCheck add constraint FK_T_HR_EmployeeCheck_T_HR_EMP foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_EmployeeContract add constraint FK_T_HR_EMPCONTRACT_T_HR_EMP foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_EmployeeEntry add constraint FK_T_HR_EMPEntry_T_HR_EMPBase foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_EmployeeEvectionReport add constraint FK_T_HR_EMP_EvectionReport foreign key (EvectionRecordID)
      references T_HR_EmployeeEvectionRecord (EvectionRecordID) on delete restrict on update restrict;

alter table T_HR_EmployeeInsurance add constraint FK_T_HR_EMPSIRECORD_T_HR_EMP foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_EmployeeLeaveRecord add constraint FK_Reference_71 foreign key (LeaveTypeSetID)
      references T_HR_LeaveTypeSet (LeaveTypeSetID) on delete restrict on update restrict;

alter table T_HR_EmployeeLevelDayDetails add constraint FK_LevelDayCount_Details foreign key (RecordID)
      references T_HR_EmployeeLevelDayCount (RecordID) on delete restrict on update restrict;

alter table T_HR_EmployeePostChange add constraint FK_T_HR_EMPCHANGE_T_HR_EMPBASE foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_EmployeeSalaryRecord add constraint FK_SalaryRecordBatch_T_HR_SAL foreign key (MonthlyBatchID)
      references T_HR_SalaryRecordBatch (MonthlyBatchID) on delete restrict on update restrict;

alter table T_HR_EmployeeSalaryRecordItem add constraint FK_SalaryRecordItem_T_HR_EMP foreign key (EmployeeSalaryRecordID)
      references T_HR_EmployeeSalaryRecord (EmployeeSalaryRecordID) on delete restrict on update restrict;

alter table T_HR_EmployeeSignInDetail add constraint FK_SignInDetail_SignInRecord foreign key (SignInID)
      references T_HR_EmployeeSignInRecord (SignInID) on delete restrict on update restrict;

alter table T_HR_EmployeeSignInDetail add constraint FK_SignInDetail_AbnormRecord foreign key (AbnormRecordID)
      references T_HR_EmployeeAbnormRecord (AbnormRecordID) on delete restrict on update restrict;

alter table T_HR_Experience add constraint FK_T_HR_EMPCAREER_T_HR_RES foreign key (ResumeId)
      references T_HR_Resume (ResumeId) on delete restrict on update restrict;

alter table T_HR_FamilyMember add constraint FK_Reference_47 foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_FreeLeaveDaySet add constraint FK_Reference_72 foreign key (LeaveTypeSetID)
      references T_HR_LeaveTypeSet (LeaveTypeSetID) on delete restrict on update restrict;

alter table T_HR_ImportSetDetail add constraint FK_T_HR_ImportSetMaster_Detail foreign key (MasterID)
      references T_HR_ImportSetMaster (MasterID) on delete restrict on update restrict;

alter table T_HR_KPIPointDefine add constraint FK_Reference_10 foreign key (SpotCheckGroupID)
      references T_HR_SpotCheckGroup (SpotCheckGroupID) on delete restrict on update restrict;

alter table T_HR_KPIPointDefine add constraint KPIPointDefine_CheckCategory foreign key (CheckCategoryID)
      references T_HR_CheckCategorySet (CheckCategoryID) on delete restrict on update restrict;

alter table T_HR_KPIPointDefine add constraint FK_KPIPointDefine_T_HR_CHE foreign key (CheckModelId)
      references T_HR_CheckModelDefine (CheckModelId) on delete restrict on update restrict;

alter table T_HR_KPIRecord add constraint FK_KPIRecord_SpotChecker foreign key (T_H_SpotCheckerID)
      references T_HR_SpotChecker (SpotCheckerID) on delete restrict on update restrict;

alter table T_HR_KPIRecord add constraint FK_T_HR_KPI_KPIPointDefine foreign key (KPIPointID)
      references T_HR_KPIPointDefine (KPIPointID) on delete restrict on update restrict;

alter table T_HR_KPIRecordAppeal add constraint FK_KPIRecordAppeal_T_HR_KPI foreign key (KPIRecordID)
      references T_HR_KPIRecord (KPIRecordID) on delete restrict on update restrict;

alter table T_HR_LeftOffice add constraint FK_T_HR_EMPCHANGE_T_HR_EMP foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_LeftOffice add constraint FK_Reference_94 foreign key (EmployeePostID)
      references T_HR_EMPLOYEEPOST (EmployeePostID) on delete restrict on update restrict;

alter table T_HR_LeftOfficeConfirm add constraint FK_T_HR_LEF_LeftOfficeConfirm foreign key (DIMISSIONID)
      references T_HR_LeftOffice (DIMISSIONID) on delete restrict on update restrict;

alter table T_HR_OrganizationCheckModel add constraint FK_Reference_22 foreign key (FatherlID)
      references T_HR_OrganizationCheckModel (OrgCheckModelID) on delete restrict on update restrict;

alter table T_HR_OutPlanDays add constraint FK_Reference_93 foreign key (VacationID)
      references T_HR_VacationSet (VacationID) on delete restrict on update restrict;

alter table T_HR_PensionDetail add constraint FK_Reference_48 foreign key (PensionMasterID)
      references T_HR_PensionMaster (PensionMasterID) on delete restrict on update restrict;

alter table T_HR_PensionMaster add constraint FK_T_HR_EMPSI_T_HR_EMPBASE foreign key (EmployeeID)
      references T_HR_EMPLOYEE (EmployeeID) on delete restrict on update restrict;

alter table T_HR_Post add constraint FK_T_HR_POS_T_HR_POSDIC foreign key (PostDictionaryID)
      references T_HR_PostDictionary (PostDictionaryID) on delete restrict on update restrict;

alter table T_HR_Post add constraint FK_Reference_60 foreign key (DepartMentID)
      references T_HR_Department (DepartMentID) on delete restrict on update restrict;

alter table T_HR_PostDictionary add constraint FK_PostDictionary_T_HR_DEP foreign key (DepartmentDictionaryID)
      references T_HR_DepartmentDictionary (DepartmentDictionaryID) on delete restrict on update restrict;

alter table T_HR_PostHistory add constraint FK_T_HR_POSHIS_T_HR_POSDIC foreign key (PostDictionaryID)
      references T_HR_PostDictionary (PostDictionaryID) on delete restrict on update restrict;

alter table T_HR_PostLevelDistinction add constraint FK_Reference_36 foreign key (SalarySystemID)
      references T_HR_SalarySystem (SalarySystemID) on delete restrict on update restrict;

alter table T_HR_RelationPost add constraint FK_Reference_46 foreign key (PostID)
      references T_HR_Post (PostID) on delete restrict on update restrict;

alter table T_HR_SalaryArchive add constraint FK_SalaryArchive_T_HR_SAL foreign key (SalaryStandardID)
      references T_HR_SalaryStandard (SalaryStandardID) on delete restrict on update restrict;

alter table T_HR_SalaryArchiveHisItem add constraint FK_SalaryArchiveHis_HisItem foreign key (SalaryArchiveID)
      references T_HR_SalaryArchiveHis (SalaryArchiveID) on delete restrict on update restrict;

alter table T_HR_SalaryArchiveItem add constraint FK_SalaryArchiveItem_HR_SAL foreign key (SalaryArchiveID)
      references T_HR_SalaryArchive (SalaryArchiveID) on delete restrict on update restrict;

alter table T_HR_SalaryLevel add constraint FK_Reference_40 foreign key (PostLevelID)
      references T_HR_PostLevelDistinction (PostLevelID) on delete restrict on update restrict;

alter table T_HR_SalarySolution add constraint FK_SalarySolution_T_HR_ARE foreign key (AreaDifferenceID)
      references T_HR_AreaDifference (AreaDifferenceID) on delete restrict on update restrict;

alter table T_HR_SalarySolution add constraint FK_SalarySolution_SalarySystem foreign key (SalarySystemID)
      references T_HR_SalarySystem (SalarySystemID) on delete restrict on update restrict;

alter table T_HR_SalarySolutionAssign add constraint FK_Reference_39 foreign key (SalarySolutionID)
      references T_HR_SalarySolution (SalarySolutionID) on delete restrict on update restrict;

alter table T_HR_SalarySolutionItem add constraint FK_SALARYSOLUTIONITEM_ITEM foreign key (SalaryItemID)
      references T_HR_SalaryItem (SalaryItemID) on delete restrict on update restrict;

alter table T_HR_SalarySolutionItem add constraint FK_SalarySolutionItem_Solution foreign key (SalarySolutionID)
      references T_HR_SalarySolution (SalarySolutionID) on delete restrict on update restrict;

alter table T_HR_SalarySolutionStandard add constraint FK_SolutionStandard_Standard foreign key (SalaryStandardID)
      references T_HR_SalaryStandard (SalaryStandardID) on delete restrict on update restrict;

alter table T_HR_SalarySolutionStandard add constraint FK_SolutionStandard_Solution foreign key (SalarySolutionID)
      references T_HR_SalarySolution (SalarySolutionID) on delete restrict on update restrict;

alter table T_HR_SalaryStandard add constraint FK_SalaryStandard_SalaryLevel foreign key (SalaryLevelID)
      references T_HR_SalaryLevel (SalaryLevelID) on delete restrict on update restrict;

alter table T_HR_SalaryStandardItem add constraint FK_SalaryStandard_SalaryItem foreign key (SalaryItemID)
      references T_HR_SalaryItem (SalaryItemID) on delete restrict on update restrict;

alter table T_HR_SalaryStandardItem add constraint FK_T_HR_SAL_SalaryStandardItem foreign key (SalaryStandardID)
      references T_HR_SalaryStandard (SalaryStandardID) on delete restrict on update restrict;

alter table T_HR_SalaryTaxes add constraint FK_SalaryTaxes_SalarySolution foreign key (SalarySolutionID)
      references T_HR_SalarySolution (SalarySolutionID) on delete restrict on update restrict;

alter table T_HR_SchedulingTemplateDetail add constraint FK_Reference_73 foreign key (TemplateMasterID)
      references T_HR_SchedulingTemplateMaster (TemplateMasterID) on delete restrict on update restrict;

alter table T_HR_SchedulingTemplateDetail add constraint FK_Reference_75 foreign key (ShiftDefineID)
      references T_HR_ShiftDefine (ShiftDefineID) on delete restrict on update restrict;

alter table T_HR_SpotChecker add constraint FK_Reference_35 foreign key (SpotCheckGroupID)
      references T_HR_SpotCheckGroup (SpotCheckGroupID) on delete restrict on update restrict;

alter table T_HR_StandRewardArchive add constraint FK_T_HR_Archive_T_HR_SAL foreign key (SalaryArchiveID)
      references T_HR_SalaryArchive (SalaryArchiveID) on delete restrict on update restrict;

alter table T_HR_StandRewardArchiveHis add constraint FK_RewardArchive_T_HR_SAL foreign key (SalaryArchiveID)
      references T_HR_SalaryArchiveHis (SalaryArchiveID) on delete restrict on update restrict;

alter table T_HR_StandardPerformanceReward add constraint FK_Reference_34 foreign key (PerformanceRewardSetID)
      references T_HR_PerformanceRewardSet (PerformanceRewardSetID) on delete restrict on update restrict;

alter table T_HR_StandardPerformanceReward add constraint FK_T_HR_STAReward_T_HR_SAL foreign key (SalaryStandardID)
      references T_HR_SalaryStandard (SalaryStandardID) on delete restrict on update restrict;

alter table T_OA_ACCIDENTRECORD add constraint FK_T_OA_ACCIDENTRECORD foreign key (ASSETID)
      references T_OA_VEHICLE (ASSETID) on delete restrict on update restrict;

alter table T_OA_AreaAllowance add constraint FK_AreaDifference_T_OA_ARE foreign key (AreaDifferenceID)
      references T_OA_AreaDifference (AreaDifferenceID) on delete restrict on update restrict;

alter table T_OA_AreaCity add constraint FK_T_OA_ARE_AreaCity foreign key (AreaDifferenceID)
      references T_OA_AreaDifference (AreaDifferenceID) on delete restrict on update restrict;

alter table T_OA_BUSINESSREPORT add constraint FK_T_OA_BUSINESSREPORT foreign key (BUSINESSTRIPID)
      references T_OA_BUSINESSTRIP (BUSINESSTRIPID) on delete restrict on update restrict;

alter table T_OA_BUSINESSREPORT2 add constraint FK_Reference_212 foreign key (BUSINESSTRIPID)
      references T_OA_BUSINESSTRIP2 (BUSINESSTRIPID) on delete restrict on update restrict;

alter table T_OA_BUSINESSREPORTDETAIL add constraint FK_Reference_208 foreign key (BUSINESSREPORTID)
      references T_OA_BUSINESSREPORT2 (BUSINESSREPORTID) on delete restrict on update restrict;

alter table T_OA_BUSINESSTRIPDETAIL add constraint FK_Reference_209 foreign key (BUSINESSTRIPID)
      references T_OA_BUSINESSTRIP2 (BUSINESSTRIPID) on delete restrict on update restrict;

alter table T_OA_CANTAKETHEPLANELINE add constraint FK_Reference_207 foreign key (TRAVELSOLUTIONSID)
      references T_OA_TRAVELSOLUTIONS (TRAVELSOLUTIONSID) on delete restrict on update restrict;

alter table T_OA_CONSERVATION add constraint FK_T_OA_CONSERVATION foreign key (ASSETID)
      references T_OA_VEHICLE (ASSETID) on delete restrict on update restrict;

alter table T_OA_CONTRACTPRINT add constraint FK_T_OA_CONTRACTPRINT foreign key (CONTRACTAPPID)
      references T_OA_CONTRACTAPP (CONTRACTAPPID) on delete restrict on update restrict;

alter table T_OA_CONTRACTTEMPLATE add constraint FK_T_OA_CONTRACTTEMPLATE foreign key (CONTRACTTYPEID)
      references T_OA_CONTRACTTYPE (CONTRACTTYPEID) on delete restrict on update restrict;

alter table T_OA_CONTRACTVIEW add constraint FK_T_OA_CONTRACTVIEW foreign key (CONTRACTPRINTID)
      references T_OA_CONTRACTPRINT (CONTRACTPRINTID) on delete restrict on update restrict;

alter table T_OA_COSTRECORD add constraint FK_T_OA_COSTRECORD foreign key (ASSETID)
      references T_OA_VEHICLE (ASSETID) on delete restrict on update restrict;

alter table T_OA_ConservationRecord add constraint FK_T_OA_ConservationRecord foreign key (CONSERVATIONID)
      references T_OA_CONSERVATION (CONSERVATIONID) on delete restrict on update restrict;

alter table T_OA_HIREAPP add constraint FK_T_OA_HIREAPP foreign key (HOUSELISTID)
      references T_OA_HOUSELIST (HOUSELISTID) on delete restrict on update restrict;

alter table T_OA_HOUSELIST add constraint FK_T_OA_HOUSELIST1 foreign key (HOUSEID)
      references T_OA_HOUSEINFO (HOUSEID) on delete restrict on update restrict;

alter table T_OA_HOUSELIST add constraint FK_T_OA_HOUSELIST2 foreign key (ISSUANCEID)
      references T_OA_HOUSEINFOISSUANCE (ISSUANCEID) on delete restrict on update restrict;

alter table T_OA_HireRecord add constraint T_OA_HireRecord foreign key (HIREAPPID)
      references T_OA_HIREAPP (HIREAPPID) on delete restrict on update restrict;

alter table T_OA_LENDARCHIVES add constraint FK_T_OA_LENDARCHIVES foreign key (ARCHIVESID)
      references T_OA_ARCHIVES (ARCHIVESID) on delete restrict on update restrict;

alter table T_OA_LICENSEDETAIL add constraint FK_T_OA_LICENSEDETAIL foreign key (LICENSEMASTERID)
      references T_OA_LICENSEMASTER (LICENSEMASTERID) on delete restrict on update restrict;

alter table T_OA_LICENSEMASTER add constraint FK_T_OA_LICENSEMASTER foreign key (ORGCODE)
      references T_OA_ORGANIZATION (ORGCODE) on delete restrict on update restrict;

alter table T_OA_LICENSEUSER add constraint FK_T_OA_LICENSEUSER foreign key (LICENSEMASTERID)
      references T_OA_LICENSEMASTER (LICENSEMASTERID) on delete restrict on update restrict;

alter table T_OA_MAINTENANCEAPP add constraint FK_T_OA_MAINTENANCEAPP foreign key (ASSETID)
      references T_OA_VEHICLE (ASSETID) on delete restrict on update restrict;

alter table T_OA_MAINTENANCERECORD add constraint FK_T_OA_MAINTENANCERECORD foreign key (MAINTENANCEAPPID)
      references T_OA_MAINTENANCEAPP (MAINTENANCEAPPID) on delete restrict on update restrict;

alter table T_OA_MEETINGCONTENT add constraint FK_T_OA_MEETINGCONTENT foreign key (MEETINGINFOID, MEETINGUSERID)
      references T_OA_MEETINGSTAFF (MEETINGINFOID, MEETINGUSERID) on delete restrict on update restrict;

alter table T_OA_MEETINGINFO add constraint FK_T_OA_MEETINGINFO1 foreign key (MEETINGROOMNAME)
      references T_OA_MEETINGROOM (MEETINGROOMNAME) on delete restrict on update restrict;

alter table T_OA_MEETINGINFO add constraint FK_T_OA_MEETINGINFO2 foreign key (MEETINGTYPE)
      references T_OA_MEETINGTYPE (MEETINGTYPE) on delete restrict on update restrict;

alter table T_OA_MEETINGMESSAGE add constraint FK_T_OA_MEETINGMESSAGE foreign key (MEETINGINFOID)
      references T_OA_MEETINGINFO (MEETINGINFOID) on delete restrict on update restrict;

alter table T_OA_MEETINGROOMAPP add constraint FK_T_OA_MEETINGROOMAPP foreign key (MEETINGROOMNAME)
      references T_OA_MEETINGROOM (MEETINGROOMNAME) on delete restrict on update restrict;

alter table T_OA_MEETINGROOMTIMECHANGE add constraint FK_T_OA_MEETINGROOMTIMECHANGE foreign key (MEETINGROOMAPPID)
      references T_OA_MEETINGROOMAPP (MEETINGROOMAPPID) on delete restrict on update restrict;

alter table T_OA_MEETINGSTAFF add constraint FK_T_OA_MEETINGSTAFF foreign key (MEETINGINFOID)
      references T_OA_MEETINGINFO (MEETINGINFOID) on delete restrict on update restrict;

alter table T_OA_MEETINGTEMPLATE add constraint FK_T_OA_MEETINGTEMPLATE foreign key (MEETINGTYPE)
      references T_OA_MEETINGTYPE (MEETINGTYPE) on delete restrict on update restrict;

alter table T_OA_MEETINGTIMECHANGE add constraint FK_T_OA_MEETINGTIMECHANGE foreign key (MEETINGINFOID)
      references T_OA_MEETINGINFO (MEETINGINFOID) on delete restrict on update restrict;

alter table T_OA_PROGRAMAPPLICATIONS add constraint FK_Reference_210 foreign key (TRAVELSOLUTIONSID)
      references T_OA_TRAVELSOLUTIONS (TRAVELSOLUTIONSID) on delete restrict on update restrict;

alter table T_OA_REIMBURSEMENTDETAIL add constraint FK_Reference_213 foreign key (TRAVELREIMBURSEMENTID)
      references T_OA_TRAVELREIMBURSEMENT (TRAVELREIMBURSEMENTID) on delete restrict on update restrict;

alter table T_OA_REQUIRE add constraint FK_T_OA_REQUIRE foreign key (REQUIREMASTERID)
      references T_OA_REQUIREMASTER (REQUIREMASTERID) on delete restrict on update restrict;

alter table T_OA_REQUIREDETAIL add constraint FK_T_OA_REQUIREDETAIL foreign key (REQUIREMASTERID, SUBJECTID)
      references T_OA_REQUIREDETAIL2 (REQUIREMASTERID, SUBJECTID) on delete restrict on update restrict;

alter table T_OA_REQUIREDETAIL2 add constraint FK_T_OA_REQUIREDETAIL2 foreign key (REQUIREMASTERID)
      references T_OA_REQUIREMASTER (REQUIREMASTERID) on delete restrict on update restrict;

alter table T_OA_REQUIRERESULT add constraint FK_T_OA_REQUIRERESULT2 foreign key (REQUIREID)
      references T_OA_REQUIRE (REQUIREID) on delete restrict on update restrict;

alter table T_OA_REQUIRERESULT add constraint FK_T_OA_REQUIRERESULT foreign key (REQUIREMASTERID)
      references T_OA_REQUIREMASTER (REQUIREMASTERID) on delete restrict on update restrict;

alter table T_OA_RequireDistribute add constraint FK_T_OA_RequireDistribute foreign key (REQUIREID)
      references T_OA_REQUIRE (REQUIREID) on delete restrict on update restrict;

alter table T_OA_SENDDOC add constraint FK_T_OA_SENDDOC foreign key (SENDDOCTYPE)
      references T_OA_SENDDOCTYPE (SENDDOCTYPE) on delete restrict on update restrict;

alter table T_OA_SatisfactionDetail add constraint FK_T_OA_SatisfactionDetail foreign key (SatisfactionMasterID)
      references T_OA_SatisfactionMaster (SatisfactionMasterID) on delete restrict on update restrict;

alter table T_OA_SatisfactionDistribute add constraint FK_T_OA_SatisfactionDistribute foreign key (SatisfactionRequireID)
      references T_OA_SatisfactionRequire (SatisfactionRequireID) on delete restrict on update restrict;

alter table T_OA_SatisfactionRequire add constraint FK_T_OA_SatisfactionRequire foreign key (SatisfactionMasterID)
      references T_OA_SatisfactionMaster (SatisfactionMasterID) on delete restrict on update restrict;

alter table T_OA_SatisfactionResult add constraint FK_T_OA_SatisfactionResult foreign key (SatisfactionRequireID)
      references T_OA_SatisfactionRequire (SatisfactionRequireID) on delete restrict on update restrict;

alter table T_OA_TAKETHESTANDARDTRANSPORT add constraint FK_Reference_206 foreign key (TRAVELSOLUTIONSID)
      references T_OA_TRAVELSOLUTIONS (TRAVELSOLUTIONSID) on delete restrict on update restrict;

alter table T_OA_TRAVELREIMBURSEMENT add constraint FK_Reference_211 foreign key (BUSINESSREPORTID)
      references T_OA_BUSINESSREPORT2 (BUSINESSREPORTID) on delete restrict on update restrict;

alter table T_OA_VEHICLECARD add constraint FK_T_OA_VEHICLECARD foreign key (ASSETID)
      references T_OA_VEHICLE (ASSETID) on delete restrict on update restrict;

alter table T_OA_VEHICLEDISPATCH add constraint FK_T_OA_VEHICLEDISPATCH foreign key (ASSETID)
      references T_OA_VEHICLE (ASSETID) on delete restrict on update restrict;

alter table T_OA_VEHICLEDISPATCHDETAIL add constraint FK_T_OA_VEHICLEDISPATCHDETAIL1 foreign key (VEHICLEDISPATCHID)
      references T_OA_VEHICLEDISPATCH (VEHICLEDISPATCHID) on delete restrict on update restrict;

alter table T_OA_VEHICLEDISPATCHDETAIL add constraint FK_T_OA_VEHICLEDISPATCHDETAIL2 foreign key (VEHICLEUSEAPPID)
      references T_OA_VEHICLEUSEAPP (VEHICLEUSEAPPID) on delete restrict on update restrict;

alter table T_OA_VehicledispatchRecord add constraint FK_VehicledispatchRecord foreign key (VEHICLEDISPATCHDETAILID)
      references T_OA_VEHICLEDISPATCHDETAIL (VEHICLEDISPATCHDETAILID) on delete restrict on update restrict;

alter table T_OA_WELFAREDETAIL add constraint FK_T_OA_WELFAREDETAIL foreign key (WELFAREID)
      references T_OA_WELFAREMASERT (WELFAREID) on delete restrict on update restrict;

alter table T_OA_WELFAREDISTRIBUTEDETAIL add constraint FK_T_OA_WELFAREDISDETAIL foreign key (WELFAREDISTRIBUTEMASTERID)
      references T_OA_WELFAREDISTRIBUTEMASTER (WELFAREDISTRIBUTEMASTERID) on delete restrict on update restrict;

alter table T_OA_WELFAREDISTRIBUTEMASTER add constraint FK_T_OA_WELFAREDISMASTER foreign key (WELFAREID)
      references T_OA_WELFAREMASERT (WELFAREID) on delete restrict on update restrict;

alter table T_OA_WELFAREDISTRIBUTEUNDO add constraint FK_T_OA_WELFAREDISTRIBUTEUNDO foreign key (WELFAREDISTRIBUTEMASTERID)
      references T_OA_WELFAREDISTRIBUTEMASTER (WELFAREDISTRIBUTEMASTERID) on delete restrict on update restrict;

alter table T_SYS_DICTIONARY add constraint FK_Reference_98 foreign key (FatherID)
      references T_SYS_DICTIONARY (DICTIONARYID) on delete restrict on update restrict;

alter table T_SYS_EntityMenu add constraint FK_Reference_96 foreign key (SuperiorID)
      references T_SYS_EntityMenu (EntityMenuID) on delete restrict on update restrict;

alter table T_SYS_EntityMenuCustomPerm add constraint FK_Reference_100 foreign key (PermissionID)
      references T_SYS_Permission (PermissionID) on delete restrict on update restrict;

alter table T_SYS_EntityMenuCustomPerm add constraint FK_T_SYS_RO_EntityMenu foreign key (EntityMenuID)
      references T_SYS_EntityMenu (EntityMenuID) on delete restrict on update restrict;

alter table T_SYS_EntityMenuCustomPerm add constraint FK_Reference_104 foreign key (RoleID)
      references T_SYS_Role (RoleID) on delete restrict on update restrict;

alter table T_SYS_FBADMINROLE add constraint FK_Reference_106 foreign key (FBADMINID)
      references T_SYS_FBADMIN (FBADMINID) on delete restrict on update restrict;

alter table T_SYS_Permission add constraint FK_Reference_105 foreign key (EntityMenuID)
      references T_SYS_EntityMenu (EntityMenuID) on delete restrict on update restrict;

alter table T_SYS_RoleEntityMenu add constraint FK_T_RoleEntityMenu_T_SYS_EN foreign key (EntityMenuID)
      references T_SYS_EntityMenu (EntityMenuID) on delete restrict on update restrict;

alter table T_SYS_RoleEntityMenu add constraint FK_T_SYS_RO_T_SYS_Role foreign key (RoleID)
      references T_SYS_Role (RoleID) on delete restrict on update restrict;

alter table T_SYS_RoleMenuPermission add constraint FK_T_SYS_RO_RoleEntityMenu foreign key (RoleEntityMenuID)
      references T_SYS_RoleEntityMenu (RoleEntityMenuID) on delete restrict on update restrict;

alter table T_SYS_RoleMenuPermission add constraint FK_Relationship_6 foreign key (PermissionID)
      references T_SYS_Permission (PermissionID) on delete restrict on update restrict;

alter table T_SYS_UserRole add constraint FK_Reference_95 foreign key (RoleID)
      references T_SYS_Role (RoleID) on delete restrict on update restrict;

alter table T_SYS_UserRole add constraint FK_Reference_99 foreign key (SysUserID)
      references T_SYS_USer (SysUserID) on delete restrict on update restrict;

alter table T_WF_DOTASKRULEDETAIL add constraint FK_Reference_216 foreign key (DOTASKRULEID)
      references T_WF_DOTASKRULE (DOTASKRULEID) on delete restrict on update restrict;

