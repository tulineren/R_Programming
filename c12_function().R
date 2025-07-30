notlar <- c(67, 54, 89, 45, 90, 93, 33, 65)

not_analiz <- function(notlar, gecme_notu = 50) {
  ortalama <- mean(notlar)
  en_yuksek <- max(notlar)
  en_dusuk <- min(notlar)
  gecen_sayisi <- sum(notlar >= gecme_notu)
  kalan_sayisi <- sum(notlar < gecme_notu)
  
  cat("Not Analizi\n")
  cat("Ortalama Not:", ortalama, "\n")
  cat("En Yuksek Not:", en_yuksek, "\n")
  cat("En Dusuk Not:", en_dusuk, "\n")
  cat("Gecen Ogrenci Sayisi:", gecen_sayisi, "\n")
  cat("Kalan Ogrenci Sayisi:", kalan_sayisi, "\n")
  
  # Histogram cizimi
  hist(notlar,
       main = "Not Dagilimi Histogrami",
       xlab = "Notlar",
       ylab = "Ogrenci Sayisi",
       col = "skyblue",
       border = "yellow")
}
not_analiz(notlar)

