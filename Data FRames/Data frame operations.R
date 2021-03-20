#creating dataframes
empty <- data.frame()
c1 <- (1:10)
c2 <- letters[1:10]
df <-  data.frame(col1=c1,col2=c2)
print(df)

#write csv
write.csv(df,file="temp.csv")

#read from csv file
df2 <- read.csv("temp.csv")
print(df2)

#counting
print(nrow(df))
print(ncol(df))
print(colnames(df))
print(rownames(df))
print(str(df))
print(summary(df))

#referencing cells
print(df[[5,2]])
print(df[5,'col2'])
df[[2,'col1']] <- 10000
print(df)
print(df[1:2,])
#returns vector
print(df[['col1']])
#return dataframe
print(df['col1'])

print(df[c('col1','col2')])

#adding rows
ndf <- data.frame(col1=90,col2="A")
print(ndf)
print(df)

dfnew <- rbind(ndf,df)
print(dfnew)

#method 1
dfnew$col3 <- 2*dfnew$col1
print(dfnew)
#method 2
dfnew[,'col4'] <- 3*dfnew$col3
print(dfnew)

colnames(dfnew) <- c('a','b','c','d')
print(dfnew)

colnames(dfnew)[1] <- c('aaa')
print(dfnew)

print(head(df,6))
print(df[-2,])

print(head(mtcars))

print(mtcars[mtcars$mpg>30,])
print(mtcars[ (mtcars$mpg>25) & (mtcars$cyl==4) ,])
print(mtcars[ (mtcars$mpg>25) & (mtcars$cyl==4) ,c('mpg','cyl','hp')])
print(subset(mtcars,mpg>25 & cyl==4))

print(is.na(mtcars))
print(any(is.na(mtcars)))

df[is.na(df)] <- 0
print(df)