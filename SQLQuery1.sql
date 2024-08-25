use HastaneDB

-- 201 nolu polikliniktek �al��an hasta ve hem�ireleri g�ster
select p.Poliklinik_Adi ,d.Adi AS 'Doktor Ad�',d.Soyadi AS 
'Doktor Soyad�',h.Adi AS 'Hem�ire Ad�',h.Soyadi AS 'Hem�ire Soyad�'from Poliklinikler p 
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

-- Erg�� ailesini getiren sorgu
select h.Adi,h.Soyadi,h.Sigorta_Turu,r.Randevu_Durumu,Randevu_Tarihi from hastalar h
join Randevular r on h.ID = r.Hasta_ID
where h.Soyadi like '%Erg��%'

select * from Personel
select * from Doktorlar

-- Orhan ��nar adl� doktorun �nvan�n� getir
select d.Adi,d.Soyadi,p.Unvan from Doktorlar d join Personel p on d.Personel_ID = p.ID
where d.Adi = 'Orhan' and d.Soyadi = '��nar'

select * from Poliklinikler

select * from Hemsireler
select * from Bolumler

select h.Adi,h.Soyadi,b.Bolum_Adi,b.Bulundugu_Blok 
from Hemsireler h
join Bolumler b on h.Bolum_ID = b.ID

--orhan ��nar adl� doktorun verdi�i randevu ve tahlil sonu�lar�n�n durumunu g�sterme

select  d.Adi as 'Doktor Ad�', d.Soyadi as 'Doktor Soyad�',
r.Randevu_Durumu,t.Tahlil_Adi,t.Tahlil_Sonuc from Doktorlar d 
join Randevular r on d.ID = r.Doktor_ID
join Tahliller t on d.ID = t.Doktor_ID
where d.Adi = 'Orhan' and d.Soyadi = '��nar'
