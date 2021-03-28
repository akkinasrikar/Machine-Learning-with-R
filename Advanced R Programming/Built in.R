print(seq(0,10,by=2))
print(seq(0,100,by=10))

v <- c(1,4,2,76,23,97,09)
print(sort(v))
print(sort(v,decreasing = T))

av <- c('a','z','b','C','A')
print(sort(av))

a <- 1:10
print(rev(a))
print(str(a))
print(str(mtcars))
print(summary(mtcars))

v1 <- 1:10
v2 <- 20:25
v <- append(v1,v2)
print(v)

v <- c(1,2,3)
print(is.vector(v)) 
print(is.data.frame(v))
print(is.data.frame(mtcars))

lv <- as.list(v)
mv <- as.matrix(v)
print(lv)
print(mv)