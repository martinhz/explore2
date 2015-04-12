
data <- read.delim("./data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings="?")
data2 <- data[which(data$Date == "1/2/2007" | data$Date == "2/2/2007"),]

par(mfcol = c(1, 1))
Sys.setlocale("LC_ALL", "English")

hist(data2$Global_active_power, col="red", main="Global Active power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png",width = 480, height = 480, units = "px")
dev.off()