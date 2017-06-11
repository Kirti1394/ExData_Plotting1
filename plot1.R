data<- read.csv2("household_power_consumption.txt", header = T, sep =";")
library('dplyr')
library('ggplot2')
data<- mutate(data, Date= as.character(Date))
data <- mutate(data, Date = as.Date(Date, format = "%d/%m/%Y"))
data <-filter(data, Date =="2007-02-01" | Date == "2007-02-02")
data<-mutate(data, Global_active_power= as.numeric(as.character(Global_active_power)))

hist(data$Global_active_power, main ="Global Active Power", 
     xlab ="Global Active Power (kilowatts)",
     ylab= "Frequency", col="red")
dev.copy(png,'plot1.png')
dev.off()
