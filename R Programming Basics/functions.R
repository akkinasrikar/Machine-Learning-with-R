hello <- function(){
  print("Hello tensor!")
}
hello()

helloname <- function(name){
  print(paste("hello",name,"!"))
}

helloname("ram")

add.num <- function(a,b){
  return(a+b)
}

print(add.num(5,3))

formal <- function(name='Sam',title='Sir'){
  return(paste(title,' ',name))
}

print(formal("sai ram"))
print(formal("sai ram","akkina"))

x <- "global sai"
y <- "global ram"

fun <- function(x){
  print(x)
  print(y)
  y <- "global akkina"
  print(y)
}

print(x)
print(y)
fun(y)
print(y)