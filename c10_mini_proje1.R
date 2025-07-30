#Ogrenci Not Analizi Sistemi (Seviye: Basit-Orta)
df <- data.frame(
  isim = c("Beril", "Caner", "Cansu", "Banu", "Deniz", "Mert"),
  sehir = c("??stanbul", "Manisa", "Mugla", "??stanbul", "??zmir", "Ankara"),
  not1 = c(55, 34, 89, 45, 97, 100),
  not2 = c(35, 78, 52, 70, 44, 65)
)
library(dplyr)
df <- df %>% 
  mutate(ortalama = (not1 + not2)/2) 
df <- df %>% 
  mutate(durum = ifelse(ortalama > 60, "Gecti", "Kaldi"))
df %>% 
  filter(durum == "Gecti")
write.csv(df, "ogrenci_not_analizi.csv", row.names = FALSE)
