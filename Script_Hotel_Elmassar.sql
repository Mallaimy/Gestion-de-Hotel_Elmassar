USE [ElmassarHotel_db]
GO
/****** Object:  Table [dbo].[cat_chambre]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_chambre](
	[id_cat_C] [int] IDENTITY(1,1) NOT NULL,
	[description] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cat_C] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat_hotel]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat_hotel](
	[id_cat_H] [int] IDENTITY(1,1) NOT NULL,
	[nomb_etoile] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cat_H] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambre]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambre](
	[id_chambre] [int] IDENTITY(1,1) NOT NULL,
	[Tel_C] [varchar](30) NOT NULL,
	[id_cat_C] [int] NOT NULL,
	[id_cat_H] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_chambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id_client] [int] IDENTITY(1,1) NOT NULL,
	[nom_client] [varchar](50) NOT NULL,
	[prenom_client] [varchar](50) NOT NULL,
	[adresse_client] [varchar](50) NOT NULL,
	[ville_client] [varchar](50) NOT NULL,
	[codepostale_client] [varchar](30) NOT NULL,
	[pays_client] [varchar](50) NOT NULL,
	[tel_client] [varchar](50) NOT NULL,
	[email_client] [varchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consommation]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consommation](
	[id_consom] [int] IDENTITY(1,1) NOT NULL,
	[date_consom] [date] NOT NULL,
	[heure_consom] [time](7) NOT NULL,
	[id_client] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_consom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facture]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facture](
	[id_facture] [int] IDENTITY(1,1) NOT NULL,
	[prixunitaire] [varchar](30) NOT NULL,
	[id_cat_H] [int] NOT NULL,
	[id_cat_C] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_facture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[id_hotel] [int] IDENTITY(1,1) NOT NULL,
	[nom_hotel] [varchar](50) NOT NULL,
	[adress_hotel] [varchar](100) NOT NULL,
	[codepostal_hotel] [varchar](100) NOT NULL,
	[tel_hotel] [varchar](100) NOT NULL,
	[nomb_etoile] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offre]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offre](
	[id_offre] [int] IDENTITY(1,1) NOT NULL,
	[id_pres] [int] NOT NULL,
	[id_hotel] [int] NOT NULL,
	[prix_pres] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_offre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestation]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestation](
	[id_pres] [int] IDENTITY(1,1) NOT NULL,
	[designation_pres] [text] NOT NULL,
	[id_hotel] [int] NOT NULL,
	[id_consom] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 28/02/2022 02:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[id_reservation] [int] IDENTITY(1,1) NOT NULL,
	[date_debut] [date] NOT NULL,
	[date_fin] [date] NOT NULL,
	[date_payeArres] [date] NOT NULL,
	[montantArres] [varchar](30) NOT NULL,
	[id_chambre] [int] NOT NULL,
	[id_client] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD FOREIGN KEY([id_cat_C])
REFERENCES [dbo].[cat_chambre] ([id_cat_C])
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD FOREIGN KEY([id_cat_H])
REFERENCES [dbo].[cat_hotel] ([id_cat_H])
GO
ALTER TABLE [dbo].[Consommation]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[facture]  WITH CHECK ADD FOREIGN KEY([id_cat_H])
REFERENCES [dbo].[cat_hotel] ([id_cat_H])
GO
ALTER TABLE [dbo].[facture]  WITH CHECK ADD FOREIGN KEY([id_cat_C])
REFERENCES [dbo].[cat_chambre] ([id_cat_C])
GO
ALTER TABLE [dbo].[hotel]  WITH CHECK ADD FOREIGN KEY([nomb_etoile])
REFERENCES [dbo].[cat_hotel] ([id_cat_H])
GO
ALTER TABLE [dbo].[offre]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[offre]  WITH CHECK ADD FOREIGN KEY([id_pres])
REFERENCES [dbo].[prestation] ([id_pres])
GO
ALTER TABLE [dbo].[prestation]  WITH CHECK ADD FOREIGN KEY([id_consom])
REFERENCES [dbo].[Consommation] ([id_consom])
GO
ALTER TABLE [dbo].[prestation]  WITH CHECK ADD FOREIGN KEY([id_hotel])
REFERENCES [dbo].[hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([id_chambre])
REFERENCES [dbo].[chambre] ([id_chambre])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
