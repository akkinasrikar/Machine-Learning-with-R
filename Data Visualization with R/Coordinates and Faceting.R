library(ggplot2)
r <- ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
r <- r + coord_cartesian(xlim = c(1,4),ylim = c(15,30))
print(r)

r <- ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
r <- r + coord_fixed(ratio=1/2)
print(r)

r <- ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
r <- r + facet_grid(. ~ cyl)
print(r)

r <- ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
r <- r + facet_grid(drv ~ .)
print(r)

r <- ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
r <- r + facet_grid(drv ~ cyl)
print(r)