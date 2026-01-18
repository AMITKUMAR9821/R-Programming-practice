# R matrix
# syntax= variable_name=matrix(data,nrow,ncol,byrow,dimnames)

row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3","c4")
mat1<-matrix(c(1:16),nrow=4,ncol =4,byrow = TRUE,dimnames = list(row_name,col_name))
mat1

# Data frame should is an array.unlike an array the date we store in the column of data frame can various types
# A Data frame is a structure or a table in which a column contain values of one set of values from each column
# A Data frame is a special case of the list in which each component has equal lenth

# creating a data frame using data.frame function

emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("amit", "ankit", "ram", "shyam", "poorv"),
  emp_sal = c("10000", "15000", "12000", "11000", "15000"),
  sal_date = as.Date(c("2024-10-01", "2024-10-02", "2024-10-01", "2024-10-04","2024-10-05")), 
  #while creating a date column in data frame the date format should start from(YY-MM-DD) 
  stringsAsFactors = FALSE
)

# Printing the date frame

print(emp.data)

str(emp.data)

# Extracting column from data frame

f1<-data.frame(emp.data$emp_id,emp.data$emp_sal)
f1

# extracting rows from data frame

f2<-emp.data[2:4,]
f2

# extracting data separatly by specific row and column

f3<-emp.data[c(2,4,5),c(1,3)]
f3



# How to add column and rows in data frame

x<-list(6,"manish",16000,"2024-10-06")

emp.data<-rbind(emp.data,x) # Adding row in data frame

# Adding column in data frame
y<-c("Dwarka","Saket","Rohini","Tigri","Nawada","Uttam nagar")
emp.data<-cbind(emp.data,address=y)


emp.data

# removing rows in data frame

emp.data<-emp.data[-6,]

emp.data

# Removing column in data frame

emp.data$address<-NULL

print(summary(emp.data))






# Factor in R

dir<-c("north","east","west","south")
is.factor(dir)
factor(dir)


# How to get missing levels

factor(dir,levels=c("north","east","west","south"),labels = c("N","E","W","S"))


# How to generate factor labels

v1<-gl(4,5,labels = c("amit","kartik","ankit","ram"))
v1
