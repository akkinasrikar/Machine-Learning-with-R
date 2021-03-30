library(ggplot2)
library(dplyr)
library(ggthemes)
library(corrgram)
library(corrplot)

df <- read.csv("./Machine learning/Linear regression/student-mat.csv",sep=";")
print(head(df))
print(summary(df))

if(any(is.na(df))==T){
  print("Na values are there!")
} else {
  print("No Na values :)")
}

num.cols <- sapply(df,is.numeric)
cor.data <- cor(df[,num.cols])
print(cor.data)
#print(corrplot(cor.data,method="color"))

print(corrgram(df))
print(corrgram(df,order=T,lower.panel = panel.shade,
               upper.panel = panel.pie,text.panel = panel.txt))

r <- ggplot(df,aes(x=G3))+geom_histogram(bins=20,
                                         alpha=0.5,fill="blue")
print(r)
