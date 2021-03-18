v1 <- c(1,2,3)
v2 <- c("a","b","c")
print(v1[1])
print(v2[1])
print(v1[1:2])
print(v2[1:3])
print(v1[c(1,3)])

v <- c(0,1,2,3,4,5,6,7,8,9)

print(v[7:16])

v <- c(1,2,3,4)
vn <- c('a','b','c','d')
names(v) <- vn
print(v[2:4])
print(v['b'])
print(v[c('a','b')])

print(v[v>2])
