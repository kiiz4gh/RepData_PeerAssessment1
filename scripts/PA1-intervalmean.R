##########################################################################
# This funtion calculates the mean of the variable interval in the data set provided.
#.its output is a data frame wirh the interval and the mean of that interval across all days
##########################################################################




intervalMean<-function(data){
        nlev=as.numeric(levels(as.factor(data$interval)))
        data_intv_mean<-rep(NA, length(nlev))
        for (i in 1:length(nlev)){
                fctor<-nlev[i]
                data_intv_mean[i]=mean(data$steps[data$interval==fctor])
        }
        interval_means<-as.data.frame(cbind(nlev, data_intv_mean))
        names(interval_means)<-c("interval", "intervalMean")
        interval_means
}