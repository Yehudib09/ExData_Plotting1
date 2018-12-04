  ##load data
  data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
  head(data)
  subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  ##View summary of data
  summary(subSetData)
  datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  Global_active_power <- as.numeric(subSetData$Global_active_power)
  plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot2.png", height=480, width=480)
  dev.off()
