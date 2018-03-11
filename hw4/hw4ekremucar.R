#ATAMA

x <- 3
x = 3
x[4] <- 7.5
x 
#örnek yorum

x<-1:8
x

x<-15:11
x

y<-x+3
y


#VEKTÖRLER

#R iki farklý uzunlukta olan vektörle iþlem yaparken kýsa olan vektörü uzun olan
#vektör ile ayný boyuta eriþinceye kadar otomatik olarak tekrarlar

x<-1:8
y<-1:4
x
y
x+y  
# 1 2 3 4 5 6 7  8 +
# 1 2 3 4 1 2 3  4 =
# 2 4 6 8 6 8 10 12


#Uzunluklarý birbirinin katý deðilse

x<-1:8
y<-1:3
x
y
x+y  
#2  4  6  5  7  9  8 10
#Warning message:
#  In x + y : longer object length is not a multiple of shorter object length


#c for combine
x <- c(1, 2, 3)
y <- c(4, 5, 6)
z <- c(x, y)
z

length(z)

m<- c(1, 2, 3, 1, 2, 3, 3)
unique(m)

#count of items
table(m)

#reverse 
rev(m)

#repeat
x<-rep(1, 3)
x
y<-c(1, 2)
rep(y, 2)

#belli aralikta belli uzunlukta deðerler vektörü oluþturma iþi
x<-seq(2,3, length.out = 21)
x

#belli aralikta belli aralikla deðerler vektörü oluþturma iþi
x<-seq(2,3, by = 0.5)
x


#MANTIKSAL
x<-10:20
x
x<17
x<=17
x>14
x>=14
x==16
x!=16
(x<=16) & (x>=12)
(x<11) | (x>=18)

ind = which(x<17)
ind

ind2 = which(x == 16)
ind2

v1<-90:120
v2<-10:100
ind3=which(v1 %in% v2)
ind3

x<-1:20
y<-(x>=8)*x
y


#SÝPARÝÞ
siparisMiktari <- 30:50
birimMaliyet<-7 * siparisMiktari* (siparisMiktari<40)+6.5*siparisMiktari*(siparisMiktari>=40)
birimMaliyet

sabitMaliyet<-50*(siparisMiktari<=45)+15*(siparisMiktari>45)
sabitMaliyet

toplam<-sabitMaliyet + birimMaliyet 
toplam

siparisMiktari[toplam<=318]
toplam[toplam<=318]


#indeksleme ve vektör elemanlarýna eriþim
x<- seq(5, 8, by = 0.3)
x
length(x)

y1 <- x[3:7]
y1

y2 <- x [2*(1:5)] #indexleri 2 4 6 8 10 olanlar
y2


y3 <- x[-1] #ilk elemaný vektörden çýkar
y3

y4 <- x[-length(x)] #son elemaný çýkar
y4

y5 <- x[-seq(1, 11, 3)]
y5

y6 <- x[c(1, 3, 7)]
y6

y7 <- x[seq(1, 11, 3)]
y7


#MATRÝSLER
x<-1:5
y <- t(x) #transpose
y
t(y)

vec <- 1:12
vec
x <- matrix(vec, nrow=3, ncol=4)
x
t(x)

vec <- 1:12
x <- matrix(vec, nrow=3, ncol=4, byrow = T)
x

x <- matrix(c(1, 2, -1, 1, 2 ,1, 2, -2, -1), nrow = 3 , ncol = 3)
x

xinv <- solve(x)
xinv

x <- matrix(0, nrow = 3, ncol = 4)
diag(x) <- 1
x


x<-matrix(0, ncol = 5, nrow =4)
ncol(x)
nrow(x)
length(x)
dim(x)



#ARÝTMETÝK
x<-2 * (1:15)
x
y<-1:5
y


x+y
x/y
x*y
x-y
x^y
x%%3



y<-3:7
x%%y #x mod y

x%/%y # bölme iþleminin tam sayý kýsmý ?????


x<-c(3,1,6)
max(x)
min(x)
prod(x)
sum(x)
prod(x)



x<-1:10
y<-10:1
z<-c(3,2,1, 6,5,4,10,9,8,7)


pmax(x,y) #ayný sýrada bulunanlarýn en büyüðü


a<-pmin(x,y,z) #en küçüðü

#sort
veri <- c(1, 5, 7, 3, 2, 3)
sort(veri)
order(veri) #indeksleri dönüyor

veri[order(veri)]

order(veri, decreasing = T)


rank(veri) #hücrenin sýralamada kaçýncý sýrada olduðunu veriyor

veri <- c(1, 1, 1, 2, 3, 4)
rank(veri, ties.method = "first")
rank(veri, ties.method = "random")
rank(veri, ties.method = "random")
rank(veri, ties.method = "random")

rank(veri, ties.method = "max")
rank(veri, ties.method = "min")
rank(veri, ties.method = "average")

rank(-veri) #order by yerine - (eksi iþareti) kullanýlýyor


#matrix çarpým
x<-matrix(1:6, ncol = 2, nrow =3)
y<-matrix(1:4, ncol = 2, nrow =2)

x%*%y
y%*%x #hata
y%*%t(x)



x<-1:3
y<-3:1

x%*%y #r düzeltme yapýyor

t(x)%*%t(y) #hata
x%*%t(y)#doðrusu


x<-c(1,2,3,5)
cumsum(x)
cumprod(x)
diff(x)


factorial(3)
factorial(1:3)
abs(-4)

abs(c(-3:3))

sqrt(4)

sqrt(1:4)

log(100)
log10(100)
log2(100)
log(100, 5)
log(c(10,20,30))


exp(4.60)
exp(log(100))
exp(seq(-2,2, 0.4))


gamma(5)
gamma(5.5)

x<-c(-3, -3.5, 4, 4.2)
floor(x)
ceiling(x)
as.integer(x)



#ÝSTATÝSTÝK
dnorm(0.5)
dnorm(0, 2, 1)
dnorm(3, 3, 5)

pnorm(0)
pnorm(2)

qnorm(0.5)
qnorm(0.9772499)
qnorm(0.9772499, 3,1)

rnorm(20,2,1)


x<-rnorm(100000,5,2) #  ortalamasý 5 standart sapmasý 2 olan normal daðýlýmdan 100bin rasgele sayý
mean(x)
sd(x)
var(x)
median(x)
summary(x)
quantile(x) #dilimler hakkýnda

sort(x )[100000*0.25] #çeyreklik dilimleri elde etme ????

#FONKSÝYON VE DÖNGÜ TANIMLAMA
cevre_alan <- function(r)
{
  cf<-2*pi*r #çevre
  alan <- pi*r^2
  res<-c(cf, alan)
  names(res)<-c("çevre", "alan")
  res
}

cevre_alan(3)


image.default("")





