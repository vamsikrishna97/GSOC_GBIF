    ############################ VAMSI KRISHNA#######################################
    ############Solution for "Biodiversity Data Cleaning" test#######################
    ##########R function to check dates of all the records and add Flag Field########
    #@param flagDate(Species) where Species is a GBIF object
    
    
    ##Load Packages
    library(lubridate)
    library(rgbif)
    
    ##read 10,000+ records of various species
    asia<-occ_search(continent = "asia",limit = 10001)
    stripedHyena<-occ_search(scientificName = "Hyaena hyaena",limit = 10001)
    
    
    Species<-asia
    #Function to flag date quality based on eventDate
    flagDate<-function(Species){
    
      
          ##Adding flag variable  
          Species$data<-cbind(Species$data,dateFlag="Consistent")
          
          Species$data$dateFlag<-as.character(Species$data$dateFlag)
          
          eventDate<-strptime(Species$data$eventDate,"%Y-%m-%dT%H:%M:%S")
          
          yearInconsistencies<-which(Species$data$year!=format(eventDate,"%Y"))
          
          monthInconsistencies<-which(Species$data$month!=as.numeric(format(eventDate,"%m")))
          
          dayInconsistencies<-which(Species$data$day!=as.numeric(format(eventDate,"%d")))
          
          naInconsistencies<-which(is.na(Species$data$day)|is.na(Species$data$year)|is.na(Species$data$month)|is.na(Species$data$eventDate))
          
          Inconsistencies<-unique(c(yearInconsistencies,monthInconsistencies,dayInconsistencies,naInconsistencies))
          
          ##Flagging inconsistent records
          Species$data[Inconsistencies,"dateFlag"] <- "Inconsistent" 
          
          Species$data[1:10,c("year","month","day","eventDate","dateFlag")]
          
          # year month day                    eventDate   dateFlag
          # 1  2017     1  17 2017-01-17T00:00:00.000+0000 Consistent
          # 2  2017     1  17 2017-01-17T00:00:00.000+0000 Consistent
          # 3  2016     1  30 2016-01-30T00:00:00.000+0000 Consistent
          # 4  2016     1  29 2016-01-29T00:00:00.000+0000 Consistent
          # 5  2016     1  28 2016-01-28T00:00:00.000+0000 Consistent
          # 6  2016     1  28 2016-01-28T00:00:00.000+0000 Consistent
          
    }
    
    flagDate(asia)
    flagDate(stripedHyena)
    
