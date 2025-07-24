#Veri Olusturma: R programlama dilinde veri olusturma, genellikle vektorler, listeler, 
#matrisler, veri cerceveleri (data frames) veya faktorler kullanilarak yapilir.

#Vektor Olusturma
sayi <- c(1,2,3,4)
isim <- c("Yasemin", "Alya", "Burak")
dogru_mu <- c(TRUE, FALSE, FALSE)

#Matris Olusturma
matris <- matrix(1:9, nrow = 3, ncol = 3)

#Liste Olusturma
liste <- list(ad = "Tulin", yas = 21, ogrenci = TRUE)
print(liste)

#Veri Cercevesi (Data Frame) Olusturma
veri <- data.frame(
  isim = c("Yasemin", "Alya", "Burak"),
  yas = c(21, 22, 23),
  ogrenci = c(TRUE, FALSE, TRUE)
)
print(veri)

#Faktor Olusturma (Kategorik veri icin)
cinsiyet <- factor(c("Kadin", "Erkek", "Erkek", "Kadin"))
print(cinsiyet)

#Rastgele Veri Uretme
# 10 tane rastgele sayi ??ret(tekrarsiz) (1 ile 100 aras??nda)
rastgele_sayilar <- sample(1:100, 10)
print(rastgele_sayilar)
sample(1:10, 5, replace = TRUE)  # Ayni sayi birden fazla gelebilir.
# Normal dagilimli rastgele veriler
veri_norm <- rnorm(10, mean = 50, sd = 10)
print(veri_norm)
runif(5, min = 0, max = 1) #Esit olasilikla belirli bir aralikta sayilar uretir.

#Ornek: Say??lar?? Gorsellestirme
hist(rnorm(1000, mean = 50, sd = 10), col = "lightblue", main = "Normal Dagilim")
#Bu kod, 1000 tane normal dagilmis sayi ??retir ve histogram cizer.

