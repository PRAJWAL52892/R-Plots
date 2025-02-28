#Question 1 (Plot 1)
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
my_data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
names(my_data)
my_data$Date <- as.Date(my_data$Date, format = "%d/%m/%Y")
png(file="plot 1.png", width = 480, height = 480)
hist(my_data$Global_active_power, col = "red",  xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off()