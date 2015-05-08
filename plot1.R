data <- read.table("household_power_consumption.txt", header=F,  na.strings = "?", sep=";", skip = 66636, nrows = 2880)
header <- read.table("household_power_consumption.txt", header=TRUE,  na.strings = "?", sep=";", nrows = 1)
names(data) <- names(header)


png("plot1.png")
hist(data$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     col = "red")

dev.off()