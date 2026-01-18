setwd("C:\\Users\\AMIT\\Downloads\\archive") #set current working directory

list.files() 
df_ntpc<-read.csv("NTPC.csv")
head(df_ntpc)
df_ntpc$Date<-as.Date(df_ntpc$Date)
str(df_ntpc)

library(ggplot2)
library(gghighlight)
library(dplyr)

ggplot(df_ntpc,aes(Date,Close,group = Symbol))+
  geom_path()+
  scale_x_date(date_labels = "%Y",date_breaks = "2 years")




df_gc<-read.csv("ONGC.csv" )

df_both<-rbind(df_ntpc,df_gc) # adding both datasets



ggplot(df_both, aes(x = Date, y = Close, group = Symbol, color = Symbol)) +
  geom_path() +
  scale_x_date(date_labels = "%Y", date_breaks = "2 years") +
  theme(legend.position = "bottom") +
  labs(color = "", x = "") +
  gghighlight(Symbol == "ONGC")


#date_breaks- gaping between years
#date_labels- control the format of date labels on axes in plots





