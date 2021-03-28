print(sample(x=1:10,1))

v <- 1:5
addrand <- function(x){
  ran <- sample(1:100,1)
  return(x+ran)
  
}
print(addrand(10))

r <- lapply(v,addrand)
print(r)

r <- sapply(v,addrand)
print(r)

doublen <- function(x){
  return(x*2)
}
r <- sapply(v,doublen)
print(r)

#anonymous functions

v <- 1:5
r <- sapply(v,function(num){num**2})
print(r)

add_choice <- function(num,choice){
  return(num+choice)
}

print(sapply(v,add_choice,choice=100))

