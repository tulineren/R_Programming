# Uygulama Konusu: Kodlama Kampinda Hayatta Kal (RPG Mini Oyun)
cat("Kodlama Kampi'na Hos Geldin!\n")
isim <- readline(prompt = "Yaratici ismini yaz: ")

enerji <- 100
motivasyon <- 100
kod_kalitesi <- 0

olaylar <- c("Hata mesaji aldin(bug)", "Mentor seni tebrik etti", "Gece boyunca kod yazdin", "StackOverflow???da cozum buldun")

gunluk_olaylar <- sample(olaylar, 2)

for (olay in gunluk_olaylar) {
  cat("\nKarsina cikan olay:", olay, "\n")
  secim <- readline(prompt = "Ne yapmak istersin? ")
  
  if (olay == "Hata mesaji aldin(bug)") {
    if (secim == "arastir") {
      enerji <- enerji - 10
      kod_kalitesi <- kod_kalitesi + 10
    } else if (secim == "panikle") {
      motivasyon <- motivasyon - 30
    }
    
  } else if (olay == "Mentor seni tebrik etti") {
    if (secim == "kutla") {
      motivasyon <- motivasyon + 20
    }
    
  } else if (olay == "Gece boyunca kod yazdin") {
    if (secim == "devam et") {
      enerji <- enerji - 20
      kod_kalitesi <- kod_kalitesi + 15
    } else if (secim == "uyuyorum") {
      enerji <- enerji + 20
      kod_kalitesi <- kod_kalitesi - 5
    }
    
  } else if (olay == "StackOverflow???da cozum buldun") {
    if (secim == "uygula") {
      kod_kalitesi <- kod_kalitesi + 20
      enerji <- enerji - 10
    }
  }
  if (enerji < 0 || motivasyon < 0) {
    cat("Kampi terk ettin!\n")
    break
  }
}

if (enerji >= 0 && motivasyon >= 0) {
  cat("\nKampi basariyla tamamladin, tebrikler!\n")
}

toplam_puan <- kod_kalitesi + (enerji * 0.2) + (motivasyon * 0.3)
cat("\nToplam puan??n:", round(toplam_puan, 2), "\n")

