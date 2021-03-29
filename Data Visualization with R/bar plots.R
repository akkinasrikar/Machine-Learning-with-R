library(ggplot2)

df <- mpg

r <- ggplot(df,aes(x=class))
r <- r + geom_bar()
print(r)

r <- ggplot(df,aes(x=manufacturer))
r <- r + geom_bar(aes(fill=drv))
print(r)

r <- ggplot(df,aes(x=manufacturer))
r <- r + geom_bar(aes(fill=drv),position="dodge")
print(r)

# fill position represents to percentage
r <- ggplot(df,aes(x=manufacturer))
r <- r + geom_bar(aes(fill=drv),position="fill")
print(r)