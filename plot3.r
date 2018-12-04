##load data
 data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
 head(data)
 subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
##View summary of data
 summary(subSetData)
 Global_active_power <- as.numeric(subSetData$Global_active_power)
 datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
 subMetering1 <- as.numeric(subSetData$Sub_metering_1)
 subMetering2 <- as.numeric(subSetData$Sub_metering_2)
 subMetering3 <- as.numeric(subSetData$Sub_metering_3)
 plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
 lines(datetime, subMetering2, type="l", col="red")
 lines(datetime, subMetering3, type="l", col="blue")
 legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
 dev.copy(png, file="plot3.png", height=480, width=480)
 dev.off()
