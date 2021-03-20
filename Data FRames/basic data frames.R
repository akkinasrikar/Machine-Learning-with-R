print(state.x77)
print("_______________________")
print(USPersonalExpenditure)
print("_______________________")
print(women)
#to check what datasets available with r packagae
#print(data())
print(WorldPhones)

print(head(state.x77))
print(tail(state.x77))

print("structure")
print(str(state.x77))
print("summary")
print(summary(state.x77))

#let's create dataframes
days <- c('mon','tue','wed','thr','fri','sat')
temp <- c(22.0,14.3,43.1,36.3,46,13)
rain <- c(T,T,F,T,F,F)

df=data.frame(days,temp,rain)
print(df)
print(str(df))
print(summary(df))