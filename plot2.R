data<-mutate(data, Time= as.character(Time))
data$Time <- strptime(data$Time, format = "%H:%M:%S")
data[1:1440, "Time"] <- format(data[1:1440, "Time"], "2007-02-01 %H:%M:%S")
data[1441:2880, "Time"] <- format(data[1441:2880, "Time"], "2007-02-02 %H:%M:%S")

plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
dev.copy(png,'plot2.png')
dev.off()
