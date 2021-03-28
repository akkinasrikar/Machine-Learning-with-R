# install.packages("nycflights13")
# install.packages("dplyr")
library(dplyr)
library(nycflights13)
print(head(flights))
print(summary(flights))

#filter
print(head(filter(flights,month==11,day==3,carrier=="AA")))
print(head(flights[flights$month == 11 & flights$day == 3 & flights$carrier == 'AA', ]))

#slice
print(slice(flights,1:10))

# arrange
print(head(arrange(flights,year,month,day,arr_time)))
print(head(arrange(flights,year,month,day,desc(arr_time))))



