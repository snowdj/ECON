library(rvest)
library(RCurl)
library(XML)
library(lubridate)
library(httr)
library(plotrix)
library(RColorBrewer)

setwd("C:/Users/Hanjo/HanjoStudy.github.io/_rmd")
session<-html_session("https://login.uber.com/login")

#session$response$all_headers[[1]]$headers$`set-cookie`<-paste("session=,","cefad64be41ac0e6_56a12418.aByKtuPLtnSKwiQJ2ZqOnaKIseI","; Domain=login.uber.com; Secure; HttpOnly; Path=/",sep="")
email<-"hanjo.odendaal@eighty20.co.za"
pass<-""

form<-html_form(session)[[1]]
form<-set_values(form, email=email, password=pass)


form$url<-""

all_trips<-data.frame()
session_open<-submit_form(session,form)

all_rides<-data.frame()
for(i in 1:1000)
{
  tryCatch({table<-html_table(jump_to(session_open,paste("https://riders.uber.com/trips?page=",i,sep="")),fill=T)}
           ,error= function(e){paste("Page reached:",i)})
  TT<-table[[2]]
  sq<-seq(1,nrow(TT),2)
  Uber_data<-matrix(nrow=length(sq),ncol =  4)
  for(i in 2:5)
  {
    Uber_data[,i-1]<-TT[[i]][sq]
  }
  
  all_rides<-rbind(all_rides,Uber_data)
  Sys.sleep(runif(1,0,1.4))
}


#------------ Housekeeping --------------
Uber_data<-as.data.frame(all_rides)
colnames(Uber_data)<-names(TT)[2:5]
Uber_data$status<-ifelse(Uber_data[,3]=="R0Canceled","Canceled","Ride")
Uber_data$Fare<-as.numeric(gsub("[^0-9\\.]","",Uber_data[,3]))
Uber_data$Pickup<-as.Date(Uber_data$Pickup,"%m/%d/%y")
Uber_data$Weekday<-weekdays(Uber_data$Pickup)

par(mfrow=c(1,2))
#Distribution of spend on weekday
pie3D(table(Uber_data$Weekday),explode=0.1,height=0.03,col=brewer.pal(7, "Set2"))
pie(table(Uber_data$Car),explode=0.3,height=0.03,col=brewer.pal(7, "Set2"),cex=1)
#Mean<-aggregate(Uber_data$Fare,by = list(Uber_data$Weekday),FUN=mean)
#Sum<-aggregate(Uber_data$Fare,by = list(Uber_data$Weekday),FUN=sum)

