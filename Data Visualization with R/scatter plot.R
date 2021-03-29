library(ggplot2)
df <- mtcars

r <- ggplot(df,aes(x=wt,y=mpg))
r <-  r + geom_point(size=5,alpha=0.5)
print(r)

r <- ggplot(df,aes(x=wt,y=mpg))
r <-  r + geom_point(aes(size=factor(cyl)))

print(r)

r <- ggplot(df,aes(x=wt,y=mpg))
r <-  r + geom_point(aes(shape=factor(cyl),color=factor(cyl)),size=2)

print(r)

r <- ggplot(df,aes(x=wt,y=mpg))
r <-  r + geom_point(aes(color=hp))
r <-  r + scale_color_gradient(low='blue',high='red') 

print(r)