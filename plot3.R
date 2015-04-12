
data <- read.delim("./data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
data2 <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]
data2$Time3 <- strptime(paste(data2$Date, data2$Time, sep=" "),  format("%d/%m/%Y %H:%M:%S"))

Sys.setlocale("LC_ALL", "English")
par(mfcol = c(1, 1))

with(data2, plot(Time3, Sub_metering_1 , main = "", type = "n", ylab="Energy sub Metering", xlab=""))
lines(data2$Time3, data2$Sub_metering_1 , col = "black")
lines(data2$Time3, data2$Sub_metering_2 , col = "red")
lines(data2$Time3, data2$Sub_metering_3 , col = "blue")

legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png",width = 480, height = 480, units = "px")
dev.off()