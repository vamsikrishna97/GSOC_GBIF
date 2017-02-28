library(lubridate)
library(plyr)
q<-occ_search(continent = "africa",limit = 12000)
y<-strptime(q$data$eventDate,"%Y-%m-%dT%H:%M:%S")
y
w<-q$data$eventDate
w
y<-strptime(w1,"%Y-%m-%d %H:%M:%S")
y