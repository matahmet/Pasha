#install.packages("xslx")
#library("xlsx")
#install.packages('xlsx', repos='http://cran.us.r-project.org')
#install.packages('xlsx', repos='http://cran.us.r-project.org')

#install.packages("readxl")
library(readxl)
#read_excel("Path where your Excel file is stored\\File Name.xlsx")

TrProvincialData=read_excel("C:\\Users\\emrehan\\Documents\\GitHub\\Pasha\\Data3_form1.xlsx")

save(TrProvincialData, file="TrProvincialData.Rdata")



