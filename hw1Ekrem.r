library(tidyverse)
library(readr) #Reading xlsx files 

library(ggplot2) # visualization 
library(scales) # visualization 
library(dplyr) # data manipulation
library(knitr)

setwd("Q:/Users/E_UCAR/Downloads")
getwd()

UNdata_Export_20171026_130851047 <- read_csv("UNdata_Export_20171026_130851047.csv")

View(UNdata_Export_20171026_130851047)

dim(UNdata_Export_20171026_130851047)

glimpse(UNdata_Export_20171026_130851047)

summary(UNdata_Export_20171026_130851047)

p1 <- ggplot(data = UNdata_Export_20171026_130851047, aes(x=Year, y=Rate))
p1 + geom_bar(stat="identity")

p3 <- ggplot(data = UNdata_Export_20171026_130851047, aes(x=Year, y=Count))
p3 + geom_point(stat = "identity")


filter1<- UNdata_Export_20171026_130851047 %>%
  group_by(`Country or Area`) %>%
  filter(`Country or Area`=="Turkey") %>%  ggplot(aes(x=Year, y = Count)) + geom_bar(stat = "identity")
filter1


filter2<- UNdata_Export_20171026_130851047 %>%
  group_by(`Country or Area`) %>%
  filter(`Country or Area`=="Luxembourg") %>%  ggplot(aes(x=Year, y = Count)) + geom_bar(stat = "identity")
filter2


filter3<- UNdata_Export_20171026_130851047 %>%
  group_by(`Country or Area`) %>%
  filter(`Country or Area`=="India") %>%  ggplot(aes(x=Year, y = Rate)) + geom_bar(stat = "identity")
filter3


filter4<- UNdata_Export_20171026_130851047 %>%
  group_by(`Country or Area`) %>%
  filter(`Country or Area`=="Brazil") %>%  ggplot(aes(x=Year, y = Count)) + geom_bar(stat = "identity")
filter4
