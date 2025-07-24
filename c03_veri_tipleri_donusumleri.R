#Veri Tipleri
#character(metin/veri dizisi)
metin <- "Merhaba"
#logical(mantiksal deger)
x <- TRUE
#complex
y <- 4+3i
z <- 5

#Veri Tipi Kontrolu
class(z)         # "numeric", "integer", vs.
typeof(z)        # Alt turunu verir
is.numeric(y)    # TRUE / FALSE doner
is.character(y)
is.integer(y)

#Veri Tipi Donusumleri
as.numeric("5.3")
as.integer(7.8)
as.character(390)
as.logical(5)
as.complex(1)
#Dikkat: Donusturme basarisiz olursa NA (eksik deger) donebilir.
as.numeric("abc")  # NA ve uyari verir
