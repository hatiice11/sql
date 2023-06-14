/*Kitap tablosundaki Kategori'si 6 olanlarýn Kitap adý,Yazarý ve Kategorisinin getirilmesi*/
select Kitap_adi,Yazar,Kategori from Kitap where Kategori=6
/*Kitap tablosundaki kitap adýnda 'a'harfi geçen kitap isimleri sorgusu*/
select * from Kitap where Kitap_adi like '%A%'
/*Kategori_adi 'a' ve 'k' harfi arasýnda olanlarý artan bir þekilde sýralama*/
select * from Kategori where Kategori_adi like '[a-k]%' order by Kategori_adi asc
/*Üyeler tablosundaki Uye_adi 'e' ve 's' harfi arasýnda olanlarý azalan bir þekilde sýralama*/
select Uye_Id,Uye_adi,Uye_soyadi,Cinsiyet from Uye where Uye_adi like '[e-s]%' order by Uye_adi desc
/*Kitap tablosundaki kategorisi 3'den büyük 16'dan küçük kayýtlarý getirme */
select * from Kitap where Kategori>3 and Kategori<16
/*Kitap tablosundaki kategorisi 3'den küçük veya 10'dan büyük olanlarý getirme */
select Kitap_Id,Kitap_adi,Kategori from Kitap where Kategori<3 or Kategori>10
/*Yayýnevi tablosundaki Yayinevi_Id deðeri 1 ile 12 arasýnda olanlarý ilk 5 satýrý azalan þekilse sýralama */
select top 5 with ties * from Yayinevi where Yayinevi_Id between 1 and 12 order by
Yayinevi_adi desc
/*Uye tablosundaki toplam üye sayýsý getirme*/
select sum(Uye_Id) from Uye
/*Kitap tablosundaki ortalama kitap sayfasýný getirme*/
select avg(Kitap_sayfasi) from Kitap
/*Ýþlem tablosundaki üye sayýsý 2 olanlarýn toplam sayýsý*/
select count(Uye) from Islem where Uye=2
/*Cinsiyet sütununda 'Kadýn' olanlarý 'Mrs.' olarak 'Cinsiyet baþlýðý altýnda yazdýrma'*/
select REPLACE (Cinsiyet,'Kadýn', 'Mrs.')as 'Cinsiyet' from Uye
/*Üye tablosundaki cinsiyet sütununda 'Erkek' yazanlarý 'Mr.' olarak güncelleme*/
update Uye set Cinsiyet='Mr.' where Cinsiyet='Erkek'
select * from Uye
/*Kitap tablosundaki en yüksek sayfa sayýsýný getirme*/
select max(Kitap_sayfasi) as 'En yüksek sayfa sayýsý' from Kitap
/*Kitap tablosundaki en yüksek basim sayýsýna sahip kitabýn basým sayýsýný ve kitabýn adýný getirme*/
select Basim_sayisi,Kitap_adi from Kitap where Basim_sayisi=(select max(Basim_sayisi) from Kitap)
/*Yazar tablosundaki yazar adý en küçük olaný getirme*/
select min (Yazar_adi) from Yazar
/*Kitap tablosundaki kitap sayfasýný aþaðý ve yukarý yuvarlama*/
select Kitap_sayfasi, ceiling(Kitap_sayfasi)as 'yukarý yuvarla',floor(Kitap_sayfasi)as'aþagýya
yuvarla' from Kitap
/*Üye tablosundaki Dogum_tarihi sütununun yýl kýsmýný alma*/
select datepart(year,Dogum_tarihi) from Uye
/*Doðum tarihinin yýl,ay,hafta,gün,haftanýn günü þeklinde gösterme*/
select datepart(year, Dogum_tarihi),datepart(month, Dogum_tarihi),
datepart(week,Dogum_tarihi)
,datepart(day,Dogum_tarihi),datepart(QUARTER,Dogum_tarihi),datepart(weekday,Dogum_tarihi)
from Uye
/*Güncel tarih*/
select getdate()
/*Üye tablosundaki Dogum_tarihi sütunundan yýl kýsmýný alýp bunu 'Yas'þeklinde adlandýrma*/
select Uye_adi,Uye_soyadi, datepart(year,getdate())-datepart(year,Dogum_tarihi) as 'Yas'from Uye
/*Üye tablosundaki kayýt tarihinden doðum tarihi çýkarýlarak kütüphaneye giriþ yaþýnýn bulunmasý*/
select Uye_adi,Uye_soyadi,datepart(year,Kayit_tarihi)-datepart(year,Dogum_tarihi) as 'Kütüphaneye
Giris Yasi' from Uye
/*Ýþlem tablosundaki alýþ tarihi ile veriþ tarihi arasýndaki gün farkýný yazdýrma*/
select datediff(DAY,Aliþ_tarihi,Veriþ_tarihi) from Islem
/*Ýntersect ile Kategori tablosu ile Kitap tablosunun ortak deðerini yazdýrma*/
select Kategori_adi from Kategori
intersect
select Kitap_adi from Kitap
/*Kitap_Id sütunu ile Yazar_Id sütunlarýnýn arasýndaki fark*/
select Kitap_Id from Kitap except select Yazar_Id from Yazar
/*Yayýnevi tablosundaki yayýnevi adý sütünunun soldan ilk 4 harfini yazdýrma*/
select Yayinevi_adi,LEFT(Yayinevi_adi,4) from Yayinevi
/*Yazar tablosundaki Yazar_adi sütununun saðdan ilk 3 harfini yazdýrma */
select Yazar_adi,RIGHT(Yazar_adi,3) from Yazar
/*Kitap tablosundaki kitap adýnýn 2.karakterinden 4.karaktere kadar listeleme*/
select Kitap_adi,SUBSTRING(Kitap_adi,2,4) from Kitap
/*Üye tablosundaki uye_adi sütununun soldan 2 karakterini alma ve istediðimiz þekilde yazdýrma*/
select LEFT(Uye_adi,2)+ '02'+Substring(Uye_adi,3,4)+ '03' from Uye

/*Kategori tablosundaki kategori adýnýn karakter uzunluðunu verme*/
select Kategori_adi,LEN(Kategori_adi) from Kategori
/*Üye tablosundaki üye adlarýný küçük harfle yazma*/
select LOWER(Uye_adi) from Uye
		
/*Kitap tablosundaki kitap isimlerini büyük harfle yazma*/
select UPPER(Kitap_adi) from Kitap
/*Yayýnevi tablosundaki yayýnevi adýnýn soldan 1.harfini büyük yazdýrma*/
select UPPER(LEFT(Yayinevi_adi,1)) from Yayinevi
/*Kitap tablosundaki kitap ýd ile yazar tablosundaki yazar ýd'nin birbirine eþit olmasýna
göre kitap adý ve yazar adýný birleþtir*/
select Kitap_adi,Yazar_adi from Kitap inner join Yazar on Kitap.Kitap_Id=Yazar.Yazar_Id
/*Kitap tablosundaki kitap ýd ile kategori tablosundaki kategori ýd'si eþit olanlarý birleþtirip,
kitap adýný ve kategori adýný yazdýrma*/
select Kitap_adi,Kategori.Kategori_adi
from Kitap inner join Kategori on Kitap.Kitap_Id=Kategori.Kategori_Id
/*Kitap adýna göre kategorisi ve yazar adýný getirme*/
select Kitap_adi,Kategori_adi,Yazar_adi
from Kitap K inner join Kategori U on U.Kategori_Id=K.Kategori
inner join Yazar T on U.Kategori_Id=T.Yazar_Id
where K.Kitap_Id between 1 And 5
order by Kitap_adi asc

use kutuphane
select * from uye
/*uye adýnýn ilk 2 harfini, doðum yýlýnýn son iki hanesini özel bir karakter, 
soyadýnýn son iki harfini büyük harf, epostasýnýn 5.6. harflerini alarak
bir þifre üretecek kod.*/

select Uye_adi,Uye_soyadi, Dogum_tarihi, Uye_eposta,
left(Uye_adi,2) + right(year(Dogum_tarihi),2) + '*' +
upper(right(Uye_soyadi,2)) + SUBSTRING(Uye_eposta,5,5) as 'þifre' from uye

select*from Islem
select*from Kitap

/*
--Kitaplar tablosundaki Kitap_adi sütunundaki verilerin ilk karakterinden sonraki iki karakteri ile ilk dört karakteri alýp 
Kitap_Id ekleyerek KodAdý adýnda veriler oluþturur.
*/
select Kitap_adi,
substring(Kitap_adi,2,2)+ left(Kitap_adi,4)+
lower(left(Kitap_Id,1)) as 'Kod Adý' from Kitap		
		

--cast ve convert Dönüþüm fonksiyonlarýdýr tür döngüsü için kullanýlýr.
select cast(Uye_Id as nvarchar)+ left (Uye_adi,5)+right (Uye_soyadi,2) +convert(nvarchar,Uye_tel) from Uye

--her iki sorguda ayný sonucu döndürür
select cast (Uye_Id as nvarchar) as 'Uye_Id'from Uye
select convert(int,Uye_Id) as 'Uye_Id' from Uye


--datepart, datediff
/* datediff
iki tarih arasýndaki gün, ay, yýl, saat vb. farklarý belirlemek için kullanýlýr.
Örneðin iki tarih arasýnda kaç gün geçtiðini öðrenebiliriz.*/
select* from Islem 
select datediff(day,Aliþ_tarihi,Veriþ_tarihi) as 'Gün Aralýðý' from Islem


/*datepart
belirli bir tarihin bir bölümünü sayýsal bir deðerde döndürmek için kullanýlýr.
tarihin günü, tarihin ayý, tarihin yýlý vb. olabilir.
*/
select * from Uye where year(Dogum_tarihi) >1999
select datepart(YEAR,Dogum_tarihi) as 'YIL',datepart(MONTH,Dogum_tarihi) as 'AY',datepart(DAY,Dogum_tarihi) as 'GÜN' from Uye



/* getdate()
geçerli veritabaný sistemi tarih ve saatini 'YYYY-AA-GG hh:dd:ss.mmm' biçiminde döndürür.
*/


-- kitap adý 5 karakter olan kitaplarý listeler
select Kitap_adi, len(Kitap_adi) as 'Karakter'  from Kitap
select Kitap_adi, left(Kitap_adi, 5) as 'Ýlk 5 Karakter'from Kitap


--charindex(): Belirtilen deðerin, verinin kaçýncý karakteri olduðunu verir.
SELECT CHARINDEX('e', Yazar_adi) AS 'Karakter sayýsý',
RIGHT(Yazar_adi, LEN(Yazar_adi) - CHARINDEX('e', Yazar_adi) + 10) AS 'Ad' FROM Yazar

--reverse(): Listelenen verilerin tersten yazýlmýþ halini verir.
select yazar_adi, reverse(yazar_adi) as 'Tersten yazdýrma' from yazar


--Bir tablo oluþturup var olan tabloya veri kopyalama yapar.
create table Calisan (Uye_Id int not null,
						Uye_adi nvarchar(20), 
						Uye_tel int)
select * from Calisan
insert Calisan  select Uye_Id, Uye_adi ,Uye_tel from Uye
where  Uye_tel is null



Select Uye, count(Kitap) as 'Ödünç alýnan kitap sayýsý' from Islem group by Uye
-- Ýþlem tablodundaki üyelerin toplam kaç adet kitap ödünç aldýðýnýn sayýsýnýn uyeye göre gruplandýrýlarak bulunmasý

Select Uye, count(Kitap) as 'Ödünç alýnan kitap sayýsý' from Islem group by Uye order by uye desc
-- Ýþlem tablodundaki üyelerin toplam kaç adet kitap ödünç aldýðýnýn sayýsýnýn uyeye göre gruplandýrýlarak uye idsine göre azalan sýrada sýralanmasý

Select Uye, count(Kitap) as 'Ödünç alýnan kitap sayýsý' from Islem where Uye > 2 group by Uye 
-- Ýþlem tablodundaki uye idsi 2 den buyuk olan üyeleri toplam kaç adet kitap ödünç aldýðýnýn sayýsýnýn uyeye göre gruplandýrýlarak bulunmasý

select Uye_adi,  ISNULL(Uye_eposta,'E posta yok') from Uye 
-- Uye tablosundaki uye adi sütununu ve uye e posta sütunundaki NULL deðerlerin yerine E posta yok yazýlmasý

select Uye_adi,  coalesce(Uye_eposta,'E posta yok') from Uye 
-- Uye tablosundaki uye adi sütunu ve uye e posta sütunundaki NULL deðerlerin yerine E posta yok yazdýrma

select Uye_adi, isnull(convert(nvarchar,Uye_tel), 'Telefon numarasý yok') from Uye 
-- Uye tablosundaki uye adi sütunu ve uye e tel sütunundaki NULL deðerlerin yerine Telefon numarasý yok yazdýrma

select Kitap_adi , nullif(Basim_sayisi,50) from Kitap
-- Kitap tablosundaki kitap adi sütunu ve basim sayisi 50 olan deðerlerin yerine NULL yazdýrma

select * into Coksatanlar from Kitap where  Basim_sayisi > 2000
-- Kitaplar tablosundaki basým sayýsý 2000 den fazla olan kitaplarý Coksatanlar isminde yeni bir tablo oluþturarak oraya kaydetme
 
 select * from Coksatanlar 
 -- into ile oluþturulan yeni tabloya eklenen veriler 

 SELECT Kitap_Id, Kitap_adi
FROM Kitap
WHERE Yayinevi = (SELECT Yayinevi_Id FROM Yayinevi WHERE Yayinevi_adi like 'Ýþ Bankasý Yayýnlarý')
-- Yayýnevi Ýþ Bankasý Yayýnlarýndan olan kitaplarýn Idsini ve adý yazdýrma

UPDATE Kitap
SET Kitap_sayfasi = 100
WHERE Kategori = (SELECT Kategori_Id FROM Kategori WHERE Kategori_adi = 'Dünya Klasikleri')
-- Kategorisi Dünya Klasikleri olan kitaplarýn kitap sayfasý sütununu 100 olarak güncelleme

SELECT Kitap_adi, Kitap_sayfasi
FROM Kitap
WHERE Kategori = (SELECT Kategori_Id FROM Kategori WHERE Kategori_adi like 'Dünya Klasikleri');
-- Kategorisi Dünya Klasikleri olan kitaplarýn adýný ve sayfa sayýsýný getirme