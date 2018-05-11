
#install.packages("rwunderground")
library(rwunderground)

set_api_key("5ee8e25053049549")



day <-  history_daily(set_location(zip_code = "04616"), date = "20150101")

days <- list("20150101", "20150101", "20150101")

series$d <-  gsub("-" , "" , series$Date ) 
  
 days <- list(series$d)

 
 
 
 get_weather <- function(x) { for i in  i:length(x){}
   history_daily(set_location(zip_code = "04616"), date = x)
 }
 
for (i in 1:length(days)) {
  print(days[[i]])
}
 
 
 ###########
 
 
 
 pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
 split <- strsplit(pioneers, split = ":")
 split_low <- lapply(split, tolower)
 
 # Write function select_first()
 select_first <- function(x) {
   x[1]
 }
 
 # Apply select_first() over split_low: names
 names <- lapply(split_low, select_first)
 
 # Write function select_second()
 select_second <- function(x) {
   x[2]
 }
 
 # Apply select_second() over split_low: years
 years <- sapply(split_low, select_second)
 
dag <- as.data.frame(years)
 