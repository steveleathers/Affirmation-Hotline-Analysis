AffHotCalls <- read.csv("calllog_2014-12-13.csv", stringsAsFactors=FALSE)
CleanCalls <- AffHotCalls[which(AffHotCalls$To == "5033609355"),]

CleanerCalls <- CleanCalls[which(CleanCalls$StartTime >= "2013-03-11 14:45:52 PDT"),]
write.csv(CleanerCalls, file="AffHotCalls.csv")
AffHotSms <- read.csv("smslog_2014-12-13.csv", stringsAsFactors=FALSE)
CleanSms <- AffHotSms[which(AffHotSms$To == "5033609355" | AffHotSms$From == "5033609355"),]
write.csv(CleanSms, file="AffHotSMS.csv")