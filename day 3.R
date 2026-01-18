#for loop in R prog

for(x in 1:9){
  print(paste("number:" ,x))
}


a<-c("mango","apple","banana")
for(i in a){
  print(i)
}

#repeat and break loop in R prog

a<-c("mango","apple","banana")
x<-3
repeat{
  print(a)
    x<-x+1
    if(x>11){
      break
  }
}


#while loop in R prog

x<-3
while(x<8){
  print(a)
  x<-x+1
}


#how to take input from user

name<-readline(prompt = "my name is")
age<-readline(prompt = "my age is")
print(paste("my name is",name,"my age is",age))


#R function 

newfunction<-function(y=3,x=5){
  v<-y*x
  print(v)
  
}
newfunction()



newfunction<-function(y=3,x=5){
  v<-y*x
  print(v)
  
}
newfunction(90,10)#if we put new values it will overwrite the old values and update them



# built-in function of R prog
f<-8
print(abs(f)) # for absolute value

print(sqrt(45)) # for square root

print(floor(6.3)) 

print(ceiling(6.3))

#grep function

t<-c("abcd","absd","tslk","rell")
b<-'^ab'
print(grep(b,t))


t<-c("abcd","absd","rrsdlk","wersdll")
b<-'sd'
print(grep(b,t))

#statical function of R prog

x.1<-c(0:14,45) # for sum of all vector
x.su<-sum(x.1)
print(x.su)


x.1<-c(0:14,45) # for minimum value
x.min<-min(x.1)
print(x.min)


xy<-c(0:54,45) # for maximum value
x.max<-max(xy)
print(x.max)



