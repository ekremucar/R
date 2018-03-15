library(ggplot2) #must load the ggplot package first
data(diamonds) #loads the diamonds data set since it comes with the ggplot package
summary(diamonds)
#1
str(diamonds)
?diamonds

#2
qplot(x = price, data = diamonds)


#soru 4
nrow(subset(diamonds, price<500))
#1729

nrow(subset(diamonds, price<250))
nrow(subset(diamonds, price>=15000))


#soru 5
qplot(x = price, data = diamonds, binwidth=1000, color='black', fill='white')
ggsave('priceHistogram.png')


#6
qplot(x = price, data = diamonds, binwidth=1000, color='black', fill='white') + 
  facet_grid(~cut)

#7
by(diamonds,diamonds$cut ,summary)


