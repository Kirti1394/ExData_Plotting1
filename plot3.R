data$Sub_metering_1 <- as.numeric(as.character(data$Sub_metering_1))
data$Sub_metering_2 <- as.numeric(as.character(data$Sub_metering_2))
data$Sub_metering_3 <- as.numeric(as.character(data$Sub_metering_3))

plot(data$Time, data$Sub_metering_1, type= "n", xlab= "", ylab= "Energy Sub Metering")
with(data, lines(Time,Sub_metering_1))
with(data, lines(Time,Sub_metering_2, col="red"))
with(data, lines(Time,Sub_metering_3, col="blue"))
legend("topright",lty=1, col =c("black", "red", "blue"),
       legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3") )

dev.copy(png,'plot3.png')
dev.off()
