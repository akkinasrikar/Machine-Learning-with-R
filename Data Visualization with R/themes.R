library(ggplot2)
library(ggthemes)
#set all at once
#theme_set(theme_classic())

r <- ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
r <- r + theme_dark()
print(r)

r <- ggplot(mtcars,aes(x=wt,y=mpg))+geom_point()
r <- r + theme_fivethirtyeight()
print(r)