v <- c(1,2,3)
m <- matrix(1:10,nrow=2)
df <- mtcars

print(class(v))
print(class(m))
print(class(df))

my.list <- list(v,m,df)
print(my.list)

my.named.list <- list(sample_vec=v,my_matrix=m,my_df=df)
print(my.named.list)

print(my.named.list$sample_vec)
print(my.list[1])
print(my.named.list[1])
print(my.named.list['sample_vec'])
print(my.named.list[['sample_vec']])
print(class(my.named.list['sample_vec']))
print(class(my.named.list$sample_vec))

double_list <- c(my.named.list,my.named.list)
print(double_list)
print(str(double_list))