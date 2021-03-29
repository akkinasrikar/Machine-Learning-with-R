library(ggplot2)
library(data.table)
library(ggthemes)

df <- fread('Advanced data visualization/Economist_Assignment_Data.csv',drop=1)
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")
#print(head(df))
r <- ggplot(df,aes(x=CPI,y=HDI,color=Region))
r <- r + geom_point(size=4,shape=1)
r <- r + geom_smooth(aes(group=1),method = "lm",formula = y~log(x),se=F,color='red')
r <- r + geom_text(aes(label = Country), color = "gray20", 
                   data = subset(df, Country %in% pointsToLabel),
                   check_overlap = TRUE)
r <- r + scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)",
                            limits = c(0.9,10.5),breaks = 1:10)
r <- r + scale_y_continuous(name = "Human Development Index, 2011 (1=Best)",
                            limits = c(0.2, 1.0))
r <- r + ggtitle("Corruption and Human development")
r <- r + theme_economist_white()
print(r)