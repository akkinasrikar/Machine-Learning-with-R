nv <- c(1,2,3)
print(nv)
print(class(nv))
cv <- c("M","L")
print(cv)
print(class(cv))

lv <- c(T,10,20,F)
print(lv)
print(class(lv))

cnl <- c("M",T,100)
print(cnl)
print(class(cnl))

#giving names to elements in vector
#1st method
rl <- c(15,36,41,65,10)
names(rl) <- c('a','b','c','d','e')
print(rl)
#2nd method
rf <- c(105,306,401,605,100)
lt <- c('aq','bq','cq','dq','eq')
names(rf) <- lt
print(rf)
