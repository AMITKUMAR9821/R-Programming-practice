#Data structure in R proggramming
#1.vector
#2.Matrix
#3.Array
#4.list
#5.Data frame


#Vector
##  how to create vector
vec.1<-c(1,2,3,4,5)

vec.2<--3:10

vec.3<-seq(2,12,by=2)  # seq function is for making sequence in vector

## Types of numeric vector
# 1. Numeric vector

num.1<-c(11,21,11,3,12,12)
class(num.1)

#2.integer vector

int.1<-c(1L,2L,12L,11L)
class(int.1)

#3.character vector

char.1<-c(12,3,12,33,12,11)
char.1<-as.character(char.1) # as.character used for converting numeric data to character

class(char.1)

#How to access elements of vector

#(a) By indexing
print(char.1)

char.1[3] #[] we use square brackets in indexing

char.1[c(1,2,3,1)]

#Vector operations 

##how to combine vectors

a3<-c(vec.3,vec.2)

class(a3)

#How to give names to vectors

z<-c("ram","sohan","mohan")

names(z)=c("a1","a2","a3") 

print(z)



list.1<-list(c("ram","sohan","mohan"),c(1,2,3),c(54,32,51))

names(list.1)<-c("students","roll no","marks")

# Accessing in list

print(list.1[3])

print(list.1["students"])

print(list.1$marks)



# R arrays

#array_name<-array(data,dim=c())

v1<-c(1,3,5,2,5)
v2<-c(21,11,45,21,10,11,2,3,33)

arr1<-array(c(v1,v2),dim = c(3,4,3))

arr1

col_name<-c("c1","c2","c3")
row_name<-c("r1","r2","r3")
mat_name<-c("mat1","mat2","mat3")


arr1<-array(c(v1,v2),dim=c(3,3,3),dimnames = list(row_name,col_name,mat_name))

arr1

