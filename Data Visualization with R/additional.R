library(ggplot2)
library(ggthemes)
head(mpg)

print(ggplot(mpg,aes(x=hwy)) + geom_histogram(bins=20,fill='red',alpha=0.5))

print(ggplot(mpg,aes(x=manufacturer)) + geom_bar(aes(fill=factor(cyl))) + theme_gdocs())

pl <- ggplot(txhousing,aes(x=sales,y=volume)) + geom_point(color='blue',alpha=0.5)
print(pl)

pl <- pl + geom_smooth(color='red')
print(pl)