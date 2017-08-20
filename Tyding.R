###################
#JMJ
#Tyding the data


######### Tyding table TEMP

#Transform the date 
#Formatting the field Date, Some dates come in the form yyyy-dd-mmn and others come 
#in the form mm/dd/yyyy

Temp$DateF<-as.Date(ifelse(grepl("-",Temp$Date),as.Date(Temp$Date),
                           as.Date(Temp$Date, format="%m/%d/%Y")),origin="1970-01-01")


#we only keep observations for the period since 1900
Temp<-subset(Temp, DateF >="1900-01-01")
#We eliminate the continents
continents <- which(with( Temp, Country=="Europe" | Country=="Africa" | Country=="Asia" | Country=="Antarctica"))
continents
Temp<-Temp[-continents,]


###### Tyding Table CityTemp

#Transform the date

#Formatting the field Date, Some dates come in the form yyyy-dd-mmn and others come 
#in the form mm/dd/yyyy

CityTemp$DateF<-as.Date(ifelse(grepl("-",CityTemp$Date),as.Date(CityTemp$Date),
                               as.Date(CityTemp$Date, format="%m/%d/%Y")),origin="1970-01-01")


#we only keep observations for the period since 1900
CityTemp<-subset(CityTemp, DateF >="1900-01-01")

