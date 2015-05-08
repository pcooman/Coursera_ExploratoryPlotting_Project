data <- read.table("household_power_consumption.txt", header=F,  na.strings = "?", sep=";", skip = 66636, nrows = 2880)
header <- read.table("household_power_consumption.txt", header=TRUE,  na.strings = "?", sep=";", nrows = 1)
names(data) <- names(header)

png("plot4.png")
par(mfrow = c(2,2))

plot(1:length(data$Time), data$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power",
     xaxt = "n")
axis(1,at = c(1,length(data$Time)/2,length(data$Time)), labels = c("Thu","Fri","Sat"))

plot(1:length(data$Time), data$Voltage, 
     type = "l",
     xlab = "datetime",
     ylab = "Voltage",
     xaxt = "n",
     yaxt = "n")
axis(1,at = c(1,length(data$Time)/2,length(data$Time)), labels = c("Thu","Fri","Sat"))
axis(2,at = c(234,236,238,240,242,244,246), labels = c("234","","238","","242","","246"))

matplot(data[,7:9], 
     type = "l",
     lty = 1,
     col = c("black", "red", "blue"),
     xlab = "",
     ylab = "Energy sub metering",
     xaxt = "n")
axis(1,at = c(1,length(data$Time)/2,length(data$Time)), labels = c("Thu","Fri","Sat"))

legend("topright", 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty = c(1,1,1),
       col = c("black","red","blue"),
       bty = "n")

plot(1:length(data$Time), data$Global_reactive_power, 
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power",
     xaxt = "n")
axis(1,at = c(1,length(data$Time)/2,length(data$Time)), labels = c("Thu","Fri","Sat"))
dev.off()