data$Voltage <- as.numeric(as.character(data$Voltage))
data$Global_reactive_power<-as.numeric(as.character(data$Global_reactive_power))
par(mfrow=c(2,2))
with(data,{
  plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
  plot(data$Time, data$Voltage, type="l", xlab= "datetime", ylab="Voltage")
  plot(data$Time, data$Sub_metering_1, type= "n", xlab= "", ylab= "Energy Sub Metering")
  with(data, lines(Time,Sub_metering_1))
  with(data, lines(Time,Sub_metering_2, col="red"))
  with(data, lines(Time,Sub_metering_3, col="blue"))
  legend("topright",lty=1, col =c("black", "red", "blue"),
         legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3") )
  plot(data$Time, data$Global_reactive_power, type="l", xlab= "datetime", ylab="Global_reactive_power")
})

dev.copy(png,'plot4.png')
dev.off()
