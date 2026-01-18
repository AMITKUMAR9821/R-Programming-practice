# variables of R prog
x<-1:10
y<-1:10
var1<-2
var=4
# ploting a normal graph for practice
x.1<-1:22
y.1<-1:22
plot(x.1,y.1)
sum<-(12+3+4)

# cat function is use to combine multiple variables and print them in a sigle code
cat(x," ",y,"\n",sum)

# Data types in R prog

#logical, numeric, integer, character, complex, raw

#how to convert data types in R prog
# 1. converting into numeric
num1<-as.numeric(23+30i)
num2<-as.numeric(34L)

# 2. converting into integers

num.1<-as.integer(23.1)
num.2<-as.integer("amit9821")
num.3<-as.integer(9821)
num.4<-as.integer(20+11i)

# 3.converting into complex
num_1<-as.complex(3+1)
num_2<-as.complex(TRUE)
num_3<-as.complex(11)

#operators in R Prog
##1.arithmetic operators,
##2.relational = <, >, ==, <=, >=, !=
##3.logical = &, /, !, &&, //
##4.assignment = ,, <-, ->

#1.arithmetic 
a<-12.1
b<-6
print(a*b)
print(a%/%b)
print(a/b)
print(a^b)




