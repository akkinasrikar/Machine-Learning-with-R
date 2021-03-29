library(tidyr)
library(data.table)

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)

print(df)

# gather()
print(gather(df,Quater,Revenue,Qtr1:Qtr4))
print(df %>% gather(Quater,Revenue,Qtr1:Qtr4))

# spread()
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks
print(stocks)

stocks.gathered <- stocks %>% gather(stock,price,X:Z)
print(stocks.gathered)

print(stocks.gathered %>% spread(stock,price))
print(spread(stocks.gathered,stock,price))

# separate()

df <- data.frame(onecol=c(NA,"a.x","b.y","c.z"))
print(df)
print(separate(df,onecol,c("ABC","XYZ")))

df <- data.frame(onecol=c(NA,"a-x","b-y","c-z"))
print(df)
print(separate(df,onecol,c("ABC","XYZ"),sep='-'))

# unite()

r <- separate(df,onecol,c("ABC","XYZ"),sep='-')
print(r)
print(unite(r,newcol,ABC,XYZ))
print(unite(r,newcol,ABC,XYZ,sep='-'))
print(unite(r,newcol,ABC,XYZ,sep='----'))