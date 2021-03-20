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