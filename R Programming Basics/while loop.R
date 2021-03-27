v <- 10
print("value=",v)
cat("value=",v)
print("-----")
print(paste("value=",v))
print(paste0("value=",v))

x <- 0
while(x<10){
  cat("x =",x," ")
  x <- x+1
}

print("loop")
x <- 0
while(x<10){
  cat("x =",x," ")
  x <- x+1
  if(x==5){
    break
  }
}
