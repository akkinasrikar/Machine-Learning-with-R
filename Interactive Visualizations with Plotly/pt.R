library(ggplot2)
library(plotly)

r <- ggplot(mtcars,aes(mpg,wt)) + geom_point()
r <- ggplotly(r)
print(r)