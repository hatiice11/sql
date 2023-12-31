USE [Kutuphane]
GO
/****** Object:  Table [dbo].[Calisan]    Script Date: 2.06.2023 12:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calisan](
	[Uye_Id] [int] NOT NULL,
	[Uye_adi] [nvarchar](20) NULL,
	[Uye_tel] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Islem]    Script Date: 2.06.2023 12:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Islem](
	[Islem_Id] [int] NOT NULL,
	[Aliş_tarihi] [date] NULL,
	[Veriş_tarihi] [date] NULL,
	[Uye] [int] NULL,
	[Kitap] [int] NULL,
 CONSTRAINT [Islembirincil] PRIMARY KEY CLUSTERED 
(
	[Islem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 2.06.2023 12:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[Kategori_Id] [int] NOT NULL,
	[Kategori_adi] [nvarchar](20) NULL,
 CONSTRAINT [Kategoribirincil] PRIMARY KEY CLUSTERED 
(
	[Kategori_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitap]    Script Date: 2.06.2023 12:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitap](
	[Kitap_Id] [int] NOT NULL,
	[Kitap_adi] [nvarchar](30) NULL,
	[Kitap_sayfasi] [int] NULL,
	[Basim_sayisi] [int] NULL,
	[Basim_yili] [date] NULL,
	[Yazar] [int] NULL,
	[Yayinevi] [int] NULL,
	[Kategori] [int] NULL,
 CONSTRAINT [Kitapbirincil] PRIMARY KEY CLUSTERED 
(
	[Kitap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uye]    Script Date: 2.06.2023 12:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uye](
	[Uye_Id] [int] NOT NULL,
	[Uye_adi] [nvarchar](20) NULL,
	[Uye_soyadi] [nvarchar](20) NULL,
	[Cinsiyet] [nvarchar](20) NULL,
	[Uye_tel] [int] NULL,
	[Kayit_tarihi] [date] NULL,
	[Uye_eposta] [nvarchar](30) NULL,
	[Dogum_tarihi] [date] NULL,
 CONSTRAINT [Uyebirincil] PRIMARY KEY CLUSTERED 
(
	[Uye_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yayinevi]    Script Date: 2.06.2023 12:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yayinevi](
	[Yayinevi_Id] [int] NOT NULL,
	[Yayinevi_adi] [nvarchar](20) NULL,
 CONSTRAINT [Yayinevibirincil] PRIMARY KEY CLUSTERED 
(
	[Yayinevi_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yazar]    Script Date: 2.06.2023 12:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yazar](
	[Yazar_Id] [int] NOT NULL,
	[Yazar_adi] [nvarchar](20) NULL,
	[Yazar_soyadi] [nvarchar](20) NULL,
 CONSTRAINT [Yazarbirincil] PRIMARY KEY CLUSTERED 
(
	[Yazar_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Calisan] ([Uye_Id], [Uye_adi], [Uye_tel]) VALUES (11, N'Selim', NULL)
INSERT [dbo].[Calisan] ([Uye_Id], [Uye_adi], [Uye_tel]) VALUES (12, N'Ervin', NULL)
INSERT [dbo].[Calisan] ([Uye_Id], [Uye_adi], [Uye_tel]) VALUES (14, N'Sinem', NULL)
GO
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (1, CAST(N'2018-04-14' AS Date), CAST(N'2018-04-17' AS Date), 1, 8)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (2, CAST(N'2019-12-24' AS Date), CAST(N'2019-12-26' AS Date), 2, 4)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (3, CAST(N'2015-08-08' AS Date), CAST(N'2015-08-14' AS Date), 3, 14)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (4, CAST(N'2020-11-17' AS Date), CAST(N'2020-11-20' AS Date), 4, 6)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (5, CAST(N'2021-12-03' AS Date), CAST(N'2021-12-31' AS Date), 2, 5)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (6, CAST(N'2022-04-04' AS Date), CAST(N'2022-05-16' AS Date), 4, 7)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (7, CAST(N'2021-03-03' AS Date), CAST(N'2021-04-18' AS Date), 1, 12)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (8, CAST(N'2022-08-04' AS Date), CAST(N'2022-08-29' AS Date), 3, 15)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (9, CAST(N'2023-01-09' AS Date), CAST(N'2023-02-20' AS Date), 2, 5)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (10, CAST(N'2023-04-19' AS Date), CAST(N'2023-05-07' AS Date), 4, 7)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (11, CAST(N'2021-10-22' AS Date), CAST(N'2021-11-01' AS Date), 2, 5)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (12, CAST(N'2022-07-09' AS Date), CAST(N'2022-07-28' AS Date), 1, 7)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (13, CAST(N'2021-09-24' AS Date), CAST(N'2021-10-02' AS Date), 2, 5)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (14, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-31' AS Date), 3, 7)
INSERT [dbo].[Islem] ([Islem_Id], [Aliş_tarihi], [Veriş_tarihi], [Uye], [Kitap]) VALUES (15, CAST(N'2023-03-28' AS Date), CAST(N'2023-04-11' AS Date), 1, 12)
GO
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (1, N'Dünya Klasikleri')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (2, N'Bilim Kurgu')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (3, N'Tarih')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (4, N'Psikoloji')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (5, N'Dini')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (6, N'Romantik')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (7, N'Sosyoloji')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (8, N'Şiir')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (9, N'Makale')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (10, N'Distopya')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (11, N'Polisiye')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (12, N'Korku')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (13, N'Fantastik')
INSERT [dbo].[Kategori] ([Kategori_Id], [Kategori_adi]) VALUES (14, N'Felsefe')
GO
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (1, N'Don Kişot', 300, 120, CAST(N'1605-05-28' AS Date), 1, 1, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (2, N'Romeo ve Juliet', 264, 150, CAST(N'1597-05-28' AS Date), 2, 1, 6)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (3, N'Hamlet', 300, 4530, CAST(N'1600-12-28' AS Date), 2, 3, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (4, N'Yer Altından Notlar', 320, 1200, CAST(N'1864-08-14' AS Date), 3, 5, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (5, N'Karamazov Kardeşler', 840, 50, CAST(N'1880-04-24' AS Date), 3, 3, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (6, N'Jane Eyre', 240, 50, CAST(N'1847-11-28' AS Date), 4, 10, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (7, N'Madam Bovary', 560, 50, CAST(N'1856-01-17' AS Date), 5, 1, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (8, N'Bir Delikanlının Hikayesi', 240, 50, CAST(N'2017-01-17' AS Date), 5, 5, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (9, N'Ölüm Sessiz Geldi', 350, 50, CAST(N'1920-07-12' AS Date), 5, 5, 6)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (10, N'Tarihin Sınırlarına Yolculuk', 240, 50, CAST(N'2001-01-12' AS Date), 7, 3, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (11, N'Korku', 100, 1500, CAST(N'1925-04-27' AS Date), 8, 10, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (12, N'Korku', 160, 1700, CAST(N'2017-04-12' AS Date), 9, 5, 6)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (13, N'Çiçek Senfonisi', 190, 2500, CAST(N'2008-12-25' AS Date), 10, 8, 8)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (14, N'Sevda Sözleri', 200, 2500, CAST(N'1984-04-30' AS Date), 11, 8, 1)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (15, N'Beyhude ömrüm', 200, 2500, CAST(N'2001-12-20' AS Date), 12, 9, 3)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (16, N'Cevdet Bey ve Oğulları', 200, 2500, CAST(N'1982-04-21' AS Date), 13, 9, 3)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (17, N'Bu Ülke', 200, 2500, CAST(N'1974-04-21' AS Date), 13, 7, 2)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (18, N'Kürk Mantolu Madonna', 160, 2000, CAST(N'1998-03-06' AS Date), 15, 5, 6)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (19, N'Kırmızı Saclı Kadın', 204, 2500, CAST(N'2016-12-01' AS Date), 13, 6, 6)
INSERT [dbo].[Kitap] ([Kitap_Id], [Kitap_adi], [Kitap_sayfasi], [Basim_sayisi], [Basim_yili], [Yazar], [Yayinevi], [Kategori]) VALUES (20, N'Satranç', 85, 1800, CAST(N'1942-04-26' AS Date), 7, 8, 10)
GO
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (1, N'Hatice', N'Ayva', N'Kadın', 5504541, CAST(N'2020-04-21' AS Date), N'hatice.ayva@gmail.com', CAST(N'2002-11-08' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (2, N'Esra', N'Güney', N'Kadın', 5021119, CAST(N'2021-02-14' AS Date), N'esra.guney@gmail.com', CAST(N'2003-08-27' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (3, N'Beyza', N'Murat', N'Kadın', 5017891, CAST(N'2020-12-12' AS Date), N'beyza.murat@gmail.com', CAST(N'2002-10-15' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (4, N'Miray', N'Yılmaz', N'Kadın', 50052367, CAST(N'2018-12-23' AS Date), N'miray.yilmaz@gmail.com', CAST(N'2003-02-06' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (5, N'Ali', N'Korkut', N'Erkek', 5005677, CAST(N'2015-01-06' AS Date), N'ali.korkut@gmail.com', CAST(N'1993-02-24' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (6, N'Mehmet', N'Yıldırım', N'Erkek', 5002347, CAST(N'2023-12-19' AS Date), N'mehmet.yildirim@gmail.com', CAST(N'1989-03-12' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (7, N'Aydın', N'Görgü', N'Erkek', 5006787, CAST(N'2021-12-06' AS Date), N'aydin.görgü@gmail.com', CAST(N'1983-05-06' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (8, N'Esma', N'Çetinkaya', N'Kadın', 5205677, CAST(N'2022-08-09' AS Date), N'esma.cetinkaya@gmail.com', CAST(N'2003-01-06' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (9, N'Demir', N'Aksoy', N'Erkek', 5345677, CAST(N'2020-07-25' AS Date), N'demir.aksoy@gmail.com', CAST(N'1999-05-01' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (10, N'Ahmet', N'Turan', N'Erkek', 5905677, CAST(N'2016-08-24' AS Date), N'ahmet.turan@gmail.com', CAST(N'1997-08-15' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (11, N'Selim', N'Çiftçi', N'Erkek', NULL, CAST(N'2022-05-10' AS Date), N'selim.ciftci@gmail.com', CAST(N'2002-12-07' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (12, N'Ervin', N'Altan', N'Kadın', NULL, CAST(N'2018-05-16' AS Date), N'ervin.altan@gmail.com', CAST(N'1996-08-01' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (13, N'Kuzey', N'Hanlı', N'Erkek', 5345627, CAST(N'2019-10-21' AS Date), NULL, CAST(N'1996-10-24' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (14, N'Sinem', N'Ataklı', N'Kadın', NULL, CAST(N'2020-05-20' AS Date), N'sinem.atakli@gmail.com', CAST(N'1996-06-24' AS Date))
INSERT [dbo].[Uye] ([Uye_Id], [Uye_adi], [Uye_soyadi], [Cinsiyet], [Uye_tel], [Kayit_tarihi], [Uye_eposta], [Dogum_tarihi]) VALUES (15, N'Aslı', N'Yüksel', N'Kadın', 5507968, CAST(N'2018-10-19' AS Date), NULL, CAST(N'1994-05-02' AS Date))
GO
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (1, N'İş Bankası Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (2, N'Can Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (3, N'İletişim Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (4, N'Alfa Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (5, N'Yapı Kredi Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (6, N'Pegasus Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (7, N'Dergah Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (8, N'Parodi Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (9, N'Epsilon Yayınları')
INSERT [dbo].[Yayinevi] ([Yayinevi_Id], [Yayinevi_adi]) VALUES (10, N'Tübitak Yayınları')
GO
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (1, N'Miguel', N'De Cervantes')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (2, N'William', N'Shakespeare')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (3, N'Fyodor', N'Dostoevsky')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (4, N'Charlotte', N'Bronte')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (5, N'Gustave', N'Flaubert')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (6, N'Ray', N' Bradbury')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (7, N'İlber', N'Ortaylı')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (8, N'Stefan', N'Zweig')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (9, N'Stephen', N'King')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (10, N'Özdemir', N'Asaf')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (11, N'Cemal', N'Süreya')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (12, N'Mustafa', N'Kutlu')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (13, N'Orhan', N'Pamuk')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (14, N'Cemil', N'Meriç')
INSERT [dbo].[Yazar] ([Yazar_Id], [Yazar_adi], [Yazar_soyadi]) VALUES (15, N'Sabahattin', N'Ali')
GO
ALTER TABLE [dbo].[Islem]  WITH CHECK ADD  CONSTRAINT [KitapAnahtar] FOREIGN KEY([Kitap])
REFERENCES [dbo].[Kitap] ([Kitap_Id])
GO
ALTER TABLE [dbo].[Islem] CHECK CONSTRAINT [KitapAnahtar]
GO
ALTER TABLE [dbo].[Islem]  WITH CHECK ADD  CONSTRAINT [UyeAnahtar] FOREIGN KEY([Uye])
REFERENCES [dbo].[Uye] ([Uye_Id])
GO
ALTER TABLE [dbo].[Islem] CHECK CONSTRAINT [UyeAnahtar]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [KategoriAnahtar] FOREIGN KEY([Kategori])
REFERENCES [dbo].[Kategori] ([Kategori_Id])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [KategoriAnahtar]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [YayineviAnahtar] FOREIGN KEY([Yayinevi])
REFERENCES [dbo].[Yayinevi] ([Yayinevi_Id])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [YayineviAnahtar]
GO
ALTER TABLE [dbo].[Kitap]  WITH CHECK ADD  CONSTRAINT [YazarAnahtar] FOREIGN KEY([Yazar])
REFERENCES [dbo].[Yazar] ([Yazar_Id])
GO
ALTER TABLE [dbo].[Kitap] CHECK CONSTRAINT [YazarAnahtar]
GO
