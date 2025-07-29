# Ortak sutun ismine gore birlestirme (INNER JOIN)
ogrenciler <- data.frame(
  id = c(1, 2, 3),
  isim = c("Ayse", "Ali", "Mehmet")
)
notlar <- data.frame(
  id = c(1, 2, 4),
  not = c(90, 85, 70)
)
merge(ogrenciler, notlar, by = "id")
#Birden fazla tabloyla (veri cercevesiyle) calisirken, merge() fonksiyonu 
#iki tabloyu birlestirmek (join etmek) icin kullanilir.
merge(ogrenciler, notlar, by = "id", all.x = TRUE) #ogrenciler tablosu baz alinarak, karsilik gelen not yoksa NA yazildi.

notlar2 <- data.frame( #Farkli sutun adlariyla birlestirme
  ogr_id = c(1,2,4),
  not = c(90, 85, 70)
)
merge(ogrenciler, notlar2 , by.x = "id", by.y = "ogr_id")

#cbind() fonksiyonu: ??ki veya daha fazla vektoru, matrisleri veya veri cercevelerini sutun bazinda birlestirir.
#Eleman saylari ayni olmali (ayni uzunlukta olmalilar).
isimler <- c("Asiye", "Sureyya", "Fahriye")
yaslar <- c(21, 22, 23)
cbind(isimler, yaslar)

adlar <- data.frame(ad = c("Ayse", "Ali", "Mehmet"))
notlar <- data.frame(not = c(80, 87, 46))
cbind(adlar, notlar)

#rbind() fonksiyonu: ??ki veya daha fazla vektoru, veri cercevesini ya da matrisi satir bazinda alt alta birlestirir.
ogr1 <- c("Aren", 65)
ogr2 <- c("Fulya", 88)
rbind(ogr1, ogr2)

df1 <- data.frame(isim = c("Ayse", "Ali"), yas = c(21, 22))
df2 <- data.frame(isim = c("Mehmet", "Zeynep"), yas = c(23, 24))
rbind(df1, df2)

sinif1 <- data.frame(isim = c("Ayse", "Ali"), not = c(85, 90))
sinif2 <- data.frame(isim = c("Mehmet", "Zeynep"), not = c(78, 88))
rbind(sinif1, sinif2)

install.packages("dplyr")
library(dplyr)
df1 <- data.frame(ad = c("Ayse", "Ali"), yas = c(21, 22))
df2 <- data.frame(ad = c("Mehmet"), not = c(90))
bind_rows(df1, df2) #Birden fazla data frame'i satir bazinda birlestirir. Sutun isimlerinin sirasi veya eksikligi sorun cikarmaz.



