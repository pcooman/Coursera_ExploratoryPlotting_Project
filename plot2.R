data <- read.table("household_power_consumption.txt", header=F,  na.strings = "?", sep=";", skip = 66636, nrows = 2880)
header <- read.table("household_power_consumption.txt", header=TRUE,  na.strings = "?", sep=";", nrows = 1)
names(data) <- names(header)

png("plot2.png")
plot(1:length(data$Time), data$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     xaxt = "n")
axis(1,at = c(1,length(data$Time)/2,length(data$Time)), labels = c("Thu","Fri","Sat"))
dev.off()