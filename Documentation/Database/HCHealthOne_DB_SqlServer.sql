USE [EDH_DST_FL]
GO
/****** Object:  Schema [member]    Script Date: 1/19/2022 4:06:11 PM ******/
CREATE SCHEMA [member]
GO
/****** Object:  Schema [provider]    Script Date: 1/19/2022 4:06:11 PM ******/
CREATE SCHEMA [provider]
GO
/****** Object:  Table [member].[AccumulatorType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[AccumulatorType](
	[AccumulatorTypeId] [int] NOT NULL,
	[AccumulatorTypeName] [varchar](100) NULL,
	[AccumulatorTypeCode] [varchar](50) NULL,
	[AccumulatorTypeDescription] [varchar](2000) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](200) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[SourceSystemCode] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[AddressType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[AddressType](
	[AddressTypeId] [int] NOT NULL,
	[AddressTypeGroupId] [int] NOT NULL,
	[AddressTypeCode] [varchar](50) NULL,
	[AddressTypeName] [varchar](100) NULL,
	[AddressTypeDescription] [varchar](2000) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[BenefitPackage]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[BenefitPackage](
	[BenefitPackageId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[BenefitPackageCode] [varchar](50) NULL,
	[BenefitPackageName] [varchar](100) NULL,
	[BenefitPackageDescription] [varchar](4000) NULL,
	[PackageType] [varchar](50) NULL,
	[PackageSubType] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[ContractId] [varchar](5) NULL,
	[PbpId] [varchar](3) NULL,
	[SegmentId] [varchar](3) NULL,
	[CustomerDescription] [varchar](100) NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PlatinumFlag] [char](1) NULL,
	[StatusFlag] [char](1) NULL,
	[EmployerGroupFilter] [varchar](500) NULL,
	[TotalPremium_PartC] [decimal](19, 2) NULL,
	[TotalPremium_PartD] [decimal](19, 2) NULL,
	[TotalPremium_Supplemental] [decimal](19, 2) NULL,
	[SubmissionPremium_PartC] [decimal](19, 2) NULL,
	[SubmissionPremium_PartD] [decimal](19, 2) NULL,
	[EmplGroupFlag] [char](1) NULL,
	[HasDetailRecordsFlag] [char](1) NULL,
	[ServiceArea] [varchar](2) NULL,
	[Site] [varchar](12) NULL,
	[InternalCode] [varchar](25) NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[CompanyId] [int] NULL,
	[SpecialNeedsFlag] [char](1) NULL,
	[SpecialNeedsLevel] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[BenefitPackageCounty]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[BenefitPackageCounty](
	[BenefitPackageCountyId] [int] NOT NULL,
	[BenefitPackageId] [int] NOT NULL,
	[CountyId] [int] NOT NULL,
	[Premium] [decimal](19, 2) NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[BenefitPackageCoverage]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[BenefitPackageCoverage](
	[BenefitPackageCoverageId] [int] NOT NULL,
	[BenefitPackageId] [int] NOT NULL,
	[EmplGroupNumber] [varchar](30) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CopayCategoryPartD] [varchar](20) NULL,
	[Deductible_LIS] [decimal](19, 2) NULL,
	[InitialCoverageLimit] [float] NULL,
	[OutOfPocketThreshold] [float] NULL,
	[CopayOfficeVisit] [varchar](50) NULL,
	[CopaySpecialistVisit] [varchar](50) NULL,
	[CopayGeneric] [varchar](50) NULL,
	[CopayEmergencyRoom] [varchar](50) NULL,
	[PremiumDental] [varchar](50) NULL,
	[CostSharing] [decimal](19, 2) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[CopayUrgency] [varchar](50) NULL,
	[CopayPreferredGeneric] [varchar](50) NULL,
	[CopayPreferred] [varchar](50) NULL,
	[CopayNoPreferred] [varchar](50) NULL,
	[CopayHospital] [varchar](50) NULL,
	[DrugCoverage] [varchar](50) NULL,
	[Issuer] [varchar](50) NULL,
	[RxLogoFlag] [char](1) NULL,
	[Year] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[BenefitPackageDetail]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[BenefitPackageDetail](
	[BenefitPackageBenefitId] [int] NOT NULL,
	[BenefitPackageId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[SubsidyLevel] [varchar](10) NULL,
	[CopayCategory] [char](1) NULL,
	[GroupNumber] [varchar](20) NULL,
	[MP_Display] [varchar](50) NULL,
	[CustomerDescription] [varchar](100) NULL,
	[InternalCode] [varchar](25) NULL,
	[TotalPremiumPartC] [decimal](19, 2) NULL,
	[TotalPremiumPartD] [decimal](19, 2) NULL,
	[MemberPremiumPartC] [decimal](19, 2) NULL,
	[MemberPremiumPartD] [decimal](19, 2) NULL,
	[CmsPremiumPartC] [decimal](19, 2) NULL,
	[OtherPremiumPartC_1] [decimal](19, 2) NULL,
	[OtherPremiumPartC_2] [decimal](19, 2) NULL,
	[CmsPremiumPartD] [decimal](19, 2) NULL,
	[OtherPremiumPartD_1] [decimal](19, 2) NULL,
	[OtherPremiumPartD_2] [decimal](19, 2) NULL,
	[TotalPremiumSupplemental] [decimal](19, 2) NULL,
	[MemberPremiumSupplemental] [decimal](19, 2) NULL,
	[OtherPremiumSupplemental_1] [decimal](19, 2) NULL,
	[OtherPremiumSupplemental_2] [decimal](19, 2) NULL,
	[OtherId_1] [varchar](20) NULL,
	[OtherId_2] [varchar](20) NULL,
	[SpapFlag] [char](1) NULL,
	[LepBillee] [varchar](10) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[BenefitPackageRx]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[BenefitPackageRx](
	[BenefitPackageRxId] [int] NOT NULL,
	[BenefitPackageId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[RxBIN] [varchar](20) NULL,
	[RxPCN] [varchar](20) NULL,
	[RxGroup] [varchar](25) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[ContactType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[ContactType](
	[ContactTypeId] [int] NOT NULL,
	[ContactTypeCode] [varchar](5) NULL,
	[ContactTypeName] [varchar](100) NULL,
	[ContactTypeDescription] [char](18) NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[DisenrollmentReason]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[DisenrollmentReason](
	[DisenrollmentReasonId] [int] NOT NULL,
	[DisenrollmentReasonCode] [varchar](50) NULL,
	[DisenrollmentReasonName] [varchar](50) NULL,
	[DisenrollmentReasonDescription] [varchar](4000) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[EmailType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[EmailType](
	[EmailTypeId] [int] NOT NULL,
	[EmailTypeGroupId] [int] NOT NULL,
	[EmailTypeCode] [varchar](5) NULL,
	[EmailTypeName] [varchar](100) NULL,
	[EmailTypeDescription] [char](18) NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[EnrollmentStatus]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[EnrollmentStatus](
	[EnrollmentStatusId] [int] NOT NULL,
	[EnrollmentStatusCode] [varchar](50) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[EnrollmentStatusCrosswalk]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[EnrollmentStatusCrosswalk](
	[EnrollmentStatusCrosswalkId] [int] NOT NULL,
	[EnrollmentStatusId] [int] NOT NULL,
	[EnrollmentStatusCode] [varchar](50) NULL,
	[EnrollmentStatusName] [varchar](100) NULL,
	[EnrollmentStatusDescription] [varchar](4000) NULL,
	[EnrollmentStatusType] [varchar](50) NULL,
	[CompanyCode] [varchar](8000) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ActiveFlag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[Member]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[Member](
	[MemberId] [int] NOT NULL,
	[BenefitPackageId] [int] NOT NULL,
	[GenderId] [int] NOT NULL,
	[EnrollmentStatusId] [int] NOT NULL,
	[NamePrefix] [varchar](15) NULL,
	[FirstName] [varchar](25) NULL,
	[MiddleName] [varchar](20) NULL,
	[LastName] [varchar](35) NULL,
	[NameSufix] [varchar](20) NULL,
	[Title] [varchar](50) NULL,
	[MemberName] [varchar](1000) NULL,
	[MemberNumber] [varchar](50) NULL,
	[SubscriberNumber] [varchar](50) NULL,
	[LetterSalutation] [varchar](45) NULL,
	[LetterCompClose] [varchar](40) NULL,
	[LetterSender] [varchar](40) NULL,
	[LetterSenderTitle] [varchar](40) NULL,
	[SSN] [varchar](9) NULL,
	[DateOfBirth] [date] NULL,
	[CardPrintFlag] [char](1) NULL,
	[NumberOfCards] [int] NULL,
	[CardPrintDate] [datetime] NULL,
	[CmsLastName] [varchar](50) NULL,
	[CellPlan] [varchar](50) NULL,
	[NickName] [varchar](50) NULL,
	[AssignDate] [date] NULL,
	[EmailOptInFlag] [char](1) NULL,
	[TextOptInFlag] [char](1) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[LineOfBusinessID] [int] NULL,
	[CompanyId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberAccumulator]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberAccumulator](
	[MemberAccumulatorId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[MemberNumber] [varchar](18) NOT NULL,
	[AccumulatorTypeId] [int] NOT NULL,
	[FiscalYear] [int] NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[Limit] [decimal](7, 2) NULL,
	[Amount] [decimal](7, 2) NULL,
	[Frequency] [varchar](10) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](200) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[BenefitPlanCode] [varchar](20) NOT NULL,
	[BenefitPackageId] [int] NOT NULL,
	[ETLFileName] [varchar](200) NOT NULL,
	[SourceSystemCode] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberAddress]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberAddress](
	[MemberAddressId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[AddressTypeId] [int] NOT NULL,
	[PrimaryFlag] [char](1) NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[AddressLine3] [varchar](100) NULL,
	[CityName] [varchar](100) NULL,
	[StateCode] [varchar](2) NULL,
	[ZipCode] [varchar](6) NULL,
	[ZipCodePlus4] [varchar](4) NULL,
	[CountyName] [varchar](20) NULL,
	[CountryName] [varchar](20) NULL,
	[Latitude] [varchar](20) NULL,
	[Longitude] [varchar](20) NULL,
	[AddressFull] [varchar](4000) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[ServiceArea] [varchar](55) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberBenefitPackage]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberBenefitPackage](
	[MemberBenefitPackageId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[BenefitPackageId] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PrimaryFlag] [char](1) NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[OverlapFlag] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberBenefitPackageSnapshot]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberBenefitPackageSnapshot](
	[MemberBenefitPackageSnapshotId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[BenefitPackageId] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[MonthUniqueId] [int] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[PrimaryFlag] [char](1) NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceTable] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberCob]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberCob](
	[MemberCobId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[TranSeqNumber] [decimal](3, 0) NULL,
	[TranStatusCode] [varchar](2) NULL,
	[TranReasonCode] [decimal](2, 0) NULL,
	[TranSourceCode] [varchar](4) NULL,
	[UpdateOperatorID] [varchar](8) NULL,
	[ContractorName] [varchar](25) NULL,
	[ContractorPhone] [varchar](10) NULL,
	[PatientRelationship] [varchar](2) NULL,
	[CheckDate] [datetime] NULL,
	[CheckAmount] [decimal](9, 2) NULL,
	[CheckNumber] [varchar](15) NULL,
	[InfFirstName] [varchar](15) NULL,
	[InfMi] [varchar](1) NULL,
	[InfLastName] [varchar](24) NULL,
	[InfRelationCode] [varchar](1) NULL,
	[InfAddress1] [varchar](32) NULL,
	[InfAddress2] [varchar](32) NULL,
	[InfCity] [varchar](15) NULL,
	[InfState] [varchar](2) NULL,
	[InfZip] [varchar](9) NULL,
	[InfPhone] [varchar](10) NULL,
	[EmpName] [varchar](32) NULL,
	[EmpAddress1] [varchar](32) NULL,
	[EmpAddress2] [varchar](32) NULL,
	[EmpCity] [varchar](15) NULL,
	[EmpState] [varchar](2) NULL,
	[EmpZip] [varchar](9) NULL,
	[EmpPhone] [varchar](10) NULL,
	[EmpEin] [varchar](18) NULL,
	[EmployeeNumber] [varchar](12) NULL,
	[SupType] [varchar](1) NULL,
	[MspType] [varchar](1) NULL,
	[DrugCoverageType] [varchar](1) NULL,
	[RecType] [varchar](3) NULL,
	[InsType] [varchar](1) NULL,
	[InsName] [varchar](32) NULL,
	[InsAddress1] [varchar](32) NULL,
	[InsAddress2] [varchar](32) NULL,
	[InsCity] [varchar](15) NULL,
	[InsState] [varchar](2) NULL,
	[InsZip] [varchar](9) NULL,
	[InsPhone] [varchar](10) NULL,
	[EffectiveDate] [datetime] NULL,
	[TermDate] [datetime] NULL,
	[GroupNumber] [varchar](20) NULL,
	[PolicyNumber] [varchar](17) NULL,
	[RxBin] [varchar](6) NULL,
	[RxPcn] [varchar](10) NULL,
	[RxGroup] [varchar](15) NULL,
	[RxID] [varchar](20) NULL,
	[RxPhone] [varchar](18) NULL,
	[TransactionCode1] [varchar](2) NULL,
	[TransactionCode2] [varchar](2) NULL,
	[TransactionCode3] [varchar](2) NULL,
	[TransactionCode4] [varchar](2) NULL,
	[ActivityCode] [varchar](1) NULL,
	[FirstDevelopment] [varchar](1) NULL,
	[SecondDevelopment] [varchar](1) NULL,
	[DevelopTo] [varchar](1) NULL,
	[Rsp] [varchar](1) NULL,
	[SendCwf] [varchar](1) NULL,
	[CmsGroupingCode] [varchar](2) NULL,
	[SubscriberFirstName] [varchar](15) NULL,
	[SubscriberMi] [varchar](1) NULL,
	[SubscriberLastName] [varchar](24) NULL,
	[SubscriberSocSec] [varchar](9) NULL,
	[DiagnosisCode1] [varchar](10) NULL,
	[DiagnosisCode2] [varchar](10) NULL,
	[DiagnosisCode3] [varchar](10) NULL,
	[DiagnosisCode4] [varchar](10) NULL,
	[DiagnosisCode5] [varchar](10) NULL,
	[IllnessInjuryDate] [datetime] NULL,
	[IllnessInjuryDesc] [varchar](64) NULL,
	[RepName] [varchar](32) NULL,
	[RepAddress1] [varchar](32) NULL,
	[RepAddress2] [varchar](32) NULL,
	[RepCity] [varchar](15) NULL,
	[RepState] [varchar](2) NULL,
	[RepZip] [varchar](9) NULL,
	[RepType] [varchar](1) NULL,
	[DialysisTrainDate] [datetime] NULL,
	[BlackLungInd] [varchar](1) NULL,
	[BlackLungEffDate] [datetime] NULL,
	[MbdSeqNumber] [varchar](3) NULL,
	[MspAccretionDate] [datetime] NULL,
	[OrigContractor] [varchar](5) NULL,
	[ChangeLeadTo] [varchar](5) NULL,
	[SendVenueLetter] [varchar](1) NULL,
	[PhpDate] [datetime] NULL,
	[RemarksCode1] [varchar](2) NULL,
	[RemarksCode2] [varchar](2) NULL,
	[RemarksCode3] [varchar](2) NULL,
	[CommentID] [varchar](8) NULL,
	[TransComments] [varchar](180) NULL,
	[CobCommentID] [varchar](8) NULL,
	[CobComment] [varchar](180) NULL,
	[PartCInd] [varchar](1) NULL,
	[PartDInd] [varchar](1) NULL,
	[SubmitStatus] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateStaff] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateStaff] [varchar](12) NULL,
	[PayerId] [varchar](250) NULL,
	[HealthScopeCode] [varchar](250) NULL,
	[QnxtId] [varchar](250) NULL,
	[OcurrenceStatus] [varchar](250) NULL,
	[DateContracted] [date] NULL,
	[NewPatientRelationship] [varchar](2) NULL,
	[NewMspType] [varchar](1) NULL,
	[NewMspEffectiveDate] [datetime] NULL,
	[NewInsurerType] [varchar](1) NULL,
	[RecHcfaID] [varchar](12) NULL,
	[RecHcfaType] [varchar](15) NULL,
	[DiagnosisIcdind1] [varchar](1) NULL,
	[DiagnosisIcdind2] [varchar](1) NULL,
	[DiagnosisIcdind3] [varchar](1) NULL,
	[DiagnosisIcdind4] [varchar](1) NULL,
	[DiagnosisIcdind5] [varchar](1) NULL,
	[DiagnosisIcdind6] [varchar](1) NULL,
	[DiagnosisIcdind7] [varchar](1) NULL,
	[DiagnosisIcdind8] [varchar](1) NULL,
	[DiagnosisIcdind9] [varchar](1) NULL,
	[DiagnosisIcdind10] [varchar](1) NULL,
	[DiagnosisIcdind11] [varchar](1) NULL,
	[DiagnosisIcdind12] [varchar](1) NULL,
	[DiagnosisIcdind13] [varchar](1) NULL,
	[DiagnosisIcdind14] [varchar](1) NULL,
	[DiagnosisIcdind15] [varchar](1) NULL,
	[DiagnosisIcdind16] [varchar](1) NULL,
	[DiagnosisIcdind17] [varchar](1) NULL,
	[DiagnosisIcdind18] [varchar](1) NULL,
	[DiagnosisIcdind19] [varchar](1) NULL,
	[DiagnosisIcdind20] [varchar](1) NULL,
	[DiagnosisCode6] [varchar](10) NULL,
	[DiagnosisCode7] [varchar](10) NULL,
	[DiagnosisCode8] [varchar](10) NULL,
	[DiagnosisCode9] [varchar](10) NULL,
	[DiagnosisCode10] [varchar](10) NULL,
	[DiagnosisCode11] [varchar](10) NULL,
	[DiagnosisCode12] [varchar](10) NULL,
	[DiagnosisCode13] [varchar](10) NULL,
	[DiagnosisCode14] [varchar](10) NULL,
	[DiagnosisCode15] [varchar](10) NULL,
	[DiagnosisCode16] [varchar](10) NULL,
	[DiagnosisCode17] [varchar](10) NULL,
	[DiagnosisCode18] [varchar](10) NULL,
	[DiagnosisCode19] [varchar](10) NULL,
	[DiagnosisCode20] [varchar](10) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberContact]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberContact](
	[MemberContactId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [datetime] NULL,
	[ContactTypeId] [int] NOT NULL,
	[Relation] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[ContactName] [varchar](150) NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[CityName] [varchar](100) NULL,
	[CountyName] [varchar](100) NULL,
	[StateCode] [varchar](100) NULL,
	[CountryName] [varchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[AddressFull] [varchar](4000) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[CellPhoneNumber] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Latitude] [decimal](7, 4) NULL,
	[Longitude] [decimal](7, 4) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberEmail]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberEmail](
	[MemberEmailId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[EmailTypeId] [int] NOT NULL,
	[EmailAddress] [varchar](100) NULL,
	[PrimaryFlag] [char](1) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberEnrollment]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberEnrollment](
	[MemberEnrollmentId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[EnrollmentStatusId] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberEnrollmentSnapshot]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberEnrollmentSnapshot](
	[MemberEnrollmentSnapshotId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[EnrollmentStatusId] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[MonthUniqueId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberExtended]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberExtended](
	[MemberExtendedId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[CountyId] [int] NOT NULL,
	[AgeGroup] [varchar](50) NULL,
	[MBI] [varchar](12) NULL,
	[MPI] [varchar](50) NULL,
	[UPI] [varchar](100) NULL,
	[HICNumber] [char](12) NULL,
	[BankAccountNumber] [varchar](25) NULL,
	[BankTransactionId] [varchar](25) NULL,
	[Payment_PartA] [numeric](7, 2) NULL,
	[Payment_PartB] [numeric](7, 2) NULL,
	[MemberStatus] [varchar](25) NULL,
	[PriorCommercialCode] [varchar](1) NULL,
	[HICNumber_Original] [char](12) NULL,
	[Enterdate] [date] NULL,
	[OriginalDate] [date] NULL,
	[SubmitDate] [date] NULL,
	[WorkAgedFlag] [char](1) NULL,
	[Rider] [varchar](25) NULL,
	[ElectionPeriod] [varchar](50) NULL,
	[SignatureDate] [date] NULL,
	[CompletionDate] [date] NULL,
	[EnrollDate] [date] NULL,
	[DisenrollDate] [date] NULL,
	[DeathDate] [date] NULL,
	[DisenrollmentReasonId] [int] NULL,
	[PartAFlag] [char](1) NULL,
	[PartBFlag] [char](1) NULL,
	[HospiceFlag] [char](1) NULL,
	[EsrdFlag] [char](1) NULL,
	[ChfFlag] [char](1) NULL,
	[MedicaidFlag] [char](1) NULL,
	[MedicareFlag] [char](1) NULL,
	[DisabledFlag] [char](1) NULL,
	[InstitutionFlag] [char](1) NULL,
	[NurseHomeFlag] [char](1) NULL,
	[Pcp] [varchar](25) NULL,
	[CHF2002_Flag] [char](1) NULL,
	[CHF2003_Flag] [char](1) NULL,
	[Race] [varchar](50) NULL,
	[LanguageCode] [varchar](50) NULL,
	[OutOfSynchFlag] [char](1) NULL,
	[EghpFlag] [char](1) NULL,
	[PremiumWithhold] [varchar](3) NULL,
	[CreditableCoverageCode] [char](1) NULL,
	[UncoveredMonths] [int] NULL,
	[EmployerSubsidyOverrideFlag] [char](1) NULL,
	[OptOutFlag_PartD] [char](1) NULL,
	[SecondaryRxInsuranceFlag] [char](1) NULL,
	[SecondaryRxId] [varchar](20) NULL,
	[SecondaryRxGroup] [varchar](15) NULL,
	[EnrollmentSource] [char](1) NULL,
	[ChangeEffectiveDate] [date] NULL,
	[SubsidyLevel] [varchar](10) NULL,
	[RxBin] [varchar](20) NULL,
	[RxPCN] [varchar](20) NULL,
	[ContractId] [char](5) NULL,
	[PbpId] [char](3) NULL,
	[GroupNumber] [varchar](25) NULL,
	[EmployerGroupNumber] [varchar](50) NULL,
	[CopayCategory] [char](1) NULL,
	[Premium_PartC] [decimal](19, 2) NULL,
	[Premium_PartD] [decimal](19, 2) NULL,
	[SegmentId] [char](3) NULL,
	[LongTermInstitutionFlag] [char](1) NULL,
	[BillingOption] [varchar](50) NULL,
	[FactorType] [char](2) NULL,
	[MspFlag] [char](1) NULL,
	[SecondaryRxBIN] [varchar](6) NULL,
	[SecondaryRxPCN] [varchar](10) NULL,
	[UncoveredMonthsTotal] [int] NULL,
	[LateEnrollmentPenalty] [decimal](19, 2) NULL,
	[RxFactorType] [char](2) NULL,
	[DialysisFlag] [char](1) NULL,
	[TransplantFlag] [char](1) NULL,
	[OptOutFlag_FADemo] [char](1) NULL,
	[SpapFlag] [char](1) NULL,
	[DualStatusCode] [varchar](50) NULL,
	[SepReason] [varchar](50) NULL,
	[SecondaryCoverageName] [varchar](50) NULL,
	[MedicaidId] [varchar](50) NULL,
	[ConfirmationId] [varchar](50) NULL,
	[SourceOfApp] [varchar](50) NULL,
	[DisenrollReceivedDate] [date] NULL,
	[MedicaidReCertDate] [date] NULL,
	[RequestRetroDistDate] [date] NULL,
	[PartD_EligibilityDate] [date] NULL,
	[RetirementDate] [date] NULL,
	[SignatureId] [varchar](50) NULL,
	[SalesRep] [varchar](50) NULL,
	[WrittenLanguage] [varchar](50) NULL,
	[DeathLocation] [varchar](50) NULL,
	[AltFormatRequest] [varchar](50) NULL,
	[IncarcerationLocation] [varchar](50) NULL,
	[PriorCoverage] [varchar](50) NULL,
	[OecSignatureId] [varchar](50) NULL,
	[BeqrCoverageGap] [varchar](50) NULL,
	[DME] [varchar](50) NULL,
	[BankAccountType] [varchar](55) NULL,
	[IncarcerationDate] [date] NULL,
	[LepDecisionReceived] [date] NULL,
	[RfiReceivedDate] [date] NULL,
	[CancelReceivedDate] [date] NULL,
	[StateDualStatusVerified] [date] NULL,
	[PriorMedicalCoverage] [varchar](50) NULL,
	[UCID] [varchar](50) NULL,
	[AppSignedAsX] [varchar](50) NULL,
	[StateDualStatus] [varchar](50) NULL,
	[EmplGroupName] [varchar](50) NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ScCode] [varchar](5) NULL,
	[AccountNumber01] [varchar](100) NULL,
	[MemberSaleId] [int] NULL,
	[CountyName] [varchar](30) NULL,
	[DoNotCallFlag] [char](1) NULL,
	[PhoneNumberFlag] [char](1) NULL,
	[PhoneOptOutFlag] [char](1) NULL,
	[DisconnectedFlagHome] [char](1) NULL,
	[SmsFlagHome] [char](1) NULL,
	[WrongNumberFlagHome] [char](1) NULL,
	[DisconnectedFlagCell] [char](1) NULL,
	[SmsFlagCell] [char](1) NULL,
	[WrongNumberFlagCell] [char](1) NULL,
	[DisconnectedFlagOther] [char](1) NULL,
	[SmsFlagOther] [char](1) NULL,
	[WrongNumberFlagOther] [char](1) NULL,
	[EmailFlag] [char](1) NULL,
	[EmailOptOutFlag] [char](1) NULL,
	[LargePrintFlag] [char](1) NULL,
	[PriorPlanType] [varchar](50) NULL,
	[ChronicCondFlag] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberIndicator]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberIndicator](
	[MemberIndicatorId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[Indicator] [varchar](25) NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PrimaryFlag] [char](1) NULL,
	[SubmitStatus] [varchar](50) NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[Value] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberKey]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberKey](
	[MemberKeyId] [int] NOT NULL,
	[MemberId] [int] NULL,
	[FinalMasterId] [varchar](50) NULL,
	[MemberNumber] [varchar](50) NULL,
	[UpdateDate] [date] NULL,
	[UpdatedBy] [char](12) NULL,
	[DataSourceKey] [varchar](50) NOT NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberPcp]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberPcp](
	[MemberPcpId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[TermReason] [varchar](55) NULL,
	[ServiceType] [varchar](50) NULL,
	[ProviderAffiliationId] [int] NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[RenderingNPI] [varchar](10) NULL,
	[BillingNPI] [varchar](10) NULL,
	[LocationCode] [varchar](100) NULL,
	[ProviderAffiliationLocationId] [int] NULL,
	[AdminGroupId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberPhone]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberPhone](
	[MemberPhoneId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[PhoneTypeId] [int] NOT NULL,
	[PrimaryFlag] [char](1) NULL,
	[PhoneNumber] [varchar](25) NULL,
	[Extension] [varchar](10) NULL,
	[CountryCallingCode] [numeric](4, 0) NULL,
	[AreaCode] [varchar](5) NULL,
	[Exchange] [varchar](3) NULL,
	[Number] [varchar](4) NULL,
	[BestTimeToCall] [varchar](50) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MemberSale]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MemberSale](
	[MemberSaleId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[SalesRepId] [varchar](50) NULL,
	[SalesRepFirstName] [varchar](25) NULL,
	[SalesRepLastName] [varchar](35) NULL,
	[DocReferenceId] [varchar](50) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[SalesLocation] [varchar](50) NULL,
	[ReferralSource] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[ETLExecutionLogID] [int] NULL,
	[ETLBatchLogID] [int] NULL,
	[ETLLastUpdatedate] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[RecordActionType] [varchar](1) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[SourceSystemID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[MMR]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[MMR](
	[MMRId] [int] NOT NULL,
	[MemberId] [int] NULL,
	[ReportDate] [datetime] NULL,
	[CodeID] [char](12) NULL,
	[OrgID] [char](5) NULL,
	[RunDate] [datetime] NULL,
	[CurrPayMonth] [datetime] NULL,
	[AdjustmentCode] [varchar](5) NULL,
	[HicNumber] [char](12) NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[PartAFlag] [char](1) NULL,
	[PartBFlag] [char](1) NULL,
	[AgeGroup] [varchar](10) NULL,
	[CountyCode] [char](5) NULL,
	[OutOfAreaCodeFlag] [char](1) NULL,
	[HospiceFlag] [char](1) NULL,
	[EsrdFlag] [char](1) NULL,
	[InstitutionFlag] [char](1) NULL,
	[NurseHomeFlag] [char](1) NULL,
	[MedicaidFlag] [char](1) NULL,
	[WorkAgedFlag] [char](1) NULL,
	[NumMonths] [decimal](2, 0) NULL,
	[PartAPayment] [decimal](11, 2) NULL,
	[PartBPayment] [decimal](11, 2) NULL,
	[TotalPayment] [decimal](12, 2) NULL,
	[ProcessedFlag] [char](1) NULL,
	[ArchiveDate] [datetime] NULL,
	[ArchiveStaffID] [char](12) NULL,
	[ProcessDate] [datetime] NULL,
	[ProcessStaffID] [char](12) NULL,
	[NumMonthsB] [decimal](2, 0) NULL,
	[PrevDisableFlag] [char](1) NULL,
	[MedicaidAddonFlag] [char](1) NULL,
	[Pipdcg] [decimal](2, 0) NULL,
	[DefaultFlag] [char](1) NULL,
	[RiskFactorA] [decimal](6, 4) NULL,
	[RiskFactorB] [decimal](6, 4) NULL,
	[RiskPaymentA] [decimal](9, 2) NULL,
	[RiskPaymentB] [decimal](9, 2) NULL,
	[DemoPaymentA] [decimal](9, 2) NULL,
	[DemoPaymentB] [decimal](9, 2) NULL,
	[PreferredFlag] [char](1) NULL,
	[MemberFlag] [char](1) NULL,
	[ChfFlag] [char](1) NULL,
	[RaAgeGroup] [varchar](10) NULL,
	[PrevDisbRatio] [decimal](6, 4) NULL,
	[Chf2002Flag] [char](1) NULL,
	[Chf2003Flag] [char](1) NULL,
	[PbpID] [varchar](3) NULL,
	[RaceCode] [char](1) NULL,
	[Delta] [decimal](7, 2) NULL,
	[RecNumber] [decimal](3, 0) NULL,
	[PriorRecordID] [char](12) NULL,
	[AdjustmentID] [char](12) NULL,
	[RateCell] [varchar](20) NULL,
	[Comments] [varchar](200) NULL,
	[PostFlag] [char](1) NULL,
	[PostDate] [datetime] NULL,
	[FactorType] [char](2) NULL,
	[FrailtyFlag] [char](1) NULL,
	[LagFlag] [char](1) NULL,
	[PostStaff] [char](12) NULL,
	[PostSummaryID] [char](12) NULL,
	[PostMonth] [datetime] NULL,
	[FutureFlag] [char](1) NULL,
	[EsrdMspFlag] [char](1) NULL,
	[SegmentID] [varchar](3) NULL,
	[EnrollmentSource] [char](1) NULL,
	[EghpFlag] [char](1) NULL,
	[BasicAPayment] [decimal](8, 2) NULL,
	[BasicBPayment] [decimal](8, 2) NULL,
	[PartACostSharingRebate] [decimal](8, 2) NULL,
	[PartBCostSharingRebate] [decimal](8, 2) NULL,
	[PartAMandsuppbenRebate] [decimal](8, 2) NULL,
	[PartBMandsuppbenRebate] [decimal](8, 2) NULL,
	[PartAPtbpremreducRebate] [decimal](8, 2) NULL,
	[PartBPtbpremreducRebate] [decimal](8, 2) NULL,
	[PartARxpremreducRebate] [decimal](8, 2) NULL,
	[PartBRxpremreducRebate] [decimal](8, 2) NULL,
	[PartAMaPayment] [decimal](10, 2) NULL,
	[PartBMaPayment] [decimal](10, 2) NULL,
	[TotalMaPayment] [decimal](11, 2) NULL,
	[RxFactor] [decimal](6, 4) NULL,
	[RxLowincomeFlag] [char](1) NULL,
	[RxLowincomeMultiplier] [decimal](6, 4) NULL,
	[RxInstFlag] [char](1) NULL,
	[RxInstMultiplier] [decimal](6, 4) NULL,
	[RxPremreducRebate] [decimal](8, 2) NULL,
	[RxPremium] [decimal](8, 2) NULL,
	[RxDirectSubsidy] [decimal](10, 2) NULL,
	[RxReinsSubsidy] [decimal](10, 2) NULL,
	[RxLowincomeSubsidy] [decimal](10, 2) NULL,
	[TotalRxPayment] [decimal](11, 2) NULL,
	[PacePremiumAddon] [decimal](10, 2) NULL,
	[PaceCostsharingAddon] [decimal](10, 2) NULL,
	[PartARxsuppRebate] [decimal](8, 2) NULL,
	[PartBRxsuppRebate] [decimal](8, 2) NULL,
	[NumMonthsRx] [decimal](2, 0) NULL,
	[LowIncomeSubsidy] [decimal](8, 2) NULL,
	[OriginalTotalRxPayment] [decimal](10, 2) NULL,
	[OriginalRxLowincomeFlag] [char](1) NULL,
	[LisPostDate] [datetime] NULL,
	[LisPostStaff] [char](12) NULL,
	[PartCLongTermInstFlag] [char](1) NULL,
	[PartAMsaPayment] [decimal](8, 2) NULL,
	[PartBMsaPayment] [decimal](8, 2) NULL,
	[NumMonthsMsa] [decimal](2, 0) NULL,
	[DeMinimisFlag] [char](1) NULL,
	[CurrentMedicaidStatus] [char](1) NULL,
	[OriginalFactorType] [varchar](2) NULL,
	[RxFactorMultiplier] [varchar](4) NULL,
	[PartDDualFlag] [char](1) NULL,
	[PartCFrailtyFactor] [decimal](6, 4) NULL,
	[AgedDisbMspFlag] [char](1) NULL,
	[MspFactor] [decimal](6, 4) NULL,
	[MspReductionA] [decimal](10, 2) NULL,
	[MspReductionB] [decimal](10, 2) NULL,
	[MspFlag] [char](1) NULL,
	[MedicaidDualStatusCode] [char](2) NULL,
	[RxCovGapSubsidy] [decimal](8, 2) NULL,
	[RxFactorType] [char](2) NULL,
	[RxDefaultFlag] [char](1) NULL,
	[OriginalRxFactorType] [varchar](2) NULL,
	[PartAMonthlyPayRate] [decimal](8, 2) NULL,
	[PartBMonthlyPayRate] [decimal](8, 2) NULL,
	[PartDMonthlyPayRate] [decimal](8, 2) NULL,
	[CleanupID] [varchar](10) NULL,
	[FileSessionID] [char](12) NULL,
	[MatchDate] [datetime] NULL,
	[MatchStaff] [char](12) NULL,
	[MtmAddonPayment] [decimal](10, 2) NULL,
	[CreatedBy] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](12) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[MemberNumber] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [member].[PhoneType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [member].[PhoneType](
	[PhoneTypeId] [int] NOT NULL,
	[PhoneTypeGroupId] [int] NOT NULL,
	[PhoneTypeCode] [varchar](5) NULL,
	[PhoneTypeName] [varchar](100) NULL,
	[PhoneTypeDescription] [varchar](4000) NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[AdminGroup]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[AdminGroup](
	[AdminGroupId] [int] NOT NULL,
	[AdminGroupTypeId] [int] NOT NULL,
	[AdminGroupCode] [varchar](100) NULL,
	[AdminGroupName] [varchar](100) NULL,
	[AdminGroupDescription] [varchar](4000) NULL,
	[ExternalId] [varchar](50) NULL,
	[CityId_Mailing] [int] NULL,
	[MailingAddressLine1] [varchar](100) NULL,
	[MailingAddressLine2] [varchar](100) NULL,
	[MailingAddressLine3] [varchar](100) NULL,
	[MailingAddressZipCodePlus4] [varchar](4) NULL,
	[MailingAddressCountryName] [varchar](100) NULL,
	[MailingAddressStateCode] [varchar](100) NULL,
	[MailingAddressCityName] [varchar](100) NULL,
	[MailingAddressCountyName] [varchar](100) NULL,
	[MailingAddressZipCode] [varchar](20) NULL,
	[MailingAddressLatitude] [varchar](20) NULL,
	[MailingAddressLongitude] [varchar](20) NULL,
	[MailingAddressFull] [varchar](4000) NULL,
	[PrimaryPhoneNumber] [varchar](15) NULL,
	[AlternatePhoneNumber1] [varchar](15) NULL,
	[AlternatePhoneNumber2] [varchar](15) NULL,
	[AlternatePhoneNumber3] [varchar](15) NULL,
	[FaxNumber] [varchar](15) NULL,
	[SecureFaxNumber] [varchar](15) NULL,
	[Email] [varchar](256) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAdminGroup] PRIMARY KEY CLUSTERED 
(
	[AdminGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[AdminGroupHierarchy]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[AdminGroupHierarchy](
	[AdminGroupHierarchyID] [int] NOT NULL,
	[AdminGroupId] [int] NOT NULL,
	[AdminGroupId_Parent] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAdminGroupHierarchy] PRIMARY KEY CLUSTERED 
(
	[AdminGroupHierarchyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[AdminGroupProgram]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[AdminGroupProgram](
	[AdminGroupProgramId] [int] NOT NULL,
	[AdminGroupId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAdminGroupProgram] PRIMARY KEY CLUSTERED 
(
	[AdminGroupProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[AdminGroupProvider]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[AdminGroupProvider](
	[AdminGroupProviderId] [int] NOT NULL,
	[AdminGroupId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAdminGroupProvider] PRIMARY KEY CLUSTERED 
(
	[AdminGroupProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[AdminGroupType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[AdminGroupType](
	[AdminGroupTypeId] [int] NOT NULL,
	[AdminGroupTypeCode] [varchar](50) NULL,
	[AdminGroupTypeName] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAdminGroupType] PRIMARY KEY NONCLUSTERED 
(
	[AdminGroupTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[AlertType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[AlertType](
	[AlertTypeId] [int] NOT NULL,
	[AlertCode] [varchar](50) NULL,
	[AlertName] [varchar](100) NULL,
	[AlertDescription] [varchar](4000) NULL,
	[Severity] [char](1) NULL,
	[InactiveDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAlertType] PRIMARY KEY CLUSTERED 
(
	[AlertTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Attribute]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Attribute](
	[AttributeId] [int] NOT NULL,
	[AttributeCode] [varchar](50) NULL,
	[AttributeName] [varchar](100) NULL,
	[AttributeGroupId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAttribute] PRIMARY KEY CLUSTERED 
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[AttributeGroup]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[AttributeGroup](
	[AttributeGroupId] [int] NOT NULL,
	[AttributeGroupCode] [varchar](50) NULL,
	[AttributeGroupName] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAttributeGroup] PRIMARY KEY CLUSTERED 
(
	[AttributeGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[AttributeHistory]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[AttributeHistory](
	[AttributeHistoryId] [bigint] NOT NULL,
	[ProviderId] [int] NULL,
	[NetworkId] [int] NULL,
	[AdminGroupId] [int] NULL,
	[BusinessEntityId] [int] NULL,
	[LocationId] [int] NULL,
	[AttributeId] [int] NOT NULL,
	[ProviderAffiliationId] [int] NULL,
	[ProviderAffiliationLocationId] [int] NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[AttributeValue] [varchar](500) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKAttributeHistory] PRIMARY KEY CLUSTERED 
(
	[AttributeHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[BankAccountType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[BankAccountType](
	[BankAccountTypeId] [int] NOT NULL,
	[BankAccountTypeCode] [varchar](50) NULL,
	[BankAccountTypeName] [varchar](100) NULL,
	[BankAccountTypeDescription] [varchar](4000) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
 CONSTRAINT [XPKBankAccountType] PRIMARY KEY CLUSTERED 
(
	[BankAccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Board]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Board](
	[BoardId] [int] NOT NULL,
	[BoardCode] [varchar](50) NULL,
	[BoardName] [varchar](100) NULL,
	[BoardDescription] [varchar](4000) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreatedBy] [varchar](400) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
 CONSTRAINT [XPKBoard] PRIMARY KEY CLUSTERED 
(
	[BoardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[BusinessEntity]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[BusinessEntity](
	[BusinessEntityId] [int] NOT NULL,
	[BusinessEntityName] [varchar](100) NULL,
	[FedIdTypeId] [int] NOT NULL,
	[TIN] [varchar](25) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[CityId_Address] [int] NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[AddressLine3] [varchar](100) NULL,
	[AddressZipCode] [varchar](20) NULL,
	[AddressZipCodePlus4] [varchar](4) NULL,
	[AddressCountryName] [varchar](100) NULL,
	[AddressStateCode] [varchar](100) NULL,
	[AddressCityName] [varchar](100) NULL,
	[AddressCountyName] [varchar](100) NULL,
	[AddressLatitude] [varchar](20) NULL,
	[AddressLongitude] [varchar](20) NULL,
	[AddressFull] [varchar](4000) NULL,
 CONSTRAINT [XPKBusinessEntity] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[BusinessEntityLevy]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[BusinessEntityLevy](
	[BusinessEntityLevyId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[LineOfBusinessId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[EntityName] [varchar](100) NULL,
	[LevyAmount] [decimal](19, 4) NULL,
	[LevyPercent] [varchar](100) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKBusinessEntityLevy] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityLevyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[BusinessEntityWithholding]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[BusinessEntityWithholding](
	[BusinessEntityWithholdingId] [int] NOT NULL,
	[CertificateFlag] [char](1) NULL,
	[WithholdingPercent] [varchar](100) NULL,
	[ControlNumber] [varchar](100) NULL,
	[SwornStatementFlag] [char](1) NULL,
	[Decree] [varchar](100) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[BusinessEntityId] [int] NOT NULL,
 CONSTRAINT [XPKBusinessEntityWithholding] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityWithholdingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Contract]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Contract](
	[ContractId] [int] NOT NULL,
	[PayTermId] [int] NOT NULL,
	[FacilityId] [int] NOT NULL,
	[DrgGroupID] [varchar](15) NULL,
	[CapId] [varchar](15) NULL,
	[ContractName] [varchar](60) NULL,
	[ContractDescription] [varchar](4000) NULL,
	[ContractStatus] [varchar](10) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[ObsContractType] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[TierBasedFlag] [char](1) NULL,
	[HasPoolFlag] [char](1) NULL,
	[UcrTableId] [varchar](15) NULL,
	[ParFlagDefault] [char](1) NULL,
	[InpCostChgRatio] [decimal](19, 4) NULL,
	[FfsRiskPool] [varchar](15) NULL,
	[RiskCredit] [decimal](19, 4) NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[CapFundId] [varchar](15) NULL,
	[FfsRiskCredit] [decimal](19, 4) NULL,
	[IsModelFlag] [char](1) NULL,
	[ModelId] [varchar](15) NULL,
	[NdcFeeId] [varchar](15) NULL,
	[SubmitWindow] [int] NULL,
	[StopLoss] [decimal](19, 4) NULL,
	[SubmitDiscountId] [varchar](15) NULL,
	[IsApcFlag] [char](1) NULL,
	[ModDiscountGroupId] [varchar](15) NULL,
	[TierAssignment] [varchar](15) NULL,
	[MaxReimbursement] [decimal](19, 4) NULL,
	[RestrictionGroupid] [varchar](15) NULL,
	[IsBasesupplementalFlag] [char](1) NULL,
	[ApplyDifferential] [char](1) NULL,
	[DefFfsPercent] [decimal](19, 4) NULL,
	[DisableModDiscountFlag] [char](1) NULL,
	[IsRebillFlag] [char](1) NULL,
	[RebillHoldPaymentFlag] [char](1) NULL,
	[RebillWaitPeriod] [int] NULL,
	[SplitContractPriceGroupId] [varchar](15) NULL,
	[UseNdcNotCptFlag] [char](1) NULL,
	[ContractCategory] [varchar](15) NULL,
	[OPPSType] [varchar](15) NULL,
	[IsNxPbaEnabledFlag] [char](1) NULL,
	[IsAscFlag] [char](1) NULL,
	[UseNetworXPricerFlag] [char](1) NULL,
	[IsEsrdFlag] [char](1) NULL,
	[BypassExternalPricingFlag] [char](1) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKContract] PRIMARY KEY NONCLUSTERED 
(
	[ContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ContractPlaceOfService]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ContractPlaceOfService](
	[ContractPlaceOfServiceId] [int] NOT NULL,
	[ContractId] [int] NOT NULL,
	[TermId] [varchar](15) NULL,
	[PlaceOfServiceId] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKContractPlaceOfService] PRIMARY KEY CLUSTERED 
(
	[ContractPlaceOfServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [XAK1ContractPlaceOfService] UNIQUE NONCLUSTERED 
(
	[PlaceOfServiceId] ASC,
	[TermId] ASC,
	[ContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[DirectorySection]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[DirectorySection](
	[DirectorySectionId] [int] NOT NULL,
	[DirectorySectionCode] [varchar](100) NULL,
	[DirectorySectionName] [varchar](200) NULL,
	[DirectorySectionDescription] [varchar](4000) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKDirectorySection] PRIMARY KEY CLUSTERED 
(
	[DirectorySectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Ethnicity]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Ethnicity](
	[EthnicityId] [int] NOT NULL,
	[EthnicityCode] [varchar](15) NULL,
	[EthnicityName] [varchar](100) NULL,
	[EthnicityDescription] [varchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKEthnicity] PRIMARY KEY CLUSTERED 
(
	[EthnicityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Facility]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Facility](
	[FacilityId] [int] NOT NULL,
	[FacilityCode] [char](1) NULL,
	[FacilityDescription] [varchar](60) NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKFacility] PRIMARY KEY CLUSTERED 
(
	[FacilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[FedIdType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[FedIdType](
	[FedIdTypeId] [int] NOT NULL,
	[FedIdTypeName] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKFedIdType] PRIMARY KEY CLUSTERED 
(
	[FedIdTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Language]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Language](
	[LanguageId] [int] NOT NULL,
	[LanguageCode] [varchar](50) NULL,
	[LanguageName] [varchar](100) NULL,
	[LanguageName_ES] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKLanguage] PRIMARY KEY NONCLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[License]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[License](
	[LicenseId] [int] NOT NULL,
	[LicenseCode] [varchar](50) NULL,
	[LicenseName] [varchar](100) NULL,
	[LicenseDescription] [varchar](2000) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKLicense] PRIMARY KEY NONCLUSTERED 
(
	[LicenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Location]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Location](
	[LocationId] [int] NOT NULL,
	[LocationName] [varchar](100) NULL,
	[HandicapAccessibleFlag] [char](1) NULL,
	[CityId] [int] NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[AddressLine3] [varchar](100) NULL,
	[ZipCodePlus4] [varchar](4) NULL,
	[CountryName] [varchar](100) NULL,
	[StateCode] [varchar](100) NULL,
	[CityName] [varchar](100) NULL,
	[CountyName] [varchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[Latitude] [varchar](20) NULL,
	[Longitude] [varchar](20) NULL,
	[AddressFull] [varchar](4000) NULL,
	[PrimaryPhoneNumber] [varchar](15) NULL,
	[AlternatePhoneNumber1] [varchar](15) NULL,
	[AlternatePhoneNumber2] [varchar](15) NULL,
	[AlternatePhoneNumber3] [varchar](15) NULL,
	[FaxNumber] [varchar](15) NULL,
	[SecureFaxNumber] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[Email] [varchar](256) NULL,
 CONSTRAINT [XPKLocation] PRIMARY KEY NONCLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[LocationAdditionalService]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[LocationAdditionalService](
	[LocationAdditionalServiceId] [int] NOT NULL,
	[AdditionalServiceId] [int] NOT NULL,
	[LineOfBusinessId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[TheValue] [varchar](200) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKLocationAdditionalService] PRIMARY KEY CLUSTERED 
(
	[LocationAdditionalServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[LocationContact]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[LocationContact](
	[LocationContactId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[ContactName] [varchar](100) NULL,
	[ContactType] [varchar](100) NULL,
	[EmailAddress] [varchar](100) NULL,
	[FaxNumber] [varchar](100) NULL,
	[PhoneNumber] [varchar](100) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKLocationContact] PRIMARY KEY CLUSTERED 
(
	[LocationContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Network]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Network](
	[NetworkId] [int] NOT NULL,
	[NetworkCode] [varchar](100) NULL,
	[NetworkName] [varchar](200) NULL,
	[NetworkTypeId] [int] NOT NULL,
	[Status] [varchar](10) NULL,
	[DelegatedFlag] [char](1) NULL,
	[LegacyId] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKNetwork] PRIMARY KEY NONCLUSTERED 
(
	[NetworkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[NetworkProgram]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[NetworkProgram](
	[NetworkProgramId] [int] NOT NULL,
	[NetworkId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKNetworkProgram] PRIMARY KEY CLUSTERED 
(
	[NetworkProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[NetworkType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[NetworkType](
	[NetworkTypeId] [int] NOT NULL,
	[NetwokTypeCode] [varchar](100) NULL,
	[NetworkTypeName] [varchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKNetworkType] PRIMARY KEY CLUSTERED 
(
	[NetworkTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[PayTerm]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[PayTerm](
	[PayTermId] [int] NOT NULL,
	[Description] [varchar](4000) NULL,
	[DateBasis] [int] NULL,
	[CreatedBy] [varchar](120) NULL,
	[CreateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[MultiMatchRule] [char](1) NULL,
	[CalcPayTermByClaim] [char](1) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKPayTerm] PRIMARY KEY CLUSTERED 
(
	[PayTermId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[PlaceOfService]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[PlaceOfService](
	[PlaceOfServiceId] [int] NOT NULL,
	[PlaceOfServiceCode] [varchar](100) NULL,
	[PlaceOfServiceName] [varchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKPlaceOfService] PRIMARY KEY CLUSTERED 
(
	[PlaceOfServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProfessionalTitle]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProfessionalTitle](
	[ProfessionalTitleId] [int] NOT NULL,
	[ProfessionalTitleCode] [varchar](15) NULL,
	[ProfessionalTitleName] [varchar](100) NULL,
	[ProfessionalTitleDescription] [varchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProfessionalTitle] PRIMARY KEY CLUSTERED 
(
	[ProfessionalTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Program]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Program](
	[ProgramId] [int] NOT NULL,
	[ProgramTypeId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[LineOfBusinessId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[ProgramCode] [varchar](50) NULL,
	[ProgramName] [varchar](100) NULL,
	[ProgramDescription] [varchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProgram] PRIMARY KEY NONCLUSTERED 
(
	[ProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProgramDefaultNetwork]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProgramDefaultNetwork](
	[ProgramDefaultNetworkId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[DefaultNetwork] [varchar](100) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[DSK_DefaultNetwork] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProgramDefaultNetwork] PRIMARY KEY CLUSTERED 
(
	[ProgramDefaultNetworkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProgramType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProgramType](
	[ProgramTypeId] [int] NOT NULL,
	[ProgramTypeCode] [varchar](50) NULL,
	[ProgramTypeName] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProgramType] PRIMARY KEY NONCLUSTERED 
(
	[ProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Provider]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Provider](
	[ProviderId] [int] NOT NULL,
	[EthnicityId] [int] NOT NULL,
	[GenderId] [int] NOT NULL,
	[ProviderTypeId] [int] NOT NULL,
	[ProfessionalTitleId] [int] NOT NULL,
	[NPI] [varchar](10) NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleInitial] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[ProviderName] [varchar](150) NULL,
	[Salutation] [varchar](7) NULL,
	[DateOfBirth] [datetime] NULL,
	[SSN] [varchar](11) NULL,
	[NpiRegistryFlag] [char](1) NULL,
	[ValidFlag] [char](1) NULL,
	[Status] [varchar](10) NULL,
	[CityId_BillingAddress] [int] NOT NULL,
	[BillingAddressLine1] [varchar](100) NULL,
	[BillingAddressLine2] [varchar](100) NULL,
	[BillingAddressLine3] [varchar](100) NULL,
	[BillingAddressZipCodePlus4] [varchar](4) NULL,
	[BillingAddressCountryName] [varchar](100) NULL,
	[BillingAddressStateCode] [varchar](100) NULL,
	[BillingAddressCityName] [varchar](100) NULL,
	[BillingAddressCountyName] [varchar](100) NULL,
	[BillingAddressZipCode] [varchar](20) NULL,
	[BillingAddressLatitude] [varchar](20) NULL,
	[BillingAddressLongitude] [varchar](20) NULL,
	[BillingAddressFull] [varchar](4000) NULL,
	[PrimaryPhoneNumber] [varchar](15) NULL,
	[SecondaryPhoneNumber] [varchar](15) NULL,
	[EmergencyPhoneNumber] [varchar](15) NULL,
	[MobilePhoneNumber] [varchar](15) NULL,
	[FaxNumber] [varchar](15) NULL,
	[SecureFaxNumber] [varchar](15) NULL,
	[Email] [varchar](256) NULL,
	[URL] [varchar](256) NULL,
	[FqhcFlag] [char](1) NULL,
	[RhcFlag] [char](1) NULL,
	[MedicareContractFlag] [char](1) NULL,
	[MedicaidContractFlag] [char](1) NULL,
	[DummyProviderFlag] [char](1) NULL,
	[BestPracticeFlag] [char](1) NULL,
	[EntityType] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[TIN] [varchar](25) NULL,
	[FedIdTypeId] [int] NULL,
	[ExternalId] [varchar](50) NULL,
	[MedicareId] [varchar](50) NULL,
	[MedicaidId] [varchar](50) NULL,
	[ValueBasedProgramFlag] [char](1) NULL,
 CONSTRAINT [XPKProvider] PRIMARY KEY NONCLUSTERED 
(
	[ProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Provider_NPI] UNIQUE NONCLUSTERED 
(
	[NPI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderAffiliation]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderAffiliation](
	[ProviderAffiliationId] [int] NOT NULL,
	[ProviderId_Rendering] [int] NOT NULL,
	[ProviderId_Billing] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[AffiliationType] [varchar](50) NULL,
	[AcoFlag] [char](1) NULL,
	[PcpFlag] [char](1) NULL,
	[PayToFlag] [char](1) NULL,
	[DirectFlag] [char](1) NULL,
	[StaffFlag] [char](1) NULL,
	[DSK_RenderingProvider] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[RenderingNPI] [varchar](10) NULL,
	[BillingNPI] [varchar](10) NULL,
	[TIN] [varchar](25) NULL,
	[DSK_BillingProvider] [varchar](100) NULL,
 CONSTRAINT [XPKProviderAffiliation] PRIMARY KEY CLUSTERED 
(
	[ProviderAffiliationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderAffiliationContract]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderAffiliationContract](
	[ProviderAffiliationContractId] [int] NOT NULL,
	[ContractId] [int] NOT NULL,
	[AdminGroupId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[ProviderAffiliationId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[FeeId] [varchar](15) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[AtRiskFlag] [char](1) NULL,
	[FlatFeeAmount] [decimal](19, 4) NULL,
	[FlatFeeFlag] [char](1) NULL,
	[CapitatedFlag] [char](1) NULL,
	[ParFlag] [char](1) NULL,
	[ApplyDifferentialFlag] [char](1) NULL,
	[RequestRefundFlag] [char](1) NULL,
	[RlgExcludedFlag] [char](1) NULL,
	[NetworkPayPercent] [decimal](19, 4) NULL,
	[CopcTermDate] [datetime] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderAffiliationContract] PRIMARY KEY NONCLUSTERED 
(
	[ProviderAffiliationContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderAffiliationLocation]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderAffiliationLocation](
	[ProviderAffiliationLocationId] [int] NOT NULL,
	[ProviderAffiliationId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[Open24x7Flag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[LocationCode] [varchar](100) NULL,
	[MedicaidId_Rendering] [varchar](100) NULL,
	[MedicaidId_Billing] [varchar](100) NULL,
	[DSK_Enrollment] [varchar](100) NULL,
 CONSTRAINT [XPKProviderAffiliationLocation] PRIMARY KEY CLUSTERED 
(
	[ProviderAffiliationLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderAffiliationLocationAdditionalService]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderAffiliationLocationAdditionalService](
	[ProviderAffiliationLocationAdditionalServiceId] [int] NOT NULL,
	[ProviderAffiliationLocationId] [int] NOT NULL,
	[AdditionalServiceId] [int] NOT NULL,
	[TheValue] [varchar](200) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderAffiliationLocationAdditionalService] PRIMARY KEY CLUSTERED 
(
	[ProviderAffiliationLocationAdditionalServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderAffiliationLocationDetail]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderAffiliationLocationDetail](
	[ProviderAffiliationLocationDetailId] [int] NOT NULL,
	[AdminGroupId] [int] NOT NULL,
	[ProviderAffiliationLocationId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[PrimaryFlag] [char](1) NULL,
	[PcpFlag] [char](1) NULL,
	[NewPatientsFlag] [char](1) NULL,
	[AgeMax] [int] NULL,
	[AgeMin] [int] NULL,
	[MaxMembership] [int] NULL,
	[GenderRestrictedTo] [char](1) NULL,
	[ConsultingFlag] [char](1) NULL,
	[DirectoryDisplayFlag] [char](1) NULL,
	[ByAppointmentFlag_SUN] [char](1) NULL,
	[ByAppointmentFlag_MON] [char](1) NULL,
	[ByAppointmentFlag_TUE] [char](1) NULL,
	[ByAppointmentFlag_WED] [char](1) NULL,
	[ByAppointmentFlag_THU] [char](1) NULL,
	[ByAppointmentFlag_FRI] [char](1) NULL,
	[ByAppointmentFlag_SAT] [char](1) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](200) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderAffiliationLocationDetail] PRIMARY KEY CLUSTERED 
(
	[ProviderAffiliationLocationDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderAffiliationLocationDetailNetwork]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderAffiliationLocationDetailNetwork](
	[ProviderAffiliationLocationDetailNetworkId] [int] NOT NULL,
	[ProviderAffiliationLocationDetailId] [int] NOT NULL,
	[ProgramId] [int] NULL,
	[NetworkId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [PK_ProviderAffiliationLocationDetailNetwork] PRIMARY KEY CLUSTERED 
(
	[ProviderAffiliationLocationDetailNetworkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_ProviderAffiliationLocationDetailNetwork_DataSourceKey] UNIQUE NONCLUSTERED 
(
	[DataSourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderAffiliationLocationSchedule]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderAffiliationLocationSchedule](
	[ProviderAffiliationLocationScheduleId] [int] NOT NULL,
	[ProviderAffiliationLocationId] [int] NOT NULL,
	[DayOfWeekId] [int] NULL,
	[DayOfWeekName] [varchar](100) NULL,
	[DayOfWeekStart] [varchar](100) NULL,
	[DayOfWeekEnd] [varchar](100) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderAffiliationLocationSchedule] PRIMARY KEY NONCLUSTERED 
(
	[ProviderAffiliationLocationScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderAlert]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderAlert](
	[ProviderAlertId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[AlertTypeId] [int] NOT NULL,
	[AlertMessage] [text] NULL,
	[AlertDescription] [text] NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderAlert] PRIMARY KEY CLUSTERED 
(
	[ProviderAlertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderBankAccount]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderBankAccount](
	[ProviderBankAccountId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[BankAccountTypeId] [int] NOT NULL,
	[AccountNumber] [varchar](50) NULL,
	[RoutingNumber] [varchar](40) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[EftFlag] [char](1) NULL,
	[TIN] [varchar](25) NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[PreNoteProcessedFlag] [char](1) NULL,
 CONSTRAINT [XPKProviderBankAccount] PRIMARY KEY CLUSTERED 
(
	[ProviderBankAccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderBusinessEntity]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderBusinessEntity](
	[ProviderBusinessEntityId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[PayType] [varchar](100) NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
 CONSTRAINT [XPKProviderBusinessEntity] PRIMARY KEY CLUSTERED 
(
	[ProviderBusinessEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [XUK1ProviderBusinessEntity] UNIQUE NONCLUSTERED 
(
	[DataSourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderEducation]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderEducation](
	[ProviderEducationId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[EducationalInstitution] [varchar](60) NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[AddressCityName] [varchar](100) NULL,
	[AddressStateCode] [varchar](100) NULL,
	[AddressZipCode] [varchar](20) NULL,
	[AddressFull] [varchar](4000) NULL,
	[Degree] [varchar](30) NULL,
	[VerifyDate] [datetime] NULL,
	[VerifyBy] [varchar](120) NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderEducation] PRIMARY KEY CLUSTERED 
(
	[ProviderEducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderHomeVisit]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderHomeVisit](
	[ProviderHomeVisitId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[HomeVisitFlag] [char](1) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderHomeVisit] PRIMARY KEY CLUSTERED 
(
	[ProviderHomeVisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderInsurance]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderInsurance](
	[ProviderInsuranceId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[PolicyNumber] [varchar](15) NULL,
	[Carrier] [varchar](60) NULL,
	[CoverageAmount] [decimal](19, 4) NULL,
	[ClaimAmount] [decimal](19, 4) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
 CONSTRAINT [XPKProviderInsurance] PRIMARY KEY NONCLUSTERED 
(
	[ProviderInsuranceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderKey]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderKey](
	[ProviderKeyId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[NPI] [varchar](10) NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[FullName] [varchar](150) NULL,
	[ProviderTypeId] [int] NOT NULL,
	[TIN] [varchar](11) NULL,
	[SSN] [varchar](11) NULL,
	[Status] [varchar](120) NULL,
	[CreatedBy] [varchar](10) NULL,
	[CreateDate] [datetime] NULL,
	[DateOfBirth] [datetime] NULL,
	[MailingAddressLine1] [varchar](100) NULL,
	[MailingAddressLine2] [varchar](100) NULL,
	[MailingCity] [varchar](100) NULL,
	[MailingCounty] [varchar](100) NULL,
	[MailingState] [varchar](100) NULL,
	[MailingZipCode] [varchar](20) NULL,
	[PhysicalAddressLine1] [varchar](100) NULL,
	[PhysicalAddressLine2] [varchar](100) NULL,
	[PhysicalCity] [varchar](100) NULL,
	[PhysicalCounty] [varchar](100) NULL,
	[PhysicalState] [varchar](100) NULL,
	[PhysicalZipCode] [varchar](20) NULL,
	[LegacyId_PROVID] [varchar](200) NULL,
	[LegacyId_PRACID] [varchar](200) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderKey] PRIMARY KEY CLUSTERED 
(
	[ProviderKeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [XUK1ProviderKey] UNIQUE NONCLUSTERED 
(
	[DataSourceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderLanguage]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderLanguage](
	[ProviderLanguageId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderLanguage] PRIMARY KEY NONCLUSTERED 
(
	[ProviderLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [XAK1ProviderLanguage] UNIQUE NONCLUSTERED 
(
	[ProviderId] ASC,
	[LanguageId] ASC,
	[DSK_ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderLicense]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderLicense](
	[ProviderLicenseId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[LicenseId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[StateCode] [char](2) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[LicenseValue] [varchar](100) NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderLicense] PRIMARY KEY NONCLUSTERED 
(
	[ProviderLicenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderNetwork]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderNetwork](
	[ProviderNetworkId] [int] NOT NULL,
	[NetworkId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderNetwork] PRIMARY KEY CLUSTERED 
(
	[ProviderNetworkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderPrivilege]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderPrivilege](
	[ProviderPrivilegeId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[ProviderId_Facility] [int] NOT NULL,
	[PrivilegeType] [varchar](100) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderPrivilege] PRIMARY KEY NONCLUSTERED 
(
	[ProviderPrivilegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderProgram]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderProgram](
	[ProviderProgramId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[PcpFlag] [char](1) NULL,
	[NewAssignmentsFlag] [char](1) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderProgram] PRIMARY KEY CLUSTERED 
(
	[ProviderProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderSpecialty]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderSpecialty](
	[ProviderSpecialtyId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[SpecialtyId] [int] NOT NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[Status] [varchar](50) NULL,
	[DSK_ProviderKey] [varchar](100) NULL,
	[CurrentRecordFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderSpecialty] PRIMARY KEY CLUSTERED 
(
	[ProviderSpecialtyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [XAK1ProviderSpecialty] UNIQUE NONCLUSTERED 
(
	[ProviderId] ASC,
	[SpecialtyId] ASC,
	[DSK_ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderSpecialtyBoard]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderSpecialtyBoard](
	[ProviderSpecialtyBoardId] [int] NOT NULL,
	[ProviderSpecialtyId] [int] NOT NULL,
	[BoardId] [int] NOT NULL,
	[CertificationNumber] [varchar](100) NULL,
	[EffectiveDate] [date] NULL,
	[EndDate] [date] NULL,
	[CertificationYear] [int] NULL,
	[RecertificationYear] [int] NULL,
	[AdmissableFlag] [char](1) NULL,
	[AdmissionDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderSpecialtyBoard] PRIMARY KEY CLUSTERED 
(
	[ProviderSpecialtyBoardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderSpecialtyLineOfBusiness]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderSpecialtyLineOfBusiness](
	[ProviderSpecialtyLineOfBusinessID] [int] NOT NULL,
	[LineOfBusinessId] [int] NOT NULL,
	[ProviderSpecialtyId] [int] NOT NULL,
	[PrimarySpecialtyFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderSpecialtyLineOfBusiness] PRIMARY KEY CLUSTERED 
(
	[ProviderSpecialtyLineOfBusinessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderStatus]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderStatus](
	[ProviderStatusId] [int] NOT NULL,
	[ProviderId] [int] NOT NULL,
	[LineOfBusinessId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ParStatusCode] [char](1) NULL,
	[PcpFlag] [char](1) NULL,
	[RenderingProviderFlag] [char](1) NULL,
	[BillingProviderFlag] [char](1) NULL,
	[PlatinoFlag] [char](1) NULL,
	[DirectProviderFlag] [char](1) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKProviderStatus] PRIMARY KEY CLUSTERED 
(
	[ProviderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[ProviderType]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[ProviderType](
	[ProviderTypeId] [int] NOT NULL,
	[ProviderTypeCode] [varchar](50) NULL,
	[ProviderTypeName] [varchar](100) NULL,
	[ProviderTypeDescription] [varchar](4000) NULL,
	[ProviderClass] [varchar](100) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
 CONSTRAINT [XPKProviderType] PRIMARY KEY NONCLUSTERED 
(
	[ProviderTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[Specialty]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[Specialty](
	[SpecialtyId] [int] NOT NULL,
	[SpecialtyCode] [varchar](25) NULL,
	[SpecialtyName] [varchar](100) NULL,
	[TaxonomyCode] [varchar](100) NULL,
	[BoardCertifiedRequiredFlag] [char](1) NULL,
	[BoardCertificationLength] [numeric](18, 0) NULL,
	[Usage] [varchar](2) NULL,
	[SiteVisitRequiredFlag] [char](1) NULL,
	[AncillaryFlag] [char](1) NULL,
	[DorsalFlag] [char](1) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
 CONSTRAINT [XPKSpecialty] PRIMARY KEY NONCLUSTERED 
(
	[SpecialtyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[SpecialtyDirectory]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[SpecialtyDirectory](
	[SpecialtyDirectoryId] [int] NOT NULL,
	[DirectorySectionId] [int] NOT NULL,
	[LineOfBusinessId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[SpecialtyId] [int] NOT NULL,
	[EffectiveDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKSpecialtyDirectory] PRIMARY KEY CLUSTERED 
(
	[SpecialtyDirectoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [provider].[SpecialtyLanguage]    Script Date: 1/19/2022 4:06:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [provider].[SpecialtyLanguage](
	[SpecialtyLanguageId] [int] NOT NULL,
	[SpecialtyID] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[LineOfBusinessId] [int] NOT NULL,
	[DisplayName] [varchar](400) NULL,
	[EffectiveDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](120) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdatedBy] [varchar](120) NULL,
	[DataSourceKey] [varchar](100) NULL,
	[DataSourceTable] [varchar](100) NULL,
	[SourceSystemId] [int] NULL,
	[RecordActionType] [char](1) NULL,
	[ETLExecutionLogId] [int] NULL,
	[ETLBatchLogId] [int] NULL,
	[ETLLastUpdateDatetime] [datetime] NULL,
	[ETLFingerprint] [varchar](32) NULL,
 CONSTRAINT [XPKSpecialtyLanguage] PRIMARY KEY CLUSTERED 
(
	[SpecialtyLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
