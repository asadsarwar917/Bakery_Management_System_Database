CREATE DATABASE bms;

USE bms;

CREATE TABLE [dbo].[accounts] (
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
    [accountNumber] VARCHAR (16) NOT NULL,
    [accountHolderName] VARCHAR (200) NULL,
    [totalDues] NUMERIC (20) NULL,
    [totalPaid] NUMERIC (20) NULL,
    [Balance] NUMERIC (20) NULL,
    PRIMARY KEY CLUSTERED ([accountNumber] ASC)
);

USE bms;

CREATE TABLE [dbo].[customer] (
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
    [customerNumber] VARCHAR (16) NOT NULL,
    [customerName] VARCHAR (200) NULL,
    [address] VARCHAR (2000) NULL,
    [phone] VARCHAR (20) NULL,
    [email] VARCHAR (100) NULL,
    [accountNumber] VARCHAR (16) NULL,
    PRIMARY KEY CLUSTERED ([customerNumber] ASC),
    FOREIGN KEY ([accountNumber]) REFERENCES [dbo].[accounts] ([accountNumber])
);

USE bms;

CREATE TABLE [dbo].[companies] (
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
	[companyName] VARCHAR(300)NOT NULL,
	[address] VARCHAR(2000) NULL,
	[contact] VARCHAR(100) NULL,
	[accountNumber] VARCHAR(16) NULL,
	PRIMARY KEY CLUSTERED ([companyName] ASC),
	FOREIGN KEY([accountNumber]) REFERENCES [dbo].[accounts] ([accountNumber]) 
);

USE bms;

CREATE TABLE [dbo].[items] (
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
	[itemId] VARCHAR(16) NOT NULL,
	[itemName] VARCHAR(200) NULL,
	[mfgDate] DATETIME NULL,
	[expDate] DATETIME NULL,
	[companyName] VARCHAR(300) NULL,
	[description] VARCHAR(2000) NULL,
	[price] NUMERIC(20) NULL,
	PRIMARY KEY CLUSTERED ([itemId] ASC),
	FOREIGN KEY([companyName]) REFERENCES [dbo].[companies] ([companyName])
);

USE bms;

CREATE TABLE [dbo].[transections](
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
	[transectionNumber] VARCHAR(16) NOT NULL,
	[accountNumber] VARCHAR(16) NULL,
	[numberOfItems] NUMERIC(10) NULL,
	[totalAmount] NUMERIC(10) NULL,
	[transectionDate] DATETIME NULL,
	PRIMARY KEY CLUSTERED ([transectionNumber] ASC),
	FOREIGN KEY([accountNumber]) REFERENCES [dbo].[accounts] ([accountNumber])
);

USE bms;

CREATE TABLE [dbo].[transectiondetail] (
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
	[transectionNumber] NUMERIC(16) NOT NULL,
	[itemId] VARCHAR(16) NOT NULL,
	[transectionTime] DATETIME NULL,
	PRIMARY KEY CLUSTERED ([transectionNumber],[itemId] ASC),
	FOREIGN KEY ([transectionNumber]) REFERENCES [dbo].[transections] ([transectionNumber]),
	FOREIGN KEY([itemId]) REFERENCES [dbo].[items] ([itemId])
);

USE bms;

CREATE TABLE [dbo].[employees](
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
	[employeeNumber] VARCHAR(16)NOT NULL,
	[employeeName] VARCHAR(200) NULL,
	[address] VARCHAR(1000) NULL,
	[phone] VARCHAR(20) NULL,
	[accountNumber] VARCHAR(16) NULL,
	[workShift] VARCHAR(20) NULL,
	[salary] NUMERIC(10) NULL,
	[joinDate] DATETIME NULL,
	[experties] VARCHAR(100) NULL,
	PRIMARY KEY CLUSTERED ([employeeNumber] ASC),
	FOREIGN KEY ([accountNumber]) REFERENCES [dbo].[accounts] ([accountNumber])
);

USE bms;

CREATE TABLE [dbo].[orders] (
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
	[orderNumber] NUMERIC(10) NOT NULL,
	[customerNumber] VARCHAR(16) NULL,
	[deliveryStatus] BIT DEFAULT ((0)) NOT NULL,
	[orderDate] DATETIME NULL,
	[totalAmount] NUMERIC(20) NULL,
	PRIMARY KEY CLUSTERED ([orderNumber] ASC),
	FOREIGN KEY([customerNumber]) REFERENCES [dbo].[customers] ([customerNumber])
);

USE bms;

CREATE TABLE [dbo].[orderDetails] ( 
	[visibilityValue] BIT DEFAULT ((1)) NOT NULL,
	[orderNumber] NUMERIC(10) NOT NULL,
	[itemId] VARCHAR(16) NOT NULL,
	[quantityOrdered] NUMERIC(20) NULL,
	PRIMARY KEY CLUSTERED ([orderNumber],[itemId] ASC),
	FOREIGN KEY([itemId]) REFERENCES [dbo].[items] ([itemId]),
	FOREIGN KEY([orderNumber]) REFERENCES [dbo].[orders] ([orderNumber])
);

