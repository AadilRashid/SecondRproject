pollutantmean <- function(directory,pollutant,id = 1:332){
        
        m <- 0 
        sum <- c()
        for(i in id){
                file <- str_pad(i, 3, pad = "0")
                read <- paste(directory,"/",file,".csv",sep="")
                data <- read.csv(read)
                l<- data[,pollutant]
                #l<-l[!is.na(l)]
                sum <- c(sum,l)
                #print (sum)
        }
        
        m<-mean(sum,na.rm=TRUE)
        
        print(m)
}