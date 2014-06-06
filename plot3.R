# open a file, then plot and then save
png(file = "plot3.png", bg = "transparent")

plot(power$Datetime, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(power$Datetime, power$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(power$Datetime, power$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
