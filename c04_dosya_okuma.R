install.packages("readxl")
library(readxl)
cow <- read_excel("C:\\Users\\teren\\Documents\\Kitap1.xlsx")

#1.CSV (Virgul ile Ayrilmis Degerler)
#Fonksiyon: read.csv() veya read.csv2()
#Kutuphane: taban R
data <- read.csv("veri.csv", header = TRUE, sep = ",")
data <- read.csv2("veri.csv", header = TRUE)
#2.TXT (Metin Dosyasi)
#Fonksiyon: read.table()
#Kutuphane: taban R
data <- read.table("veri.txt", header = TRUE, sep = "\t")  # sekmeli dosya
#3.Excel Dosyalari (.xls, .xlsx)
#Fonksiyon: read_excel()
#Kutuphane: readxl paketi
install.packages("readxl")
library(readxl)
data <- read_excel("veri.xlsx", sheet = 1)
#4.RDS Dosyasi (R ic formati)
#Fonksiyon: readRDS() / saveRDS()
#Kutuphane: taban R
saveRDS(data, "veri.rds")     # Kaydetme
veri <- readRDS("veri.rds")   # Okuma
#5.SPSS Dosyasi (.sav)
#Fonksiyon: read_sav()
#Kutuphane: haven paketi
install.packages("haven")
library(haven)
data <- read_sav("veri.sav")
#6.JSON Dosyasi
#Fonksiyon: fromJSON()
#Kutuphane: jsonlite
install.packages("jsonlite")
library(jsonlite)
data <- fromJSON("veri.json")
#7.XML Dosyasi
#Fonksiyon: xmlParse()
#Kutuphane: XML
install.packages("XML")
library(XML)
xml_data <- xmlParse("veri.xml")
#8.Veritabani Dosyalari (SQLite, MySQL, PostgreSQL vs.)
#Kutuphane: DBI, RSQLite, RMySQL vb.
#Kullanim Ornegi (SQLite):
install.packages("RSQLite")
library(RSQLite)
con <- dbConnect(RSQLite::SQLite(), "veritabani.sqlite")
data <- dbGetQuery(con, "SELECT * FROM tablo_adi")
dbDisconnect(con)

#setwd() fonksiyonu, R'de cal??sma dizinini (working directory) degistirmek icin kullanilir.
#Yani R'nin "nerede calisacagini" belirtirsin.
setwd("C:\\Users\\teren\\Documents")
#Bu komuttan sonra R artik bu klasoru varsayilan dosya konumu olarak gorur.
#read.csv(), read_excel() gibi dosya okuma fonksiyonlarinda tam yol yazmana gerek kalmaz.

getwd() # "get working directory". Su anda calismakta oldugun dizini(klasoru) gosterir.

