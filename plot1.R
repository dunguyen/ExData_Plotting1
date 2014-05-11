filename <- "./household_power_consumption.txt"
table <- read.table(filename, sep=";", skip = 66637, nrows = 2880) #from forums
hist(table[,3],xlab="Global Active Power (kilowatts)",col="red", main="Global Active Power")
dev.print(png, file="plot1.png", width=480, height=480)
dev.off()