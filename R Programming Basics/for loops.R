v <- c(1:10)
#print(v)

for(i in v){
  print(i)
}

print("--------------")
for(i in 5:length(v)){
  print(v[i])
}

print("--------------")

l <- list(11,12,13,14,15)

for(i in l){
  print(i)
}

l <- list(110,120,130,140,150)
for(i in 1:length(l)){
  print(l[[i]])
}
print("--------------")
mat <- matrix(1:25,nrow=5)
for(i in mat){
  print(i)
}

for(i in 1:nrow(mat)){
  for(j in 1:ncol(mat)){
    print(paste('i=',i,'j=',j,'n=',mat[i,j]))
  }
}