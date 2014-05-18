################################################################
# this function outputs a vector that is the toatal step in an interval across 
# all days.
#data input must not have missing(NA) values
#################################################################

totalSteps<-function(data){
        dlev<-levels(data$date)
        totStep<-rep(NA, length(dlev))
        for (i in 1:length(dlev)){
                fctor=dlev[i]
                totStep[i]<-sum(data$steps[(data$date==fctor)])
        }
        totStep
}