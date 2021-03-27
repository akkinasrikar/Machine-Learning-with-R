x <- 10
print(x<20)
print(x>5)
print(x < -20)
print(x > -18)

print(x<20 & x>5)
print(x<20 & x>50)
print(x<20 & x>5 & x > -10)

print(x==10 | x==12)
print(x >100 | x < 20)

df <-  mtcars
print(df[df['mpg']>=20])
#or subset(df,mpg>=20)

print(df[(df['mpg'] >= 20) & (df['hp'] > 100)])

tf <- c(T,F)
tt <- c(T,T)
ft <- c(F,T)

print(tf & tt)
print(tf | tt)

# && for compare two elements
print(tf && ft)
print(tf || ft)