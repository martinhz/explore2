
data <- read.delim("./data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
data2 <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]
data2$Time3 <- strptime(paste(data2$Date, data2$Time, sep=" "),  format("%d/%m/%Y %H:%M:%S"))

par(mfcol = c(1, 1))
Sys.setlocale("LC_ALL", "English")

plot(data2$Time3,data2$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)",col="black")
dev.copy(png, file = "plot2.png",width = 480, height = 480, units = "px")
dev.off()