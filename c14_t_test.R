#Bagimsiz ??ki orneklem T-testi (Independent Samples T-Test)
kadin <- c(80, 85, 78, 90, 88, 75, 82)
erkek <- c(70, 72, 68, 65, 75, 78, 74)
t.test(kadin, erkek, var.equal = TRUE)

#Bagimli (Eslestirilmis) T-testi (Paired Samples T-Test)
once <- c(60, 65, 58, 70, 62, 66, 64)
sonra <- c(72, 78, 70, 82, 75, 80, 77)
t.test(once, sonra, paired = TRUE)
#paired = TRUE ??? Ayni kisilerin once/sonra olcumleri gibi veriler icin.
#paired = FALSE (varsayilan) ??? Bagimsiz gruplar karsilastirilir.

#Tek Orneklem T-testi (One Sample T-Test)
notlar <- c(68, 72, 70, 65, 75, 69, 74)
t.test(notlar, mu = 70) # Ortalama 70 mi diye test et
