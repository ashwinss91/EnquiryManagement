
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/30/2016 10:37:03
-- Generated from EDMX file: C:\Users\ashwin.sriram\Documents\GitHub\EnquiryManagement\EnquiryManagement\EnquiryModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EnquiryDb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_LeadOpportunity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Leads] DROP CONSTRAINT [FK_LeadOpportunity];
GO
IF OBJECT_ID(N'[dbo].[FK_EnquiryTypeLead]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Leads] DROP CONSTRAINT [FK_EnquiryTypeLead];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerProfileLead]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Leads] DROP CONSTRAINT [FK_CustomerProfileLead];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesTeamLead]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Leads] DROP CONSTRAINT [FK_SalesTeamLead];
GO
IF OBJECT_ID(N'[dbo].[FK_EventLead]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Leads] DROP CONSTRAINT [FK_EventLead];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvertisementLead]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Leads] DROP CONSTRAINT [FK_AdvertisementLead];
GO
IF OBJECT_ID(N'[dbo].[FK_ApplicationLead]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Leads] DROP CONSTRAINT [FK_ApplicationLead];
GO
IF OBJECT_ID(N'[dbo].[FK_EnquiryStageOpportunity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Opportunities] DROP CONSTRAINT [FK_EnquiryStageOpportunity];
GO
IF OBJECT_ID(N'[dbo].[FK_PriorityOpportunity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Opportunities] DROP CONSTRAINT [FK_PriorityOpportunity];
GO
IF OBJECT_ID(N'[dbo].[FK_EnquiryStatuOpportunity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Opportunities] DROP CONSTRAINT [FK_EnquiryStatuOpportunity];
GO
IF OBJECT_ID(N'[dbo].[FK_EnquiryRiskOpportunity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Opportunities] DROP CONSTRAINT [FK_EnquiryRiskOpportunity];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Leads]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Leads];
GO
IF OBJECT_ID(N'[dbo].[CustomerProfiles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerProfiles];
GO
IF OBJECT_ID(N'[dbo].[EnquiryTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EnquiryTypes];
GO
IF OBJECT_ID(N'[dbo].[Applications]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Applications];
GO
IF OBJECT_ID(N'[dbo].[Events]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Events];
GO
IF OBJECT_ID(N'[dbo].[Advertisements]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Advertisements];
GO
IF OBJECT_ID(N'[dbo].[SalesTeams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SalesTeams];
GO
IF OBJECT_ID(N'[dbo].[Opportunities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Opportunities];
GO
IF OBJECT_ID(N'[dbo].[EnquiryRisks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EnquiryRisks];
GO
IF OBJECT_ID(N'[dbo].[EnquiryStages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EnquiryStages];
GO
IF OBJECT_ID(N'[dbo].[EnquiryStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EnquiryStatus];
GO
IF OBJECT_ID(N'[dbo].[Priorities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Priorities];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Leads'
CREATE TABLE [dbo].[Leads] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CustomerName] nvarchar(max)  NOT NULL,
    [FirmName] nvarchar(max)  NOT NULL,
    [ContactNo] nvarchar(max)  NOT NULL,
    [EmailId] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [State] nvarchar(max)  NOT NULL,
    [EnquiryDate] nvarchar(max)  NOT NULL,
    [Comments] nvarchar(max)  NOT NULL,
    [CreatedOn] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [ModifiedOn] nvarchar(max)  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [IsUrgent] int  NOT NULL,
    [IsDeactivate] int  NOT NULL,
    [IsQualify] int  NOT NULL,
    [IsDisQualify] int  NOT NULL,
    [EnquiryTypeId] int  NOT NULL,
    [CustomerProfileId] int  NOT NULL,
    [SalesTeamId] int  NOT NULL,
    [EventId] int  NOT NULL,
    [ApplicationId] int  NOT NULL,
    [UserId] int  NOT NULL,
    [Opportunity_Id] int  NOT NULL,
    [Advertisement_Id] int  NOT NULL
);
GO

-- Creating table 'CustomerProfiles'
CREATE TABLE [dbo].[CustomerProfiles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EnquiryTypes'
CREATE TABLE [dbo].[EnquiryTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Applications'
CREATE TABLE [dbo].[Applications] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Events'
CREATE TABLE [dbo].[Events] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [EventDate] nvarchar(max)  NOT NULL,
    [EventLocation] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Advertisements'
CREATE TABLE [dbo].[Advertisements] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SalesTeams'
CREATE TABLE [dbo].[SalesTeams] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Region] nvarchar(max)  NOT NULL,
    [Manager] nvarchar(max)  NOT NULL,
    [Category] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Opportunities'
CREATE TABLE [dbo].[Opportunities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Potentials] nvarchar(max)  NOT NULL,
    [Probability] nvarchar(max)  NOT NULL,
    [ExpectedClosedDate] nvarchar(max)  NOT NULL,
    [RemainderDate] nvarchar(max)  NOT NULL,
    [Owner] nvarchar(max)  NOT NULL,
    [CreatedOn] nvarchar(max)  NOT NULL,
    [ModifiedOn] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [ModifiedBy] nvarchar(max)  NOT NULL,
    [IsMarkComplete] nvarchar(max)  NOT NULL,
    [IsCRMUpdated] nvarchar(max)  NOT NULL,
    [IsFlag] nvarchar(max)  NOT NULL,
    [EnquiryStageId] int  NOT NULL,
    [PriorityId] int  NOT NULL,
    [EnquiryStatuId] int  NOT NULL,
    [EnquiryRiskId] int  NOT NULL
);
GO

-- Creating table 'EnquiryRisks'
CREATE TABLE [dbo].[EnquiryRisks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EnquiryStages'
CREATE TABLE [dbo].[EnquiryStages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EnquiryStatus'
CREATE TABLE [dbo].[EnquiryStatus] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Priorities'
CREATE TABLE [dbo].[Priorities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [RoleTypeId] int  NOT NULL
);
GO

-- Creating table 'RoleTypes'
CREATE TABLE [dbo].[RoleTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [PK_Leads]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CustomerProfiles'
ALTER TABLE [dbo].[CustomerProfiles]
ADD CONSTRAINT [PK_CustomerProfiles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EnquiryTypes'
ALTER TABLE [dbo].[EnquiryTypes]
ADD CONSTRAINT [PK_EnquiryTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Applications'
ALTER TABLE [dbo].[Applications]
ADD CONSTRAINT [PK_Applications]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Events'
ALTER TABLE [dbo].[Events]
ADD CONSTRAINT [PK_Events]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Advertisements'
ALTER TABLE [dbo].[Advertisements]
ADD CONSTRAINT [PK_Advertisements]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SalesTeams'
ALTER TABLE [dbo].[SalesTeams]
ADD CONSTRAINT [PK_SalesTeams]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Opportunities'
ALTER TABLE [dbo].[Opportunities]
ADD CONSTRAINT [PK_Opportunities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EnquiryRisks'
ALTER TABLE [dbo].[EnquiryRisks]
ADD CONSTRAINT [PK_EnquiryRisks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EnquiryStages'
ALTER TABLE [dbo].[EnquiryStages]
ADD CONSTRAINT [PK_EnquiryStages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EnquiryStatus'
ALTER TABLE [dbo].[EnquiryStatus]
ADD CONSTRAINT [PK_EnquiryStatus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Priorities'
ALTER TABLE [dbo].[Priorities]
ADD CONSTRAINT [PK_Priorities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RoleTypes'
ALTER TABLE [dbo].[RoleTypes]
ADD CONSTRAINT [PK_RoleTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Opportunity_Id] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [FK_LeadOpportunity]
    FOREIGN KEY ([Opportunity_Id])
    REFERENCES [dbo].[Opportunities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LeadOpportunity'
CREATE INDEX [IX_FK_LeadOpportunity]
ON [dbo].[Leads]
    ([Opportunity_Id]);
GO

-- Creating foreign key on [EnquiryTypeId] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [FK_EnquiryTypeLead]
    FOREIGN KEY ([EnquiryTypeId])
    REFERENCES [dbo].[EnquiryTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EnquiryTypeLead'
CREATE INDEX [IX_FK_EnquiryTypeLead]
ON [dbo].[Leads]
    ([EnquiryTypeId]);
GO

-- Creating foreign key on [CustomerProfileId] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [FK_CustomerProfileLead]
    FOREIGN KEY ([CustomerProfileId])
    REFERENCES [dbo].[CustomerProfiles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerProfileLead'
CREATE INDEX [IX_FK_CustomerProfileLead]
ON [dbo].[Leads]
    ([CustomerProfileId]);
GO

-- Creating foreign key on [SalesTeamId] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [FK_SalesTeamLead]
    FOREIGN KEY ([SalesTeamId])
    REFERENCES [dbo].[SalesTeams]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalesTeamLead'
CREATE INDEX [IX_FK_SalesTeamLead]
ON [dbo].[Leads]
    ([SalesTeamId]);
GO

-- Creating foreign key on [EventId] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [FK_EventLead]
    FOREIGN KEY ([EventId])
    REFERENCES [dbo].[Events]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EventLead'
CREATE INDEX [IX_FK_EventLead]
ON [dbo].[Leads]
    ([EventId]);
GO

-- Creating foreign key on [Advertisement_Id] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [FK_AdvertisementLead]
    FOREIGN KEY ([Advertisement_Id])
    REFERENCES [dbo].[Advertisements]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvertisementLead'
CREATE INDEX [IX_FK_AdvertisementLead]
ON [dbo].[Leads]
    ([Advertisement_Id]);
GO

-- Creating foreign key on [ApplicationId] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [FK_ApplicationLead]
    FOREIGN KEY ([ApplicationId])
    REFERENCES [dbo].[Applications]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ApplicationLead'
CREATE INDEX [IX_FK_ApplicationLead]
ON [dbo].[Leads]
    ([ApplicationId]);
GO

-- Creating foreign key on [EnquiryStageId] in table 'Opportunities'
ALTER TABLE [dbo].[Opportunities]
ADD CONSTRAINT [FK_EnquiryStageOpportunity]
    FOREIGN KEY ([EnquiryStageId])
    REFERENCES [dbo].[EnquiryStages]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EnquiryStageOpportunity'
CREATE INDEX [IX_FK_EnquiryStageOpportunity]
ON [dbo].[Opportunities]
    ([EnquiryStageId]);
GO

-- Creating foreign key on [PriorityId] in table 'Opportunities'
ALTER TABLE [dbo].[Opportunities]
ADD CONSTRAINT [FK_PriorityOpportunity]
    FOREIGN KEY ([PriorityId])
    REFERENCES [dbo].[Priorities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PriorityOpportunity'
CREATE INDEX [IX_FK_PriorityOpportunity]
ON [dbo].[Opportunities]
    ([PriorityId]);
GO

-- Creating foreign key on [EnquiryStatuId] in table 'Opportunities'
ALTER TABLE [dbo].[Opportunities]
ADD CONSTRAINT [FK_EnquiryStatuOpportunity]
    FOREIGN KEY ([EnquiryStatuId])
    REFERENCES [dbo].[EnquiryStatus]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EnquiryStatuOpportunity'
CREATE INDEX [IX_FK_EnquiryStatuOpportunity]
ON [dbo].[Opportunities]
    ([EnquiryStatuId]);
GO

-- Creating foreign key on [EnquiryRiskId] in table 'Opportunities'
ALTER TABLE [dbo].[Opportunities]
ADD CONSTRAINT [FK_EnquiryRiskOpportunity]
    FOREIGN KEY ([EnquiryRiskId])
    REFERENCES [dbo].[EnquiryRisks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EnquiryRiskOpportunity'
CREATE INDEX [IX_FK_EnquiryRiskOpportunity]
ON [dbo].[Opportunities]
    ([EnquiryRiskId]);
GO

-- Creating foreign key on [RoleTypeId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_RoleTypeUser]
    FOREIGN KEY ([RoleTypeId])
    REFERENCES [dbo].[RoleTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleTypeUser'
CREATE INDEX [IX_FK_RoleTypeUser]
ON [dbo].[Users]
    ([RoleTypeId]);
GO

-- Creating foreign key on [UserId] in table 'Leads'
ALTER TABLE [dbo].[Leads]
ADD CONSTRAINT [FK_UserLead]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserLead'
CREATE INDEX [IX_FK_UserLead]
ON [dbo].[Leads]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------