use HastaneDB

-- 201 nolu polikliniktek çalýþan hasta ve hemþireleri göster
select p.Poliklinik_Adi ,d.Adi AS 'Doktor Adý',d.Soyadi AS 
'Doktor Soyadý',h.Adi AS 'Hemþire Adý',h.Soyadi AS 'Hemþire Soyadý'from Poliklinikler p 
join Hemsireler h on p.ID = h.Poliklinik_ID
join Doktorlar d on p.ID = d.Poliklinik_ID

select ID from Doktorlar
where Adi = 'Fatih' and Soyadi = 'Eraslan'

select * from Hastalar
select * from Tahliller

select h.Adi , h.Soyadi , Tahlil_Sonuc from Hastalar h join Tahliller t on h.ID = t.Hasta_ID
where h.Adi = 'Ali' and h.Soyadi = 'Demir'

select * from hastalar
select * from Randevular

-- Ergüç ailesini getiren sorgu
select h.Adi,h.Soyadi,h.Sigorta_Turu,r.Randevu_Durumu,Randevu_Tarihi from hastalar h
join Randevular r on h.ID = r.Hasta_ID
where h.Soyadi like '%Ergüç%'

select * from Personel
select * from Doktorlar

-- Orhan çýnar adlý doktorun ünvanýný getir
select d.Adi,d.Soyadi,p.Unvan from Doktorlar d join Personel p on d.Personel_ID = p.ID
where d.Adi = 'Orhan' and d.Soyadi = 'Çýnar'

select * from Poliklinikler

select * from Hemsireler
select * from Bolumler

select h.Adi,h.Soyadi,b.Bolum_Adi,b.Bulundugu_Blok 
from Hemsireler h
join Bolumler b on h.Bolum_ID = b.ID

--orhan çýnar adlý doktorun verdiði randevu ve tahlil sonuçlarýnýn durumunu gösterme

select  d.Adi as 'Doktor Adý', d.Soyadi as 'Doktor Soyadý',
r.Randevu_Durumu,t.Tahlil_Adi,t.Tahlil_Sonuc from Doktorlar d 
join Randevular r on d.ID = r.Doktor_ID
join Tahliller t on d.ID = t.Doktor_ID
where d.Adi = 'Orhan' and d.Soyadi = 'Çýnar'
