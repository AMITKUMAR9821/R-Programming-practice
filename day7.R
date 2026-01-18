# Pie chart

#syntax = pie(x,labels,radius,main,col,clockwise)

#x= vector
#labels= labels of pie chart
#radius= radius of pie chart
#main = title of pie chart
#col = color of pie chart
#clockwise= direction of pie chart



x1<-c(12,18,30,35,5)
color<-c("red","green","black","purple","blue")
pie(x=x1,labels = c("we","you","yours","our","i"),main = "pie chart practise",col = color)


#slice percentage & Legends in pie chart

# syntax = legend(x,y=null,legend,fill,col,bg)

# x,y = are the coordinates to be used to position the legend
#legend = is the text of legend
#fill = is the color to use for filling the boxes besides the legend text
#col = defines the color of lines and points besides the legend text
#bg = is the background color for the legend box


legend("left",legend=c("we","you","yours","our","i"),fill=color)
  
# creating a 3d pie chart 

install.packages("plotrix") #First intall plotrix library
library("plotrix")

x1<-c(30,20,50)
labels2<-c("bronze","silver","fatalkill")
pie3D(x1,labels=labels2,explode=0.2,main="medals")
       



# Creating bar chart

#syntax= barplot(h,x,y,main,name.arg,col)

#H - a vector or matrix which contain numeric values used in the bar plot
#xlab - a label for the x-axis
#ylab -- a label for the y-axis
#main - title of the bar chart
#name.org - a vector of names that appear under each bar
#col - it is used to give color to the bars in the graph

h1<-c(12,10,20,22,9)
m1<-c("jan","feb","mar","apr","may")
barplot(h1,names.arg =m1,xlab = "months",ylab = "revenue",main = "revenue by month",col="blue",border = "black" )



# Group bar chart & stack bar chart

region<-c("west","east","south")
values1<-matrix(c(12,33,12,22,43,14,10,11,22,87,56,76,65,13,90,98,85),nrow=3,byrow=TRUE)

barplot(values1,names.arg = m1,xlab = "months",ylab = "revenue",main = "Revenue by months",col = c("red","blue","green"))

legend("bottomright",region,cex = 0.4,fill=c("red","blue","green"))




# ............Histogram..............

#for creating a histogram R provides hist() function

#syntax- hist(v,main,xlab,ylab,xlim,ylim,breaks,col,border)


# v- it is a vector that contain numeric values1
# main- it indicates the title of the chart
# col- it id used to set the color of the chartr
# border- it is used to set the border of bar
# xlab- it is used to describe the x-axis
# ylab- it is used to describe the y-axis
# xlim- it is used to specify the range of values on the x-axis
# ylim- it is used to specify the range of values on y-axis
# breaks- it is used to mention the width of each bar


hist(values1,main = "Histogram",xlab = "numbers",ylab = "frequency",xlim = c(0,100),ylim = c(0,5),col = c("red","blue","green"),breaks = 4)




# ................Line & point chart...........

#line graph, there are points connecting the data to show the continous
#changes.The lines in line graph can move up and down based on the data

#syntax- plot(v,type,col,xlab,ylab)

# type- this parameter takes the values -- i- to draw only lines
#                                         p- to draw only points
#                                          o- to draw both lines and points




i1<-c(2,5,10,8,11,20,17)
plot(i1,type = "o",main="line chart",xlab = "number",ylab = "data",col="blue")

# Multiple line using lines() function

i2<-c(5,6,1,6,2,10,15,3)
i3<-c(9,11,2,8,4,5,11,19)
lines(i2,type="o",col="blue")
lines(i3,type="o",col="black")



# ...............Scatter plot...............

#the scatter plots are used to compare variable
#a comparison between variables is required when we need to define how
#much one variable is affected by another variable

# There are following function for plottiing scatter plot
library(dplyr)
View(mtcars)
dim(mtcars)
names(mtcars)


data1<-mtcars[c("wt","mpg")]


plot(x=data1$wt,y=data1$mpg,xlab = "weight",ylab = "milage",xlim = c(2.5,5),ylim = c(15,30),main = "weight vs milage",col=c("blue","red"))


# Scatterplot using ggplot2

install.packages("colorspace")

library(ggplot2)
ggplot(mtcars,aes(x=drat,y=mpg))+geom_point()



