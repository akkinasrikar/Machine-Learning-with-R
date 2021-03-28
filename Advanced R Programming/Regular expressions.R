#grepl
#grep

text <- "hello srikar akkina"
print(grepl('hello',text))
print(grepl('tensor',text))
print(grepl('hello s',text))

v <- c('a','b','c','d','d')
print(grepl('b',v))

print(grep('b',v))
print(grep('d',v))