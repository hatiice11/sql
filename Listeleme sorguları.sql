/*Kitap tablosundaki Kategori'si 6 olanlar�n Kitap ad�,Yazar� ve Kategorisinin getirilmesi*/
select Kitap_adi,Yazar,Kategori from Kitap where Kategori=6
/*Kitap tablosundaki kitap ad�nda 'a'harfi ge�en kitap isimleri sorgusu*/
select * from Kitap where Kitap_adi like '%A%'
/*Kategori_adi 'a' ve 'k' harfi aras�nda olanlar� artan bir �ekilde s�ralama*/
select * from Kategori where Kategori_adi like '[a-k]%' order by Kategori_adi asc
/*�yeler tablosundaki Uye_adi 'e' ve 's' harfi aras�nda olanlar� azalan bir �ekilde s�ralama*/
select Uye_Id,Uye_adi,Uye_soyadi,Cinsiyet from Uye where Uye_adi like '[e-s]%' order by Uye_adi desc
/*Kitap tablosundaki kategorisi 3'den b�y�k 16'dan k���k kay�tlar� getirme */
select * from Kitap where Kategori>3 and Kategori<16
/*Kitap tablosundaki kategorisi 3'den k���k veya 10'dan b�y�k olanlar� getirme */
select Kitap_Id,Kitap_adi,Kategori from Kitap where Kategori<3 or Kategori>10
/*Yay�nevi tablosundaki Yayinevi_Id de�eri 1 ile 12 aras�nda olanlar� ilk 5 sat�r� azalan �ekilse s�ralama */
select top 5 with ties * from Yayinevi where Yayinevi_Id between 1 and 12 order by
Yayinevi_adi desc
/*Uye tablosundaki toplam �ye say�s� getirme*/
select sum(Uye_Id) from Uye
/*Kitap tablosundaki ortalama kitap sayfas�n� getirme*/
select avg(Kitap_sayfasi) from Kitap
/*��lem tablosundaki �ye say�s� 2 olanlar�n toplam say�s�*/
select count(Uye) from Islem where Uye=2
/*Cinsiyet s�tununda 'Kad�n' olanlar� 'Mrs.' olarak 'Cinsiyet ba�l��� alt�nda yazd�rma'*/
select REPLACE (Cinsiyet,'Kad�n', 'Mrs.')as 'Cinsiyet' from Uye
/*�ye tablosundaki cinsiyet s�tununda 'Erkek' yazanlar� 'Mr.' olarak g�ncelleme*/
update Uye set Cinsiyet='Mr.' where Cinsiyet='Erkek'
select * from Uye
/*Kitap tablosundaki en y�ksek sayfa say�s�n� getirme*/
select max(Kitap_sayfasi) as 'En y�ksek sayfa say�s�' from Kitap
/*Kitap tablosundaki en y�ksek basim say�s�na sahip kitab�n bas�m say�s�n� ve kitab�n ad�n� getirme*/
select Basim_sayisi,Kitap_adi from Kitap where Basim_sayisi=(select max(Basim_sayisi) from Kitap)
/*Yazar tablosundaki yazar ad� en k���k olan� getirme*/
select min (Yazar_adi) from Yazar
/*Kitap tablosundaki kitap sayfas�n� a�a�� ve yukar� yuvarlama*/
select Kitap_sayfasi, ceiling(Kitap_sayfasi)as 'yukar� yuvarla',floor(Kitap_sayfasi)as'a�ag�ya
yuvarla' from Kitap
/*�ye tablosundaki Dogum_tarihi s�tununun y�l k�sm�n� alma*/
select datepart(year,Dogum_tarihi) from Uye
/*Do�um tarihinin y�l,ay,hafta,g�n,haftan�n g�n� �eklinde g�sterme*/
select datepart(year, Dogum_tarihi),datepart(month, Dogum_tarihi),
datepart(week,Dogum_tarihi)
,datepart(day,Dogum_tarihi),datepart(QUARTER,Dogum_tarihi),datepart(weekday,Dogum_tarihi)
from Uye
/*G�ncel tarih*/
select getdate()
/*�ye tablosundaki Dogum_tarihi s�tunundan y�l k�sm�n� al�p bunu 'Yas'�eklinde adland�rma*/
select Uye_adi,Uye_soyadi, datepart(year,getdate())-datepart(year,Dogum_tarihi) as 'Yas'from Uye
/*�ye tablosundaki kay�t tarihinden do�um tarihi ��kar�larak k�t�phaneye giri� ya��n�n bulunmas�*/
select Uye_adi,Uye_soyadi,datepart(year,Kayit_tarihi)-datepart(year,Dogum_tarihi) as 'K�t�phaneye
Giris Yasi' from Uye
/*��lem tablosundaki al�� tarihi ile veri� tarihi aras�ndaki g�n fark�n� yazd�rma*/
select datediff(DAY,Ali�_tarihi,Veri�_tarihi) from Islem
/*�ntersect ile Kategori tablosu ile Kitap tablosunun ortak de�erini yazd�rma*/
select Kategori_adi from Kategori
intersect
select Kitap_adi from Kitap
/*Kitap_Id s�tunu ile Yazar_Id s�tunlar�n�n aras�ndaki fark*/
select Kitap_Id from Kitap except select Yazar_Id from Yazar
/*Yay�nevi tablosundaki yay�nevi ad� s�t�nunun soldan ilk 4 harfini yazd�rma*/
select Yayinevi_adi,LEFT(Yayinevi_adi,4) from Yayinevi
/*Yazar tablosundaki Yazar_adi s�tununun sa�dan ilk 3 harfini yazd�rma */
select Yazar_adi,RIGHT(Yazar_adi,3) from Yazar
/*Kitap tablosundaki kitap ad�n�n 2.karakterinden 4.karaktere kadar listeleme*/
select Kitap_adi,SUBSTRING(Kitap_adi,2,4) from Kitap
/*�ye tablosundaki uye_adi s�tununun soldan 2 karakterini alma ve istedi�imiz �ekilde yazd�rma*/
select LEFT(Uye_adi,2)+ '02'+Substring(Uye_adi,3,4)+ '03' from Uye

/*Kategori tablosundaki kategori ad�n�n karakter uzunlu�unu verme*/
select Kategori_adi,LEN(Kategori_adi) from Kategori
/*�ye tablosundaki �ye adlar�n� k���k harfle yazma*/
select LOWER(Uye_adi) from Uye
		
/*Kitap tablosundaki kitap isimlerini b�y�k harfle yazma*/
select UPPER(Kitap_adi) from Kitap
/*Yay�nevi tablosundaki yay�nevi ad�n�n soldan 1.harfini b�y�k yazd�rma*/
select UPPER(LEFT(Yayinevi_adi,1)) from Yayinevi
/*Kitap tablosundaki kitap �d ile yazar tablosundaki yazar �d'nin birbirine e�it olmas�na
g�re kitap ad� ve yazar ad�n� birle�tir*/
select Kitap_adi,Yazar_adi from Kitap inner join Yazar on Kitap.Kitap_Id=Yazar.Yazar_Id
/*Kitap tablosundaki kitap �d ile kategori tablosundaki kategori �d'si e�it olanlar� birle�tirip,
kitap ad�n� ve kategori ad�n� yazd�rma*/
select Kitap_adi,Kategori.Kategori_adi
from Kitap inner join Kategori on Kitap.Kitap_Id=Kategori.Kategori_Id
/*Kitap ad�na g�re kategorisi ve yazar ad�n� getirme*/
select Kitap_adi,Kategori_adi,Yazar_adi
from Kitap K inner join Kategori U on U.Kategori_Id=K.Kategori
inner join Yazar T on U.Kategori_Id=T.Yazar_Id
where K.Kitap_Id between 1 And 5
order by Kitap_adi asc

use kutuphane
select * from uye
/*uye ad�n�n ilk 2 harfini, do�um y�l�n�n son iki hanesini �zel bir karakter, 
soyad�n�n son iki harfini b�y�k harf, epostas�n�n 5.6. harflerini alarak
bir �ifre �retecek kod.*/

select Uye_adi,Uye_soyadi, Dogum_tarihi, Uye_eposta,
left(Uye_adi,2) + right(year(Dogum_tarihi),2) + '*' +
upper(right(Uye_soyadi,2)) + SUBSTRING(Uye_eposta,5,5) as '�ifre' from uye

select*from Islem
select*from Kitap

/*
--Kitaplar tablosundaki Kitap_adi s�tunundaki verilerin ilk karakterinden sonraki iki karakteri ile ilk d�rt karakteri al�p 
Kitap_Id ekleyerek KodAd� ad�nda veriler olu�turur.
*/
select Kitap_adi,
substring(Kitap_adi,2,2)+ left(Kitap_adi,4)+
lower(left(Kitap_Id,1)) as 'Kod Ad�' from Kitap		
		

--cast ve convert D�n���m fonksiyonlar�d�r t�r d�ng�s� i�in kullan�l�r.
select cast(Uye_Id as nvarchar)+ left (Uye_adi,5)+right (Uye_soyadi,2) +convert(nvarchar,Uye_tel) from Uye

--her iki sorguda ayn� sonucu d�nd�r�r
select cast (Uye_Id as nvarchar) as 'Uye_Id'from Uye
select convert(int,Uye_Id) as 'Uye_Id' from Uye


--datepart, datediff
/* datediff
iki tarih aras�ndaki g�n, ay, y�l, saat vb. farklar� belirlemek i�in kullan�l�r.
�rne�in iki tarih aras�nda ka� g�n ge�ti�ini ��renebiliriz.*/
select* from Islem 
select datediff(day,Ali�_tarihi,Veri�_tarihi) as 'G�n Aral���' from Islem


/*datepart
belirli bir tarihin bir b�l�m�n� say�sal bir de�erde d�nd�rmek i�in kullan�l�r.
tarihin g�n�, tarihin ay�, tarihin y�l� vb. olabilir.
*/
select * from Uye where year(Dogum_tarihi) >1999
select datepart(YEAR,Dogum_tarihi) as 'YIL',datepart(MONTH,Dogum_tarihi) as 'AY',datepart(DAY,Dogum_tarihi) as 'G�N' from Uye



/* getdate()
ge�erli veritaban� sistemi tarih ve saatini 'YYYY-AA-GG hh:dd:ss.mmm' bi�iminde d�nd�r�r.
*/


-- kitap ad� 5 karakter olan kitaplar� listeler
select Kitap_adi, len(Kitap_adi) as 'Karakter'  from Kitap
select Kitap_adi, left(Kitap_adi, 5) as '�lk 5 Karakter'from Kitap


--charindex(): Belirtilen de�erin, verinin ka��nc� karakteri oldu�unu verir.
SELECT CHARINDEX('e', Yazar_adi) AS 'Karakter say�s�',
RIGHT(Yazar_adi, LEN(Yazar_adi) - CHARINDEX('e', Yazar_adi) + 10) AS 'Ad' FROM Yazar

--reverse(): Listelenen verilerin tersten yaz�lm�� halini verir.
select yazar_adi, reverse(yazar_adi) as 'Tersten yazd�rma' from yazar


--Bir tablo olu�turup var olan tabloya veri kopyalama yapar.
create table Calisan (Uye_Id int not null,
						Uye_adi nvarchar(20), 
						Uye_tel int)
select * from Calisan
insert Calisan  select Uye_Id, Uye_adi ,Uye_tel from Uye
where  Uye_tel is null



Select Uye, count(Kitap) as '�d�n� al�nan kitap say�s�' from Islem group by Uye
-- ��lem tablodundaki �yelerin toplam ka� adet kitap �d�n� ald���n�n say�s�n�n uyeye g�re grupland�r�larak bulunmas�

Select Uye, count(Kitap) as '�d�n� al�nan kitap say�s�' from Islem group by Uye order by uye desc
-- ��lem tablodundaki �yelerin toplam ka� adet kitap �d�n� ald���n�n say�s�n�n uyeye g�re grupland�r�larak uye idsine g�re azalan s�rada s�ralanmas�

Select Uye, count(Kitap) as '�d�n� al�nan kitap say�s�' from Islem where Uye > 2 group by Uye 
-- ��lem tablodundaki uye idsi 2 den buyuk olan �yeleri toplam ka� adet kitap �d�n� ald���n�n say�s�n�n uyeye g�re grupland�r�larak bulunmas�

select Uye_adi,  ISNULL(Uye_eposta,'E posta yok') from Uye 
-- Uye tablosundaki uye adi s�tununu ve uye e posta s�tunundaki NULL de�erlerin yerine E posta yok yaz�lmas�

select Uye_adi,  coalesce(Uye_eposta,'E posta yok') from Uye 
-- Uye tablosundaki uye adi s�tunu ve uye e posta s�tunundaki NULL de�erlerin yerine E posta yok yazd�rma

select Uye_adi, isnull(convert(nvarchar,Uye_tel), 'Telefon numaras� yok') from Uye 
-- Uye tablosundaki uye adi s�tunu ve uye e tel s�tunundaki NULL de�erlerin yerine Telefon numaras� yok yazd�rma

select Kitap_adi , nullif(Basim_sayisi,50) from Kitap
-- Kitap tablosundaki kitap adi s�tunu ve basim sayisi 50 olan de�erlerin yerine NULL yazd�rma

select * into Coksatanlar from Kitap where  Basim_sayisi > 2000
-- Kitaplar tablosundaki bas�m say�s� 2000 den fazla olan kitaplar� Coksatanlar isminde yeni bir tablo olu�turarak oraya kaydetme
 
 select * from Coksatanlar 
 -- into ile olu�turulan yeni tabloya eklenen veriler 

 SELECT Kitap_Id, Kitap_adi
FROM Kitap
WHERE Yayinevi = (SELECT Yayinevi_Id FROM Yayinevi WHERE Yayinevi_adi like '�� Bankas� Yay�nlar�')
-- Yay�nevi �� Bankas� Yay�nlar�ndan olan kitaplar�n Idsini ve ad� yazd�rma

UPDATE Kitap
SET Kitap_sayfasi = 100
WHERE Kategori = (SELECT Kategori_Id FROM Kategori WHERE Kategori_adi = 'D�nya Klasikleri')
-- Kategorisi D�nya Klasikleri olan kitaplar�n kitap sayfas� s�tununu 100 olarak g�ncelleme

SELECT Kitap_adi, Kitap_sayfasi
FROM Kitap
WHERE Kategori = (SELECT Kategori_Id FROM Kategori WHERE Kategori_adi like 'D�nya Klasikleri');
-- Kategorisi D�nya Klasikleri olan kitaplar�n ad�n� ve sayfa say�s�n� getirme