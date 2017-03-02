# GSOC_GBIF
Solution for "Biodiversity Data Cleaning" 

Hard: Write a function to identify records very close to centroid of any country

   Used an external file "Centroids.csv" which contains the Spatial Centroid data.Centroid Data-https://developers.google.com/public-data/docs/canonical/countries_csv
    Used 200,000 Metres i.e. 200km as a threshold of closeness to the centroid.Any record which is 200 or less km away from the centroid of the country will be identified.


Medium:Write a R function to check dates of all the records downloaded from GBIF for a set of species and add a flag field indicating quality of the date field data.

   Used 4 variables to establish the quality of Date Field -"year", "month", "day", "eventDate". Tests to check Quality:-
   
    1. NA values in any of the records.
    2. "year" variable not matching with corresponding "eventDate" variable of a record.
    3. "month" variable not matching with corresponding "eventDate" variable of a record.
    4. "day" variable not matching with corresponding "eventDate" variable of a record.
    
    
    
    
