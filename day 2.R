# if-else statement in R prog
y<-1:20
if(9 %in% y)
  {print("9 is present in y")
}else{
  print("9 is not present in y")
}
## %in% this is use for finding element in R prog


#multiple if else condition in R prog
marks<-45
if(marks>75){
  print("execellent boy")
}else if(marks>65){
    print("good boy")
}else if(marks>50){
    print("average boy")
}else if (marks>35){
    print("below average")
}else{
    print("fail")
  }
    
  
