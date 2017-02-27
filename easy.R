#########################VAMSI KRISHNA###########################################

########################LOAD DATA###############################################
library(rgbif)
library(mapr)
library(ggmap)
library(ggplot2)
Panthera_tigris<-occ_search(scientificName = "Panthera tigris tigris")
Panda<-occ_search(scientificName = "Ailuropoda melanoleuca")
Goldfinch<-occ_search(scientificName = "Spinus tristis")



############################MAP DATA###########################################
map_ggplot(Panthera_tigris)
map_ggmap(Goldfinch)
?gbifmap(Panda$data)
