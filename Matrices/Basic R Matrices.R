v <- 1:10
print(v)

m <- matrix(v)
print(m)

m1 <- matrix(v,nrow=2)
print(m1)

print(matrix(1:12,byrow=F,nrow=4))
print(matrix(1:12,byrow=T,nrow=4))

gs <- c(450,451,452,445,468)
ms <- c(230,231,232,234,210)

stocks <- c(gs,ms)
print(stocks)

stock_matrix <- matrix(stocks,byrow=T,nrow=2)
print(stock_matrix)

days <- c('MON','TUE','WED','THU','FRI')
st.names <- c('GOOGLE','MICROSOFT')

colnames(stock_matrix) <- days
rownames(stock_matrix) <- st.names
print(stock_matrix)