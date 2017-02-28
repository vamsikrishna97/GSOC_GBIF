library(lubridate)
library(plyr)
library(rgeospatialquality)
# Species<- c("Panthera tigris tigris","Ailuropoda melanoleuca","Spinus tristis","Ursus americanus","Helianthus annuus","Cyanocitta stelleri", 
#             "Junco hyemalis", "Aix sponsa","Crocodylus porosus","Crocodylus niloticus","Vulpes vulpes",
#             "Panthera leo","Ursus maritimus","Canis lupus familiaris","Pygoscelis antarctica","Hemachatus haemachatus","Ophiophagus hannah",
#             "Antilocapra americana","Procyon lotor","Coleonyx variegatus","Gopherus agassizi","Canis latrans","Papio","Ursidae")
# 
# 
# 
# 
# 
# for(i in 1:24 ){
#   if(i==1){
#   x<-occ_search(scientificName = Species[i])
#   speciesData<-x$data
#   }
#   
#   else{
#     x<-occ_search(scientificName = Species[i])
#     speciesData<-rbind.fill(speciesData,x$data)
#     
#   }
# }
# speciesData<- format_gq(speciesData,source="rgbif")


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
