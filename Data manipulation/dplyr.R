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

#select
print(head(select(flights,carrier)))
print(head(select(flights,carrier,arr_time)))

#rename
print(head(rename(flights,airline_carrier=carrier)))

#distinct
print(distinct(select(flights,carrier)))

#mutate 
print(head(mutate(flights,new_col=arr_delay-dep_delay))) #return entire df
print(head(transmute(flights,new_col=arr_delay-dep_delay))) #return newly created column

print(summarise(flights,avg_air_time=mean(air_time,na.rm=T)))
print(summarise(flights,total_air_time=sum(air_time,na.rm=T)))

#get sample n random rows
print(sample_n(flights,10))
#in fractions
print(sample_n(flights,0.8)) #30%



