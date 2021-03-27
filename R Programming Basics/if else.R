hot <- F
temp <- 35
if(temp>30){
  hot <- T
}
print(hot)

temp <-25

if(temp>30){
  print("Hot Outside!")
} else{
  print("Its not too hot outside!")
}

temp <- 30

if (temp > 80){
  print("Hot outside!")
} else if(temp<80 & temp>50){
  print('Nice outside!')
} else if(temp <50 & temp > 32){
  print("Its cooler outside!")
} else{
  print("Its really cold outside!")
}

