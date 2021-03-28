library(dplyr)

df <- mtcars

#1
print(arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg)))

#2
a=filter(df,mpg >20)
b=sample_n(a,size=5)
c=arrange(b,desc(mpg))
print(c)

#3 pipe operator
print("Pipe operator....")
print(df %>% filter(mpg>20) %>% sample_n(5) %>% arrange(desc(mpg)))