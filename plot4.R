filename <- "./household_power_consumption.txt"
table <- read.table(filename, sep=";", skip = 66637, nrows = 2880) #from forums
dates <- strptime(paste(table[,1],table[,2]), "%d/%m/%Y %T")
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
#plot upper left
#Dates are in Danish btw.
plot(dates,table[,3],col="white", ylab="Global Active Power", xlab="") #color set to white as a hack
lines(dates,table[,3],lty=1,col="black")
#plot upper right
plot(dates,table[,5],col="white", ylab="Voltage", xlab="datetime") #color set to white as a hack
lines(dates,table[,5],lty=1,col="black")
#plot lower left
plot(dates,table[,7],col="white", ylab="Energy sub metering", xlab="") #color set to white as a hack
lines(dates,table[,7],lty=1,col="black") #adding in lines
lines(dates,table[,8],lty=1,col="red") #adding in lines
lines(dates,table[,9],lty=1,col="blue") #adding in lines
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = c(1,1,1), col=c("black", "blue", "red"), bty = "n")
#plot lower right
plot(dates,table[,4],col="white", ylab="Global_reactive_power", xlab="datetime") #color set to white as a hack
lines(dates,table[,4],lty=1,col="black")
dev.off()
