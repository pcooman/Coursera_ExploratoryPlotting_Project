data <- read.table("household_power_consumption.txt", header=F,  na.strings = "?", sep=";", skip = 66636, nrows = 2880)
header <- read.table("household_power_consumption.txt", header=TRUE,  na.strings = "?", sep=";", nrows = 1)
names(data) <- names(header)

png("plot3.png")
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
       col = c("black","red","blue"))

dev.off()