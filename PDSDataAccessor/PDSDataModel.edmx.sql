
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/17/2017 10:12:28
-- Generated from EDMX file: C:\dichen01\TFS\Nonversion\PDSInvest\PDSDataAccessor\PDSDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PackageDefinition];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PackagePackageVersion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PackageVersions] DROP CONSTRAINT [FK_PackagePackageVersion];
GO
IF OBJECT_ID(N'[dbo].[FK_RegionServiceCenter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ServiceCenters] DROP CONSTRAINT [FK_RegionServiceCenter];
GO
IF OBJECT_ID(N'[dbo].[FK_ServiceCenterStation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stations] DROP CONSTRAINT [FK_ServiceCenterStation];
GO
IF OBJECT_ID(N'[dbo].[FK_PackageSubscribe]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subscribes] DROP CONSTRAINT [FK_PackageSubscribe];
GO
IF OBJECT_ID(N'[dbo].[FK_StationSubscribe]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subscribes] DROP CONSTRAINT [FK_StationSubscribe];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Packages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Packages];
GO
IF OBJECT_ID(N'[dbo].[PackageVersions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PackageVersions];
GO
IF OBJECT_ID(N'[dbo].[Regions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Regions];
GO
IF OBJECT_ID(N'[dbo].[ServiceCenters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ServiceCenters];
GO
IF OBJECT_ID(N'[dbo].[Stations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Stations];
GO
IF OBJECT_ID(N'[dbo].[Subscribes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subscribes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Packages'
CREATE TABLE [dbo].[Packages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [PartNumber] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [IsVersionControlled] bit  NOT NULL
);
GO

-- Creating table 'PackageVersions'
CREATE TABLE [dbo].[PackageVersions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Version] nvarchar(max)  NOT NULL,
    [ReleaseDatetime] datetime  NOT NULL,
    [SetupName] nvarchar(max)  NOT NULL,
    [PackageId] int  NOT NULL
);
GO

-- Creating table 'Regions'
CREATE TABLE [dbo].[Regions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Code] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ServiceCenters'
CREATE TABLE [dbo].[ServiceCenters] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [RegionId] int  NOT NULL
);
GO

-- Creating table 'Stations'
CREATE TABLE [dbo].[Stations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ServiceCenterId] int  NOT NULL
);
GO

-- Creating table 'Subscribes'
CREATE TABLE [dbo].[Subscribes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [StationId] int  NOT NULL,
    [PackageId] int  NOT NULL,
    [Datetime] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Packages'
ALTER TABLE [dbo].[Packages]
ADD CONSTRAINT [PK_Packages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PackageVersions'
ALTER TABLE [dbo].[PackageVersions]
ADD CONSTRAINT [PK_PackageVersions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Regions'
ALTER TABLE [dbo].[Regions]
ADD CONSTRAINT [PK_Regions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ServiceCenters'
ALTER TABLE [dbo].[ServiceCenters]
ADD CONSTRAINT [PK_ServiceCenters]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Stations'
ALTER TABLE [dbo].[Stations]
ADD CONSTRAINT [PK_Stations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Subscribes'
ALTER TABLE [dbo].[Subscribes]
ADD CONSTRAINT [PK_Subscribes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [PackageId] in table 'PackageVersions'
ALTER TABLE [dbo].[PackageVersions]
ADD CONSTRAINT [FK_PackagePackageVersion]
    FOREIGN KEY ([PackageId])
    REFERENCES [dbo].[Packages]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PackagePackageVersion'
CREATE INDEX [IX_FK_PackagePackageVersion]
ON [dbo].[PackageVersions]
    ([PackageId]);
GO

-- Creating foreign key on [RegionId] in table 'ServiceCenters'
ALTER TABLE [dbo].[ServiceCenters]
ADD CONSTRAINT [FK_RegionServiceCenter]
    FOREIGN KEY ([RegionId])
    REFERENCES [dbo].[Regions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegionServiceCenter'
CREATE INDEX [IX_FK_RegionServiceCenter]
ON [dbo].[ServiceCenters]
    ([RegionId]);
GO

-- Creating foreign key on [ServiceCenterId] in table 'Stations'
ALTER TABLE [dbo].[Stations]
ADD CONSTRAINT [FK_ServiceCenterStation]
    FOREIGN KEY ([ServiceCenterId])
    REFERENCES [dbo].[ServiceCenters]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ServiceCenterStation'
CREATE INDEX [IX_FK_ServiceCenterStation]
ON [dbo].[Stations]
    ([ServiceCenterId]);
GO

-- Creating foreign key on [PackageId] in table 'Subscribes'
ALTER TABLE [dbo].[Subscribes]
ADD CONSTRAINT [FK_PackageSubscribe]
    FOREIGN KEY ([PackageId])
    REFERENCES [dbo].[Packages]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PackageSubscribe'
CREATE INDEX [IX_FK_PackageSubscribe]
ON [dbo].[Subscribes]
    ([PackageId]);
GO

-- Creating foreign key on [StationId] in table 'Subscribes'
ALTER TABLE [dbo].[Subscribes]
ADD CONSTRAINT [FK_StationSubscribe]
    FOREIGN KEY ([StationId])
    REFERENCES [dbo].[Stations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StationSubscribe'
CREATE INDEX [IX_FK_StationSubscribe]
ON [dbo].[Subscribes]
    ([StationId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------