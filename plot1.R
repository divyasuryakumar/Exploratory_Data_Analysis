# read the text file
power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

# read only the required parts into power
power <- subset(power, as.Date(Date) == "1/2/2007" | as.Date(Date) == "2/2/2007")

# open a file to save
png(file = "plot1.png", bg = "transparent")
hist(power$Global_active_power, col = "Red", breaks = 12, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", ylim = c(0, 1200), xlim = c(0, 6), xaxp = c(0, 6, 3))
dev.off()