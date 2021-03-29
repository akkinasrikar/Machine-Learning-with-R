#install.packages("ggplot2movies")
#install.packages("ggplot")
library(ggplot2)
library(ggplot2movies)

# data + asthetics

# plot 1
pl <- ggplot(data=movies,aes(x=rating))
r <- pl + geom_histogram()
print(r) 

# plot 2
pl <- ggplot(data=movies,aes(x=rating))
r <- pl + geom_histogram(binwidth = 0.1,
                         color='red',
                         fill='pink',
                         alpha=0.4)
r <- r + xlab('Movie rating') + ylab('counts')
r <- r+ ggtitle("Histogram")
print(r) 

#plot 3
pl <- ggplot(data=movies,aes(x=rating))
r <- pl + geom_histogram(binwidth = 0.1,aes(fill=..count..))
r <- r + xlab('Movie rating') + ylab('counts')
r <- r+ ggtitle("Histogram")
print(r)
