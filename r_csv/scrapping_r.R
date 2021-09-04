
#import rvest

library('rvest')

#Specifiy the url

url <-"https://en.wikipedia.org/wiki/Comma-separated_values"

#read the html
webpage <- read_html(url)

#getting the data
webpage %>%
  html_nodes("pre") %>%
  html_text() ->cars

cars[11]

#saving to csv
write.table(cars[11], file ='cars.csv',quote = FALSE, row.names = FALSE, col.names = FALSE)






