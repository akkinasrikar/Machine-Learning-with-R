# Code	Value
# %d	Day of the month (decimal number)
# %m	Month (decimal number)
# %b	Month (abbreviated)
# %B	Month (full name)
# %y	Year (2 digit)
# %Y	Year (4 digit)

print(Sys.Date())
today <- Sys.Date()
print(class(today))

my.date <- as.Date("1900-09-30")
print(class(my.date))

my.date <- as.Date("NOV-01-90",format="%b-%d-%y")
print(my.date)

print(as.Date("June,01,2002",format="%B,%d,%Y"))
print(as.POSIXct("11:02:03",format="%H:%M:%S"))
print(strptime("11:02:03",format="%H:%M:%S"))