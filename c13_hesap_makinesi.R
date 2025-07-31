hesaplama <- function(a, b){
  a <- as.numeric(readline(prompt= "??lk sayiyi giriniz: "))
  b <- as.numeric(readline(prompt= "??kinci sayiyi giriniz: "))
  secim <- readline(prompt= "Lutfen bir secim yapin:(topla/cikar/carp/bol)")
  if(secim == "topla"){
    return(a+b)
  }
  else if(secim == "cikar"){
    return(a-b)
  }
  else if(secim == "carp"){
    return(a*b)
  }
  else if(secim == "bol"){
    return(a/b)
  }
  else{
    print("Gecerli bir secim yapin")
  }
}
hesaplama(a,b)