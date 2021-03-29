library(ggplot2)
library(ggplot2movies)

r <- ggplot(movies,aes(x=year,y=rating))
r <- r + geom_bin2d()
print(r)

r <- ggplot(movies,aes(x=year,y=rating))
r <- r + geom_bin2d() + scale_fill_gradient(high="red",low="green")
print(r)

r <- ggplot(movies,aes(x=year,y=rating))
# deafuat c(1,1)
r <- r + geom_bin2d(binwidth=c(3,1))
print(r)

#hex shape
r <- ggplot(movies,aes(x=year,y=rating))
r <- r + geom_hex()
print(r)

r <- ggplot(movies,aes(x=year,y=rating))
r <- r + geom_density2d()
print(r)