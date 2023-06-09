USE [master]
GO
/****** Object:  Database [WoodRock]    Script Date: 11/10/2019 1:34:41 PM ******/
CREATE DATABASE [WoodRock]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WoodRock', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WoodRock.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WoodRock_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WoodRock_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WoodRock] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WoodRock].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WoodRock] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WoodRock] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WoodRock] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WoodRock] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WoodRock] SET ARITHABORT OFF 
GO
ALTER DATABASE [WoodRock] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WoodRock] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WoodRock] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WoodRock] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WoodRock] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WoodRock] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WoodRock] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WoodRock] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WoodRock] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WoodRock] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WoodRock] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WoodRock] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WoodRock] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WoodRock] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WoodRock] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WoodRock] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WoodRock] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WoodRock] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WoodRock] SET  MULTI_USER 
GO
ALTER DATABASE [WoodRock] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WoodRock] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WoodRock] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WoodRock] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WoodRock] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WoodRock', N'ON'
GO
ALTER DATABASE [WoodRock] SET QUERY_STORE = OFF
GO
USE [WoodRock]
GO
/****** Object:  Table [dbo].[Adoption_Client_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adoption_Client_Table](
	[Adoption_ID] [int] NOT NULL,
	[Animal_ID] [int] NOT NULL,
	[Client_ID] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Adoption_Client_Table] PRIMARY KEY CLUSTERED 
(
	[Adoption_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal_Hotel_Booking_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal_Hotel_Booking_Table](
	[Animal_Hotel_ID] [int] NOT NULL,
	[Animal_ID] [int] NULL,
	[Hotel_Booking_Details_ID] [int] NULL,
	[Client_Specifications] [nvarchar](max) NULL,
	[Rate_ID] [int] NULL,
	[Pet_Points_ID] [int] NULL,
	[Room_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal_Medical_Procedures_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal_Medical_Procedures_Table](
	[Medical_Procedures_ID] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Animal_ID] [int] NOT NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Animal_Medical_Procedures_Table] PRIMARY KEY CLUSTERED 
(
	[Medical_Procedures_ID] ASC,
	[Animal_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal_Table](
	[Animal_ID] [int] NOT NULL,
	[Animal_Species_ID] [int] NOT NULL,
	[Colour] [varchar](20) NOT NULL,
	[Age] [int] NULL,
	[Weight] [float] NULL,
	[Food_ID] [int] NOT NULL,
	[Breed_ID] [int] NULL,
 CONSTRAINT [PK_Animal_Table] PRIMARY KEY CLUSTERED 
(
	[Animal_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal_Vaccination_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal_Vaccination_Table](
	[Animal_Vacination_ID] [int] NOT NULL,
	[Vacination_ID] [int] NOT NULL,
	[Animal_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Animal_Vaccination_Table] PRIMARY KEY CLUSTERED 
(
	[Animal_Vacination_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animals_Medical_Diagnosis_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals_Medical_Diagnosis_Table](
	[Animal_medical_Diagnosis_ID] [int] NOT NULL,
	[Animal_ID] [int] NULL,
	[Medical_Diagnosis_ID] [int] NULL,
	[Diagnosis_Date] [datetime] NULL,
 CONSTRAINT [PK_Animals_Medical_Diagnosis_Table] PRIMARY KEY CLUSTERED 
(
	[Animal_medical_Diagnosis_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animals_Medical_Procedures_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals_Medical_Procedures_Table](
	[Medical_Procedures_ID] [int] NOT NULL,
	[Employee_ID] [int] NULL,
	[Medical_History_ID] [int] NULL,
	[Medical_Date] [datetime] NULL,
 CONSTRAINT [PK_Animals_Medical_Procedures_Table] PRIMARY KEY CLUSTERED 
(
	[Medical_Procedures_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Breed_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Breed_Table](
	[Breed_ID] [int] NOT NULL,
	[Breed_Name] [nchar](20) NULL,
 CONSTRAINT [PK_Breed_Table] PRIMARY KEY CLUSTERED 
(
	[Breed_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client_Events_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client_Events_Table](
	[Event_ID] [int] NOT NULL,
	[Client_ID] [int] NULL,
	[Purchase_Date] [datetime] NULL,
	[Quantity] [int] NULL,
	[Total] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients_Table](
	[Client_ID] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Details_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details_Table](
	[Details_ID] [int] NOT NULL,
	[Name] [nchar](25) NOT NULL,
	[Surname] [nchar](25) NOT NULL,
	[Cellphone] [nchar](10) NULL,
	[Email] [nchar](50) NOT NULL,
	[Password] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Details_Table] PRIMARY KEY CLUSTERED 
(
	[Details_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnosis_Medication_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnosis_Medication_Table](
	[Medical_Diagnosis_ID] [int] NOT NULL,
	[Medication_ID] [int] NOT NULL,
 CONSTRAINT [PK_Diagnosis_Medication_Table] PRIMARY KEY CLUSTERED 
(
	[Medical_Diagnosis_ID] ASC,
	[Medication_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donations_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donations_Table](
	[Donations_ID] [int] NOT NULL,
	[Client_ID] [int] NULL,
	[Donation] [nvarchar](255) NULL,
	[Pet_Points_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees_Table](
	[Employee_ID] [int] NOT NULL,
	[Details_ID] [int] NOT NULL,
	[Role_ID] [int] NOT NULL,
	[Date_Hired] [date] NULL,
	[Salary/wage] [money] NULL,
 CONSTRAINT [PK_Employees_Table] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events_Table](
	[Event_ID] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Event_Date] [datetime] NULL,
	[Cost/Ticket] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food_Table](
	[Food_ID] [int] NOT NULL,
	[Food_Name] [nvarchar](255) NULL,
	[Stock] [int] NULL,
	[Food_Portions] [int] NULL,
	[Cost/KG] [money] NULL,
 CONSTRAINT [PK_Food_Table] PRIMARY KEY CLUSTERED 
(
	[Food_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel_Booking_Details]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel_Booking_Details](
	[Hotel_Booking_Details_ID] [nvarchar](255) NOT NULL,
	[Arrival_Date] [datetime] NULL,
	[Departure_Date] [datetime] NULL,
	[Total_Cost] [money] NULL,
	[Total_Points] [int] NULL,
	[Client_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medical_Diagnosis_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medical_Diagnosis_Table](
	[Medical_Diagnosis_ID] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Treatment] [nvarchar](255) NULL,
 CONSTRAINT [PK_Medical_Diagnosis_Table] PRIMARY KEY CLUSTERED 
(
	[Medical_Diagnosis_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medical_Procedures_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medical_Procedures_Table](
	[Medical_Procedures_ID] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Duration] [nvarchar](255) NULL,
	[Cost] [money] NULL,
 CONSTRAINT [PK_Medical_Procedures_Table] PRIMARY KEY CLUSTERED 
(
	[Medical_Procedures_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medication_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medication_Table](
	[Medication_ID] [int] NOT NULL,
	[Medication_Name] [nvarchar](255) NULL,
	[Stock] [int] NULL,
	[Cost] [money] NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Medication_Table] PRIMARY KEY CLUSTERED 
(
	[Medication_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pet_Points_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pet_Points_Table](
	[Pet_Points_ID] [int] NOT NULL,
	[Points] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rates_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rates_Table](
	[Rate_ID] [int] NOT NULL,
	[Rate] [nvarchar](255) NULL,
	[Rate_Month] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles_Table](
	[Role_ID] [int] NOT NULL,
	[Role_Name] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_Roles_Table] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Table](
	[Room_ID] [int] NOT NULL,
	[Location] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Species_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species_Table](
	[Species_ID] [int] NOT NULL,
	[Species_Name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Species_Table] PRIMARY KEY CLUSTERED 
(
	[Species_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Surrender_Client_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Surrender_Client_Table](
	[Surrender_ID] [int] NOT NULL,
	[Animal_ID] [int] NOT NULL,
	[Client_ID] [int] NOT NULL,
	[Donations] [money] NULL,
	[Employee_ID] [int] NOT NULL,
 CONSTRAINT [PK_Surrender_Client_Table] PRIMARY KEY CLUSTERED 
(
	[Surrender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacinations_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacinations_Table](
	[Vacinations_ID] [int] NOT NULL,
	[Information] [nvarchar](255) NULL,
	[Cost] [money] NULL,
	[Frequency] [nvarchar](255) NULL,
 CONSTRAINT [PK_Vacinations_Table] PRIMARY KEY CLUSTERED 
(
	[Vacinations_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Adoption_Client_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Adoption_Client_Table] ON [dbo].[Adoption_Client_Table]
(
	[Animal_ID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Animal_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Animal_Table] ON [dbo].[Animal_Table]
(
	[Animal_Species_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Animal_Table_1]    Script Date: 11/10/2019 1:34:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Animal_Table_1] ON [dbo].[Animal_Table]
(
	[Breed_ID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Surrender_Client_Table]    Script Date: 11/10/2019 1:34:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Surrender_Client_Table] ON [dbo].[Surrender_Client_Table]
(
	[Animal_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adoption_Client_Table]  WITH CHECK ADD  CONSTRAINT [FK_Adoption_Client_Table_Clients_Table] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Clients_Table] ([Client_ID])
GO
ALTER TABLE [dbo].[Adoption_Client_Table] CHECK CONSTRAINT [FK_Adoption_Client_Table_Clients_Table]
GO
ALTER TABLE [dbo].[Animal_Medical_Procedures_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Medical_Procedures_Table_Animal_Table] FOREIGN KEY([Animal_ID])
REFERENCES [dbo].[Animal_Table] ([Animal_ID])
GO
ALTER TABLE [dbo].[Animal_Medical_Procedures_Table] CHECK CONSTRAINT [FK_Animal_Medical_Procedures_Table_Animal_Table]
GO
ALTER TABLE [dbo].[Animal_Medical_Procedures_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Medical_Procedures_Table_Employees_Table] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employees_Table] ([Employee_ID])
GO
ALTER TABLE [dbo].[Animal_Medical_Procedures_Table] CHECK CONSTRAINT [FK_Animal_Medical_Procedures_Table_Employees_Table]
GO
ALTER TABLE [dbo].[Animal_Medical_Procedures_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Medical_Procedures_Table_Medical_Procedures_Table] FOREIGN KEY([Medical_Procedures_ID])
REFERENCES [dbo].[Medical_Procedures_Table] ([Medical_Procedures_ID])
GO
ALTER TABLE [dbo].[Animal_Medical_Procedures_Table] CHECK CONSTRAINT [FK_Animal_Medical_Procedures_Table_Medical_Procedures_Table]
GO
ALTER TABLE [dbo].[Animal_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Table_Adoption_Client_Table] FOREIGN KEY([Animal_ID])
REFERENCES [dbo].[Adoption_Client_Table] ([Animal_ID])
GO
ALTER TABLE [dbo].[Animal_Table] CHECK CONSTRAINT [FK_Animal_Table_Adoption_Client_Table]
GO
ALTER TABLE [dbo].[Animal_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Table_Food_Table] FOREIGN KEY([Food_ID])
REFERENCES [dbo].[Food_Table] ([Food_ID])
GO
ALTER TABLE [dbo].[Animal_Table] CHECK CONSTRAINT [FK_Animal_Table_Food_Table]
GO
ALTER TABLE [dbo].[Animal_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Table_Surrender_Client_Table] FOREIGN KEY([Animal_ID])
REFERENCES [dbo].[Surrender_Client_Table] ([Animal_ID])
GO
ALTER TABLE [dbo].[Animal_Table] CHECK CONSTRAINT [FK_Animal_Table_Surrender_Client_Table]
GO
ALTER TABLE [dbo].[Animal_Vaccination_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Vaccination_Table_Animal_Table] FOREIGN KEY([Animal_ID])
REFERENCES [dbo].[Animal_Table] ([Animal_ID])
GO
ALTER TABLE [dbo].[Animal_Vaccination_Table] CHECK CONSTRAINT [FK_Animal_Vaccination_Table_Animal_Table]
GO
ALTER TABLE [dbo].[Animal_Vaccination_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Vaccination_Table_Vacinations_Table] FOREIGN KEY([Vacination_ID])
REFERENCES [dbo].[Vacinations_Table] ([Vacinations_ID])
GO
ALTER TABLE [dbo].[Animal_Vaccination_Table] CHECK CONSTRAINT [FK_Animal_Vaccination_Table_Vacinations_Table]
GO
ALTER TABLE [dbo].[Animals_Medical_Diagnosis_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animals_Medical_Diagnosis_Table_Animal_Table] FOREIGN KEY([Animal_ID])
REFERENCES [dbo].[Animal_Table] ([Animal_ID])
GO
ALTER TABLE [dbo].[Animals_Medical_Diagnosis_Table] CHECK CONSTRAINT [FK_Animals_Medical_Diagnosis_Table_Animal_Table]
GO
ALTER TABLE [dbo].[Animals_Medical_Diagnosis_Table]  WITH CHECK ADD  CONSTRAINT [FK_Animals_Medical_Diagnosis_Table_Medical_Diagnosis_Table] FOREIGN KEY([Medical_Diagnosis_ID])
REFERENCES [dbo].[Medical_Diagnosis_Table] ([Medical_Diagnosis_ID])
GO
ALTER TABLE [dbo].[Animals_Medical_Diagnosis_Table] CHECK CONSTRAINT [FK_Animals_Medical_Diagnosis_Table_Medical_Diagnosis_Table]
GO
ALTER TABLE [dbo].[Clients_Table]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Table_Details_Table] FOREIGN KEY([Details_ID])
REFERENCES [dbo].[Details_Table] ([Details_ID])
GO
ALTER TABLE [dbo].[Clients_Table] CHECK CONSTRAINT [FK_Clients_Table_Details_Table]
GO
ALTER TABLE [dbo].[Diagnosis_Medication_Table]  WITH CHECK ADD  CONSTRAINT [FK_Diagnosis_Medication_Table_Medical_Diagnosis_Table] FOREIGN KEY([Medical_Diagnosis_ID])
REFERENCES [dbo].[Medical_Diagnosis_Table] ([Medical_Diagnosis_ID])
GO
ALTER TABLE [dbo].[Diagnosis_Medication_Table] CHECK CONSTRAINT [FK_Diagnosis_Medication_Table_Medical_Diagnosis_Table]
GO
ALTER TABLE [dbo].[Diagnosis_Medication_Table]  WITH CHECK ADD  CONSTRAINT [FK_Diagnosis_Medication_Table_Medication_Table] FOREIGN KEY([Medication_ID])
REFERENCES [dbo].[Medication_Table] ([Medication_ID])
GO
ALTER TABLE [dbo].[Diagnosis_Medication_Table] CHECK CONSTRAINT [FK_Diagnosis_Medication_Table_Medication_Table]
GO
ALTER TABLE [dbo].[Employees_Table]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Table_Details_Table] FOREIGN KEY([Details_ID])
REFERENCES [dbo].[Details_Table] ([Details_ID])
GO
ALTER TABLE [dbo].[Employees_Table] CHECK CONSTRAINT [FK_Employees_Table_Details_Table]
GO
ALTER TABLE [dbo].[Employees_Table]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Table_Roles_Table] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Roles_Table] ([Role_ID])
GO
ALTER TABLE [dbo].[Employees_Table] CHECK CONSTRAINT [FK_Employees_Table_Roles_Table]
GO
ALTER TABLE [dbo].[Species_Table]  WITH CHECK ADD  CONSTRAINT [FK_Species_Table_Animal_Table] FOREIGN KEY([Species_ID])
REFERENCES [dbo].[Animal_Table] ([Animal_Species_ID])
GO
ALTER TABLE [dbo].[Species_Table] CHECK CONSTRAINT [FK_Species_Table_Animal_Table]
GO
ALTER TABLE [dbo].[Surrender_Client_Table]  WITH CHECK ADD  CONSTRAINT [FK_Surrender_Client_Table_Clients_Table] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Clients_Table] ([Client_ID])
GO
ALTER TABLE [dbo].[Surrender_Client_Table] CHECK CONSTRAINT [FK_Surrender_Client_Table_Clients_Table]
GO
ALTER TABLE [dbo].[Surrender_Client_Table]  WITH CHECK ADD  CONSTRAINT [FK_Surrender_Client_Table_Employees_Table] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employees_Table] ([Employee_ID])
GO
ALTER TABLE [dbo].[Surrender_Client_Table] CHECK CONSTRAINT [FK_Surrender_Client_Table_Employees_Table]
GO
USE [master]
GO
ALTER DATABASE [WoodRock] SET  READ_WRITE 
GO
