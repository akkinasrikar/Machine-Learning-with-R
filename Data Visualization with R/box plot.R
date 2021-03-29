library(ggplot2)
df <- mtcars

r <- ggplot(df,aes(x=factor(cyl),y=mpg))
r <- r + geom_boxplot()
print(r)

r <- ggplot(df,aes(x=factor(cyl),y=mpg))
r <- r + geom_boxplot() + coord_flip()
print(r)

r <- ggplot(df,aes(x=factor(cyl),y=mpg))
r <- r + geom_boxplot(aes(fill=factor(cyl))) + theme_dark()
print(r)