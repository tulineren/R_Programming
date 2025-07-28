sayilar <- c(10, 20, 30)
sayilar[2]  
# 2. satir, 1. sutunu almak
ogrenciler[2, 1]

x<- c(6, 8, 10, 12, 14,NA)
sum(x)
sum(x, na.rm = FALSE)
sum(x, na.rm = TRUE)

y<- c(6, 8, 10, 12, NA)
sum(y)
sum(y, na.rm = FALSE)
sum(y, na.rm = TRUE)

z <- c(T, T, F, F, F, T, T)
sum(z)
c(10, 20, 26, T) 
c(10, 20, 26, "apple") 
c(T, F, "apple", "banana") 

x <- c(10.4, 5.6, 3.1, 6.4, 21.7) 
x[5]
ind <- c(1,3,5)
x[ind]
ind <- c(F,T,F,T,F)
x[ind]

x <- c(10.4, 5.6, 3.1, 6.4, 21.7) 
ind <- (x > 7)
ind
x[ind]
x[!ind]

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
y <- c(4, 7, 8, 2, 35)
ind <- (x > y)
ind

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
y <- c(4)
ind <- (x > y)

x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
x[x>7] <- 100
x

x <- c(10.4, NA, 3.1, 6.4, NA)
is.na(x)
x[is.na(x)] <- mean(x, na.rm = TRUE)
x

x <- seq(1,10)
x

seq(1, 100, length.out = 5)  #1 ile 100 arasinda esit aralikli 5 sayi uretir.

#rep() fonksiyonu "repeat" yani bir degeri veya bir vektoru tekrar tekrar yazdirir.
x <- rep(3, 10)
x
y <- rep(c(F,T,F,T,T,T),3)
y
rep(5, times = 3)  #vektoru butun olarak 2 kez tekrarlar.
rep(c(1, 2, 3), each = 2)  #her bir elemani ayri ayri 2 kez tekrarlar.
rep(c("A", "B", "C"), times = c(2, 3, 1))  #farkli elemanlari farkli sayida tekrarlar.

x <- c(2,4,6,8,10)
y <- c("apple", "banana", "peach", "walnut", "apple")
sum(x)
sum(x < 6)
mean(x < 6)

mean(y=="apple")
x <- c(2,4,6,8,10)
y <- c("apple", "banana", "peach", "walnut", "apple")
mean(x > 6 & y=="apple")

