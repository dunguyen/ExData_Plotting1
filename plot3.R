filename <- "./household_power_consumption.txt"
table <- read.table(filename, sep=";", skip = 66637, nrows = 2880) #from forums
dates <- strptime(paste(table[,1],table[,2]), "%d/%m/%Y %T")
png("plot3.png", width=480, height=480)
plot(dates,table[,7],col="white", ylab="Energy sub metering", xlab="") #color set to white as a hack
#Dates are in Danish btw.
lines(dates,table[,7],lty=1,col="black") #adding in lines
lines(dates,table[,8],lty=1,col="red") #adding in lines
lines(dates,table[,9],lty=1,col="blue") #adding in lines
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = c(1,1,1), col=c("black", "blue", "red"))
dev.off()

