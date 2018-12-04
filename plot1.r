  ##load data
  data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(data)
  subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  ##View summary of data
  summary(subSetData)
  Global_active_power <- as.numeric(subSetData$Global_active_power)
  hist(Global_active_power, main="Global Active Power", 
    xlab="Global Active Power (kilowatts)", ylab="Frequency", ylim=c(0,1200), col="Red")
  png("plot1.png", width=480, height=480)
  dev.off()