library(dplyr)
## combine two data set with feature label
   tr <- read.table("X_train.txt") 
   test <- read.table("X_test.txt")
   total <- rbind(tr,test)
   ft <-read.table("features.txt") ## variable names 
   colnames(total) <- ft[,2]
## Subject info and Activity label  
   sub.tr<- read.table("subject_train.txt")  ## subject info
   sub.test<- read.table("subject_test.txt")     
   trlb <- read.table("y_train.txt") ## activity label
   testlb <- read.table("y_test.txt")  
   sub.total <- rbind(sub.tr,sub.test) 
   activity <- rbind(trlb,testlb)
## Select only mean/Sd of each measurements  
   meansd <- total[,grepl("mean|std", names(total))]   
## ID, Activity label combine to mean/sd data 
   tdf <- cbind(sub.total,activity,meansd)
## Label with descriptibe Variable name and activity name      
   colnames(tdf)[1:2]<-c("ID","Activity")   
   names(tdf) <-gsub("()","",names(tdf),fixed=TRUE)  
   for (i in 1:6) {
      label <- c("Walk","Walk_up","Walk_down","Sit","Stand","Lay")
      tdf[tdf$Activity==i,2] <- label[i]}
## Second data set mean value for each subject and each activity
     tidy<- tdf %>% group_by(Activity,ID) %>% 
                 summarise_all(mean, na.rm=TRUE)
## Store second data set as a txt file   
write.table(tidy,file="tidydata.txt", row.names=FALSE)
