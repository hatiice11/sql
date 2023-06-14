create database Kutuphane
use Kutuphane
create table Kitap (Kitap_Id int not null,
					Kitap_adi nvarchar(30),
					Kitap_sayfasi int,
					Basim_sayisi int,
					Basim_yili date,
					Yazar int,
					Yayinevi int, 
					Kategori int,
					constraint Kitapbirincil Primary key (Kitap_Id),
					constraint YazarAnahtar Foreign Key (Yazar) references Yazar (Yazar_Id),
					constraint YayineviAnahtar Foreign Key (Yayinevi) references Yayinevi (Yayinevi_Id),
					constraint KategoriAnahtar Foreign Key (Kategori) references Kategori (Kategori_Id))

create table Uye (Uye_Id int not null,
				Uye_adi nvarchar(20),
				Uye_soyadi nvarchar(20),
				Cinsiyet nvarchar(20),
				Uye_tel int,
				Kayit_tarihi date,
				Uye_eposta nvarchar(30),
				Dogum_tarihi date,
				constraint Uyebirincil Primary key (Uye_Id))

create table Yayinevi (Yayinevi_Id int not null,
						Yayinevi_adi nvarchar(20),
						constraint Yayinevibirincil Primary key (Yayinevi_Id))

create table Yazar (Yazar_Id int not null,
					Yazar_adi nvarchar(20),
					Yazar_soyadi nvarchar(20),
					constraint Yazarbirincil Primary key (Yazar_Id))

create table Kategori (Kategori_Id int not null,
						Kategori_adi nvarchar(20),
						constraint Kategoribirincil Primary key (Kategori_Id))

create table Islem (Islem_Id int not null,
					Aliþ_tarihi date,
					Veriþ_tarihi date,
					Uye int,
					Kitap int,
					constraint Islembirincil Primary key (Islem_Id),
					constraint UyeAnahtar Foreign Key (Uye) references Uye (Uye_Id),
					constraint KitapAnahtar Foreign Key (Kitap) references Kitap (Kitap_Id))


insert into Yazar(Yazar_Id,Yazar_adi,Yazar_soyadi)values
					(1,'Miguel','De Cervantes'),
					(2,'William','Shakespeare'),
					(3,'Fyodor','Dostoevsky'),
					(4,'Charlotte','Bronte'),
					(5,'Gustave','Flaubert'),
					(6,'Ray',' Bradbury'),
					(7,'Ýlber','Ortaylý'),
					(8,'Stefan' ,'Zweig'),
					(9,'Stephen', 'King'),
					(10,'Özdemir', 'Asaf'),
					(11,'Cemal', 'Süreya') ,
					(12,'Mustafa', 'Kutlu'),
					(13,'Orhan', 'Pamuk'),
					(14,'Cemil', 'Meriç'),
					(15,'Sabahattin','Ali')


insert into Yayinevi(Yayinevi_Id,Yayinevi_adi)values
				(1,'Ýþ Bankasý Yayýnlarý'),
				(2,'Can Yayýnlarý'),
				(3,'Ýletiþim Yayýnlarý'),
				(4,'Alfa Yayýnlarý'),
				(5,'Yapý Kredi Yayýnlarý'),
				(6,'Pegasus Yayýnlarý'),
				(7,'Dergah Yayýnlarý'),
				(8,'Parodi Yayýnlarý'),
				(9,'Epsilon Yayýnlarý'),
				(10,'Tübitak Yayýnlarý')

insert into Kategori(Kategori_Id,Kategori_adi) values
				(1,'Dünya Klasikleri'),
				(2,'Bilim Kurgu'),
				(3,'Tarih'),
				(4,'Psikoloji'),
				(5,'Dini'),
				(6,'Romantik'),
				(7,'Sosyoloji'),
				(8,'Þiir'),
				(9,'Makale'),
				(10,'Distopya'),
				(11,'Polisiye'),
				(12,'Korku'),
				(13,'Fantastik'),
				(14,'Felsefe')
				

insert into Kitap (Kitap_Id,Kitap_adi,Kitap_sayfasi,Basim_sayisi,Basim_yili,Yazar,Yayinevi,Kategori)
values                   (1,'Don Kiþot',300,120,'1605-05-28',1,1,1),
						 (2,'Romeo ve Juliet',264,150,'1597-05-28',2,1,6),
						 (3,'Hamlet',300,4530,'1600-12-28',2,3,1),
						 (4,'Yer Altýndan Notlar',320,1200,'1864-8-14',3,5,1),
					     (5,'Karamazov Kardeþler',840,50,'1880-04-24',3,3,1),
				  	     (6,'Jane Eyre',240,50,'1847-11-28',4,10,1),
						 (7,'Madam Bovary',560,50,'1856-01-17',5,1,1),
						 (8,'Bir Delikanlýnýn Hikayesi',240,50,'2017-01-17',5,5,1),
						 (9,'Ölüm Sessiz Geldi',350,50,'1920-07-12',5,5,6),
						 (10,'Tarihin Sýnýrlarýna Yolculuk',240,50,'2001-01-12',7,3,1),
						 (11,'Korku',100,1500,'1925-04-27',8,10,1),
						 (12,'Korku',160,1700,'2017-04-12',9,5,6),
						 (13,'Çiçek Senfonisi',190,2500,'2008-12-25',10,8,8),
						 (14,'Sevda Sözleri',200,2500,'1984-04-30',11,8,1),
						 (15,'Beyhude ömrüm',200,2500,'2001-12-20',12,9,3),
						 (16,'Cevdet Bey ve Oðullarý',200,2500,'1982-04-21',13,9,3),
					     (17,'Bu Ülke',200,2500,'1974-04-21',13,7,2),
						 (18,'Kürk Mantolu Madonna',160,2000,'1998-03-06',15,5,6),
						 (19,'Kýrmýzý Saclý Kadýn',204,2500,'2016-12-01',13,6,6),
						 (20,'Satranç',85,1800,'1942-04-26',7,8,10)

insert into Uye(Uye_Id,Uye_adi,Uye_soyadi,Cinsiyet,Uye_tel,Kayit_tarihi,Uye_eposta,Dogum_tarihi) values
				(1,'Hatice','Ayva','Kadýn',05504541,'2020-04-21','hatice.ayva@gmail.com','2002-11-08'),
				(2,'Esra','Güney','Kadýn',05021119,'2021-02-14','esra.guney@gmail.com','2003-08-27'),
				(3,'Beyza','Murat','Kadýn',05017891,'2020-12-12','beyza.murat@gmail.com','2002-10-15'),
				(4,'Miray','Yýlmaz','Kadýn',050052367,'2018-12-23','miray.yilmaz@gmail.com','2003-02-06'),
				(5,'Ali','Korkut','Erkek',05005677,'2015-01-06','ali.korkut@gmail.com','1993-02-24'),
				(6,'Mehmet','Yýldýrým','Erkek',05002347,'2023-12-19','mehmet.yildirim@gmail.com','1989-03-12'),
				(7,'Aydýn','Görgü','Erkek',05006787,'2021-12-06','aydin.görgü@gmail.com','1983-05-06'),
				(8,'Esma','Çetinkaya','Kadýn',05205677,'2022-08-09','esma.cetinkaya@gmail.com','2003-01-06'),
				(9,'Demir','Aksoy','Erkek',05345677,'2020-07-25','demir.aksoy@gmail.com','1999-05-01'),
				(10,'Ahmet','Turan','Erkek',05905677,'2016-08-24','ahmet.turan@gmail.com','1997-08-15'),
				(11,'Selim','Çiftçi','Erkek',NULL,'2022-05-10','selim.ciftci@gmail.com','2002-12-07'),
				(12,'Ervin','Altan','Kadýn',NULL,'2018-05-16','ervin.altan@gmail.com','1996-08-01'),
				(13,'Kuzey','Hanlý','Erkek',05345627,'2019-10-21',NULL,'1996-10-24'),
				(14,'Sinem','Ataklý','Kadýn',NULL,'2020-05-20','sinem.atakli@gmail.com','1996-06-24'),
				(15,'Aslý','Yüksel','Kadýn',05507968,'2018-10-19',NULL,'1994-05-02')
			


insert into Islem(Islem_Id,Aliþ_tarihi,Veriþ_tarihi,Uye,Kitap) values
					(1,'2018-04-14','2018-04-17',1,8),
					(2,'2019-12-24','2019-12-26',2,4),
					(3,'2015-08-08','2015-08-14',3,14),
					(4,'2020-11-17','2020-11-20',4,6),
					(5,'2021-12-03','2021-12-31',2,5),
					(6,'2022-04-04','2022-05-16',4,7),
					(7,'2021-03-03','2021-04-18',1,12),
					(8,'2022-08-04','2022-08-29',3,15),
					(9,'2023-01-09','2023-02-20',2,5),
					(10,'2023-04-19','2023-05-07',4,7),
					(11,'2021-10-22','2021-11-01',2,5),
					(12,'2022-07-09','2022-07-28',1,7),
					(13,'2021-09-24','2021-10-02',2,5),
					(14,'2022-05-12','2022-05-31',3,7),
					(15,'2023-03-28','2023-04-11',1,12)


