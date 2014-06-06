# open a file, then plot and then save
png(file = "plot4.png", bg = "transparent")

# section the graph area into four
par(mfrow = c(2, 2))

# plot 1 : c(1,1)
plot(power$Datetime, power$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

# plot 2 c(1,2)
plot(power$Datetime, power$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# plot 3 c(2,1)
plot(power$Datetime, power$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
points(power$Datetime, power$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2", col = "red")
points(power$Datetime, power$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )

# plot 4 C(2,2)
plot(power$Datetime, power$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0, 0.5))

dev.off()
