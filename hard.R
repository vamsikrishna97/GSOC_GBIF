############################ VAMSI KRISHNA#######################################
############Solution for "Biodiversity Data Cleaning" test#######################

####Parameter country The 2-letter country code (as per ISO-3166-1) 
####of the country in which the occurrence was recorded. See here http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 

##loading packages
library(rgbif)
library(geosphere)
library(ggmap)
library(ggplot2)
library(ggplot2)
library(ggmap)

##read centroids of countries data
centroids<-read.csv("centroids.csv")



closetoCentroid<-function(country){
  dataset<-occ_search(country = country, hasCoordinate = T,limit = 1000)
  
  distCentroid<- distm(dataset$data[,c(4,3)],centroids[centroids$country==country,c(3,2)],fun=distHaversine)
  distCentroid<-distCentroid[,!colSums(is.na(distCentroid))>0]
  
  dataset$data$distCentroid<-distCentroid
  
  x<-dataset$data[dataset$data$distCentroid<800000,]## records which are 800,000m i.e 800km from the centroid of the country
 
 
 ##mapWorld <- borders("world", colour="gray50") # create a layer of borders
 ##ggplot() + mapWorld + geom_point(aes(x$decimalLongitude,x$decimalLatitude,col=x$order))
 
map<- ggmap(get_map(country,zoom = 4))+
   geom_point(data=x, aes(decimalLongitude,decimalLatitude)) + 
   geom_point(data=centroids[centroids$country==country,],aes(longitude,latitude),col="red",size=4)
print(map)
 
return(x)

}

india<-closetoCentroid("IN") #####ISO-3166-1

US<-closetoCentroid("US")
