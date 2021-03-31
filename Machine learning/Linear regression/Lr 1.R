library(ggplot2)
library(dplyr)
library(ggthemes)
library(corrgram)
library(corrplot)
library(caTools)
library(plotly)
set.seed(101)

df <- read.csv("./Machine learning/Linear regression/student-mat.csv",sep=";")
# print(head(df))
# print(summary(df))
# 
# if(any(is.na(df))==T){
#   print("Na values are there!")
# } else {
#   print("No Na values :)")
# }

# num.cols <- sapply(df,is.numeric)
# cor.data <- cor(df[,num.cols])
# print(cor.data)
# print(corrplot(cor.data,method="color"))
# 
# print(corrgram(df))
# print(corrgram(df,order=T,lower.panel = panel.shade,
#                upper.panel = panel.pie,text.panel = panel.txt))
# 
# r <- ggplot(df,aes(x=G3))+geom_histogram(bins=20,
#                                          alpha=0.5,fill="blue")
# 
# print(r)

sample <- sample.split(df$G3,SplitRatio=0.7)

train <- subset(df,sample==T)
test <- subset(df,sample==F)

model <- lm(G3 ~ . , train)

# print(summary(model))
# 
# res <- residuals(model)
# res <- as.data.frame(res)
# pl <- ggplot(res,aes(res))+geom_histogram(fill="blue",alpha=0.5)
# print(ggplotly(pl))

# print(plot(model))

G3.predictons <- predict(model,test)

results <- cbind(G3.predictons,test$G3)
colnames(results) <- c('Predictions','Original')
results <- as.data.frame(results)
print(head(results))

mse <- mean((results$Original-results$Predictions)^2)
cat("MSE:",mse," ")
cat("RMSE:",mse^0.5," ")

SSE = sum((results$Predictions - results$Original)^2)
SST = sum( (mean(df$G3) - results$Original)^2)

R2 = 1 - SSE/SST
R2
cat("R2: ",R2," ")
print(" ")

to_zero <- function(x){
  if (x<0){
    return(0)
  } else{
    return(x)
  }
} 

results$Predictions <- sapply(results$Predictions,to_zero)
mse <- mean((results$Original-results$Predictions)^2)
cat("MSE:",mse," ")
cat("RMSE:",mse^0.5," ")

SSE = sum((results$Predictions - results$Original)^2)
SST = sum( (mean(df$G3) - results$Original)^2)

R2 = 1 - SSE/SST
R2
cat("R2: ",R2," ")