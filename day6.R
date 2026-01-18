
# Function to know the current working directory 
getwd()

# Function to reset current working directory

setwd("D:\\R Prog") # Enter the path which we want to make current directory


# sorting vector by ascending and descending order

v1<-c(12,22,1,34,22,54,11,09,18,5,15)

sort(v1) # Sorting by ascending order

sort(v1, decreasing = TRUE) # sorting by descending order

order(v1)

rank(v1) # Indexing

v1[rank(v1)]



# Importing CSV file in R prog

ama_data<-read.csv("D:\\PYTHON\\Python_Amazon_Sales_Analysis-main\\Python_Amazon_Sales_Analysis-main\\Amazon Sale Report.csv")

print(ama_data)

View(ama_data)

print(is.data.frame(ama_data))

print(ncol(ama_data)) # No. of columns
print(nrow(ama_data)) # No. of rows



# Some functions related to the data frame

fix(ama_data)

str(ama_data) # Shows the structure of the data frame
summary(ama_data) # Provide summary statistic of the data frame
names(ama_data) # Gives all the variable names
nrow(ama_data)
ncol(ama_data)
length(ama_data)
dim(ama_data) # Shows the dimension of the data frame by row and column
colnames(ama_data) # Show the name of each column in the data frame
head(ama_data) # Shows the first 6 rows from the data frame
tail(ama_data) # Shows the last 6 rows from the data frame



ama_data[c(1:10),c(3:10)]


# Data Importing - csv
# $-dollar sign is for accessing and mentioning the variable name

ama_data$total_sales<-ama_data$Amount*ama_data$Qty
max_sales<-max(ama_data$total_sales)
print(max_sales)





# How to import excel files into R


any(grepl("xlsx",installed.packages()))

# Installing dplyr library

library("dplyr")
# Important dplyr verbs to remember
#select()    select column
#filter()    filter rows
#arrange()   re-order or arrange rows
#mutate()    create a new column
#summarize()   summarize values
#group_by()   allows for group operations in the "split-apply-combine"






sqrt(1254467876)
