#This is the R script used to produce the submitted tidy data set.

#read in relevant files

#read in activity labels and features
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

#loop to read in all relevant files in the train and test folders
files <- c("subject", "y", "X")
folders <- c("train","test")

for(i in folders){
    for(j in files){
    name <- paste0(j,"_",i)
    path <- paste0("./UCI HAR Dataset/",i,"/",name,".txt")
    #the loaded raw data are assigned the same name as the txt files 
    assign(name, read.table(path))  
    }
}


#combine the three data frames from each of the training and test sets into one
combineTrain <- cbind(subject_train, y_train, X_train)
combineTest <- cbind(subject_test, y_test, X_test)

#merge the training and test sets to create one data set (Task 1)
combineAll <- rbind(combineTrain,combineTest)


#assign variable names to the merged data frame,
#variable names of the measurements are extracted from the 'features' file
#(Task 4 is partially done here)
colnames(combineAll) <- c("subject", "activity", features[,2])


#locate the variables which represent the mean and stand deviation of the measurements 
locateMean <- grep(".mean\\(\\).*", names(combineAll))
locateStd <- grep(".std\\(\\).*", names(combineAll))

#subset only the columns on the mean and standard deviation for each measurement (Task 2)
combineAll <- combineAll[,sort(c(1:2,locateMean,locateStd))]


#uses descriptive activity names to name the activities in the data set (Task 3)
#the numberings for the activities are replaced using the 'activity_labels' data frame,
#e.g. '1' replaced by 'WALKING', '2' by 'WALKING_UPSTAIRS' and so on.
combineAll$activity <- activity_labels[combineAll$activity,2]


#melt the data frame to a tall thin data frame
library(reshape2)
reshapeTall <- melt(combineAll, id=c("subject","activity"))


#label the data set with descriptive variable names (Task 4) 
#see that all the column names of the data set are now descriptive and clear:
#> names(reshapeTall)
#[1] "subject"  "activity" "variable" "value"  


#From the 'reshapeTall' data frame, create another tidy data set with the 
#average of each variable for each activity and each subject (Task 5)
library(plyr)
output <- ddply(reshapeTall, .(subject,activity,variable), 
                summarize, average=mean(value))


#output the tidied data
write.table(output, file="TidyData.txt")
