#install.packages('readxl')
#print(library(readxl))
library(readxl)
library(xlsx)
print(excel_sheets("Data input and output/exceldata.xlsx"))

df <- read_excel("Data input and output/exceldata.xlsx")
print(head(df))
print(sum(df$Value))

entire_workbook <- lapply(excel_sheets("Data input and output/exceldata.xlsx"),read_excel,path="Data input and output/exceldata.xlsx")
print(entire_workbook)

write.xlsx(mtcars,"Data input and output/output.xlsx")




