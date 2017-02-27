library(lubridate)

x<-Panthera_tigris$data$eventDate


head(x)
y<-strptime(x,"%Y-%m-%dT%H:%M:%S")
y
# y1<-as.Date(x,format="%Y-%m-%dT%H:%M:%S")
# y2<-strptime(x,"%Y-%m-%d ")
# y3<-as.Date(x,format="%Y-%m-%d")
# y
# y1
# y2
# y3
