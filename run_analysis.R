
## setwd("GetCleanData")
## setwd("UCI HAR Dataset")

ActNames <- read.table("activity_labels.txt",sep=" ",header=F,stringsAsFactors=F)
ActCodes <- ActNames$V2
# ActCodes is now a vector of the six activity types, row number = corresponding code


# read the train data, read the test data, and append them together (train then test)
TrainData      <- read.table("train/X_train.txt",header=F,stringsAsFactors=F)
TestData       <- read.table("test/X_test.txt",header=F,stringsAsFactors=F)
SubData        <- rbind(TrainData, TestData)

# read the train SubID, read the test SubID, and append them together (train then test)
TrainSubj      <- read.table("train/subject_train.txt",sep=" ",header=F,stringsAsFactors=F)
TestSubj       <- read.table("test/subject_test.txt",sep=" ",header=F,stringsAsFactors=F)
SubID          <- rbind(TrainSubj,TestSubj)


# read the train ActType, read the test ActType, and append them together (train then test)
TrainActType   <- read.table("train/y_train.txt",sep=" ",header=F,stringsAsFactors=F)
TestActType    <- read.table("test/y_test.txt",sep=" ",header=F,stringsAsFactors=F)
ActType        <- rbind(TrainActType,TestActType)

dataColNames   <- read.table("features.txt",sep=" ",header=F,stringsAsFactors=F)

names(SubID)   <- "SubID"
names(ActType) <- "Activity"
names(SubData) <- dataColNames$V2

AllData          <- cbind(SubID,ActType,SubData)
AllData$Activity <-  ActCodes[ActType$Activity]

n.AllData     <-names(AllData)
n.AllData.sub <- n.AllData[c(1,2,grep("mean\\(|std\\(",n.AllData,ignore.case=T))]

# Choosing only the first two columns - and anything with "mean(" or "sub("
#  I don't think the columns with MeanFreq should be included, as I understand the assignment
#  similarly the "...angle(..." columns with Mean in their names

AllData.sub   <- AllData[,n.AllData.sub]

### AllData.sub has only the desired columns now

rm(TrainData,TestData,TrainSubj,TestSubj,TrainActType,TestActType,ActNames,dataColNames)

res <- aggregate(AllData.sub[,c(-1,-2)],list(AllData.sub$SubID,AllData.sub$Activity),mean)

# aggregate allows mean to be calculated over the different
#   SubID-Activity levels and outputs into a useful data structure (e.g. data.frame)

n.res    <- names(res) 
n.res[1] <- "SubID"         # aggregate calls this Group.1, so we rename
n.res[2] <- "Activity"      # aggregate calls this Group.2, so we rename

n.res    <- gsub("-","_",n.res)
n.res    <- gsub("\\(|\\)","",n.res)
for (i in 3:68) { n.res[i] <- paste0("MEAN_",n.res[i]) }

##    
##  the last three lines clean up variable names 
##  the first two commands replace dashes with underscores
##  and then remove any ( or ) from var names -
##    only letters, numbers, dot, and underscore are syntactically proper 
##    in R variable names (improper characters get coerced to "." by read.table)
##  see http://cran.r-project.org/doc/FAQ/R-FAQ.html#What-are-valid-names_003f
## 
## this is primarily so that what is written will = what would be read back in
##
## this would apparently have been a problem 
##     if we tried to access these using $ mechanism
##
##  the last of the three lines modifies the name to denote that we have calculated a mean from several values, 
##   so I've prefixed "MEAN_" in front of the original variable name

names(res) <- n.res 

## relatively tidy now
##
## this is, as I understand it, the wide format approach
##  (the narrow version would have lines with columns SubID, Activity, varName, calcMean for the varName SubID-Activity
##

write.table(res,file="Week3_Step5.txt",row.name=FALSE)



