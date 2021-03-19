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

print(colSums(stock_matrix))
print(rowSums(stock_matrix))
print(rowMeans(stock_matrix))
print(colMeans(stock_matrix))

FB <- c(123,147,856,321,100)
upd_stock_matrix <- rbind(stock_matrix,FB)
print(upd_stock_matrix)

avg <- rowMeans(upd_stock_matrix)
print(avg)
upd_stock_matrix <- cbind(upd_stock_matrix,avg)
print(upd_stock_matrix)