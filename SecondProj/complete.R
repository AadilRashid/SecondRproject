complete <- function(directory,id=1:332){
        sum <- c()
        ids <- c()
        nobs <- c()
        for(i in id){
                file <- str_pad(i, 3, pad = "0")
                read <- paste(directory,"/",file,".csv",sep="")
                data <- read.csv(read)
                 sum <- sum(complete.cases(data))
                 #m<- c(m,sum)
                 ids <- c(ids,i)
                 nobs<- c(nobs,sum)
        
        }
        
        m=cbind(ids,nobs)
        colnames(m)<- c("ids","nobs")
        print(m)
}        