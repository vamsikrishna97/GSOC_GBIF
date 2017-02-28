library(rgbif)
library(geosphere)
centroids<-read.csv("centroids.csv")

country<-"IN"

closetoCentroid<-function(country){
  dataset<-occ_search(country = country, hasCoordinate = T,limit = 1000)
  
 distCentroid<- distm(dataset$data[,c(4,3)],centroids[centroids$country==country,c(3,2)],fun=distHaversine)[,1]
 
 dataset$data$distCentroid<-distCentroid
 
 dataset$data[dataset$data$distCentroid<200000,]
 
}

closetoCentroid("IN")
