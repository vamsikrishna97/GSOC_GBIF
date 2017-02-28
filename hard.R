############################ VAMSI KRISHNA#######################################
############Solution for "Biodiversity Data Cleaning" test#######################

##loading packages
library(rgbif)
library(geosphere)

##read centroids of countries data
centroids<-read.csv("centroids.csv")



closetoCentroid<-function(country){
  dataset<-occ_search(country = country, hasCoordinate = T,limit = 1000)
  
 distCentroid<- distm(dataset$data[,c(4,3)],centroids[centroids$country==country,c(3,2)],fun=distHaversine)[,1]
 
 dataset$data$distCentroid<-distCentroid
 
 dataset$data[dataset$data$distCentroid<200000,]
 
}

closetoCentroid("IN")
