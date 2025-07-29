veri <- data.frame(
  isim = c("Buse", "Alara", "Merve"),
  yas = c(23, 25, 22),
  sehir = c("??stanbul", "Ankara", "??zmir")
)
write.csv(veri, "veri.csv", row.names = FALSE) #CSV dosyasi olarak disa aktarma
write.table(veri, "veri.txt", sep = "\t", row.names = FALSE, quote = FALSE) #TXT dosyasi olarak(sekmeyle ayrilmis)

install.packages("writexl")
library(writexl)
write_xlsx(veri, "veri.xlsx") #Excel dosyasi olarak 

install.packages("jsonlite")
library(jsonlite)
write_json(veri, "veri.json", pretty = TRUE)

save(veri, file = "veri.RData") #Bu format, veri yapilari ve objeleri R icinde tekrar kullanmak icin idealdir.
load("veri.RData") #Daha sonra su sekilde geri yuklenebilir:
