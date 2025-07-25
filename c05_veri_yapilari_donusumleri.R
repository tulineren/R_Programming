#Yapilar Arasi Donusumler
#List > Data Frame
my_list <- list(
  name = c("Tulin", "Ayse", "Elif"),
  age = c(20, 21, 22),
  score = c(90, 85, 88)
)
df <- as.data.frame(my_list)
print(df)


#Data Frame > List
my_list <- as.list(df)
print(my_list)

#Matrix > Data Frame
my_matrix <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
df_from_matrix <- as.data.frame(my_matrix)
print(df_from_matrix)


#Data Frame > Matrix
my_df <- data.frame(
  isim = c("Ece", "Mehmet", "Aybuke"),
  yas = c(20, 21, 22),
  puan = c(85, 90, 95)
)
matris <- as.matrix(my_df)
print(matris)

#List > Matrix
liste <- list(
  liste1 = c(23,561,690),
  liste2 = c(88,345,235)
)
matrix <- do.call(cbind, liste) #do.call(cbind, ...) fonksiyonu liste icindeki vektorleri sutunlar halinde birlestirir.
print(matrix)

#Matrix > List
my_matrix <- matrix(1:6, nrow = 2, byrow = TRUE)
list_from_matrix <- as.list(as.data.frame(my_matrix))
print(list_from_matrix)

