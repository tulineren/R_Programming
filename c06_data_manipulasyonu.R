#Data Manipulasyonu: Ham (islenmemis) veriyi alip, onu analiz edilebilir veya anlamli bir forma 
#getirmek icin yapilan her turlu islemdir.
#Yani, veriyle oynama, donusturme, filtreleme, temizleme, duzenleme islemlerinin tamamina denir.
install.packages("dplyr")
library(dplyr)
#Ornek Veri Seti
ogrenciler <- data.frame(
  isim = c("Ali", "Ayaz", "Cemil", "Sena", "Derin"),
  yas = c(24, 23, 33, 25, 21),
  not1 = c(56, 43, 66, 56, 78),
  not2 = c(90, 45, 43, 57, 21),
  sinif = c("A", "B", "A", "A", "B")
)
#Sutun secme
ogrenciler %>% 
  select(not1, not2)
#Satir filtreleme
ogrenciler %>%
  filter(sinif == "A")
#Siralama(buyukten kucuge s??ralar)
ogrenciler %>%
  arrange(yas)
#Yeni Sutun Olusturma(not1 ve not2 ortalamasini hesaplayip yeni sutun olusturalim.
ogrenciler %>%
  mutate(ortalama <- (not1 + not2) / 2)
#Gruplama ??? group_by() + Ozetleme ??? summarise()(Her siniftaki ortalama not1 degerini hesaplayalim.)
ogrenciler %>%
  group_by(sinif) %>%
  summarise(ortalama_not1 = mean(not1))
