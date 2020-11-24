corr <- function(directory,threshold=0){
        
        
        vector1  <-numeric()
        b<- c()
        for(i in 1:332){
                file <- str_pad(i, 3, pad = "0")
                read <- paste(directory,"/",file,".csv",sep="")
                data <- read.csv(read)
                complete <- data[complete.cases(data),]
                #print(complete[2])
                if (nrow(complete) >= threshold){
                        
                       b <-c(b,cor(complete[,2],complete[,3]))
                       
                        #print(complete[2])
                       #vector1 <- rbind(b)
                       #print(vector1)
                }
                else next
                
        }
        
        return(b)
}