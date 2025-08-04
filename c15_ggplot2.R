#"ggplot2" paketi veri gorsellestirme icin en guclu ve esnek araclardan biridir.
install.packages("ggplot2")
library(ggplot2)
veri <- data.frame(
  kategori = c("A", "B", "C", "D"),
  deger = c(10, 23, 15, 8)
)
ggplot(data = veri, aes(x = kategori, y = deger))+
  geom_col()



ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) + #mtcars: Bu hazir veri seti kullaniliyor (R icinde var).
  geom_point(size = 3) + #size = 3: Noktalarin boyutu 3 birim olur.
  labs(
    title = "Agirlik ve Yakit Tuketimi Iliskisi",
    x = "Agirlik (wt)",
    y = "Mil Basina Galon (mpg)",
    color = "Silindir"
  ) +
  theme_minimal() #Grafigin arka plan temasini sade hale getirir.



library(ggplot2)
ogrenciler <- data.frame(
  isim = c("Ali", "Zeynep", "Ahmet", "Elif", "Mehmet", "Ayse"),
  yas = c(18, 19, 18, 20, 21, 19),
  puan = c(75, 88, 60, 90, 55, 85),
  cinsiyet = c("Erkek", "Kadin", "Erkek", "Kadin", "Erkek", "Kadin")
)
grafik <- ggplot(data = ogrenciler, aes(x = yas, y = puan, color = factor(cinsiyet)))+
  geom_point(size = 4)+
  labs(
    title = "Ogrencilerin Yasa Gore Basari Durumu",
    x = "Ogrencinin Yasi",
    y = "Basari Puani",
    color = "Cinsiyet"
  )+
  theme_light()
ggsave("ogrenciler.png", plot = grafik, width = 6, height = 4, dpi = 300) 
#ggsave() fonksiyonu: Cizdigin grafigi bilgisayarina .png, .pdf, .jpg gibi formatlarda kaydeder.



library(ggplot2)
ogrenciler <- data.frame(
  isim = c("Ali", "Zeynep", "Ahmet", "Elif", "Mehmet", "Ayse"),
  yas = c(18, 19, 18, 20, 21, 19),
  puan = c(75, 88, 60, 90, 55, 85),
  cinsiyet = c("Erkek", "Kadin", "Erkek", "Kadin", "Erkek", "Kadin")
)
ggplot(data = ogrenciler, aes(x = cinsiyet, y = puan, fill = cinsiyet)) +
  geom_boxplot() +
  labs(title = "Cinsiyete Gore Ogrenci Basari Dagilimi",
       x = "Cinsiyet",
       y = "Puan",
       fill = "Cinsiyet") +
  scale_fill_manual(values = c("Erkek" = "skyblue", "Kadin" = "salmon")) +
  theme_minimal() #scale_fill_manual(): Grafikteki dolgu renklerini senin belirlemeni saglar.



ogrenciler <- data.frame(
  isim = c("Ali", "Zeynep", "Ahmet", "Elif", "Mehmet", "Ayse"),
  yas = c(18, 19, 18, 20, 21, 19),
  puan = c(75, 88, 60, 90, 55, 85),
  cinsiyet = c("Erkek", "Kadin", "Erkek", "Kadin", "Erkek", "Kadin")
)
library(ggplot2)
ggplot(ogrenciler, aes(x = yas, y = puan)) +
  geom_point(size = 4) +
  facet_wrap(~ cinsiyet) + #facet_wrap(): Bir degiskene gore veriyi gruplara ayirarak her grup icin ayri bir kucuk grafik cizer.
  labs(
    title = "Cinsiyete Gore Basari Dagilimi",
    x = "Yas",
    y = "Puan"
  ) +
  theme_minimal()
#facet_wrap(~ cinsiyet, nrow = 1)  # yatayda yan yana
#facet_wrap(~ cinsiyet, ncol = 1)  # dikeyde alt alta





