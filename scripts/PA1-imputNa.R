###################################################################
#this function replaces NA values with the mean of that interval
#
###################################################################


imputNA<-function(data){
        data_clean<-as.data.frame(na.omit(data))
        invMean<-intervalMean(data_clean)
        is_na<-as.data.frame(is.na(data))
        for (i in 1:dim(data)[1]){
                if(is_na$steps[i]==T){
                        inv<-data$interval[i]
                        data$steps[i]<-invMean$intervalMean[invMean$interval==inv]
                }
        }
        data
}