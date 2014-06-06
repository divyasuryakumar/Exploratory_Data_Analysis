# get data and time together as another field
power$Datetime <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")

# open a file, then plot and then save
png(file = "plot2.png", bg = "transparent")
plot(power$Datetime, power$Global_active_power, col = "black", type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
