filename <- "./household_power_consumption.txt"
table <- read.table(filename, sep=";", skip = 66637, nrows = 2880) #from forums
dates <- strptime(paste(table[,1],table[,2]), "%d/%m/%Y %T")
plot(dates,table[,3],col="white", ylab="Global Active Power (kilowatts)", xlab="") #color set to white as a hack
#Dates are in Danish btw.
lines(dates,table[,3]) #adding in lines
dev.print(png, file="plot2.png", width=480, height=480)
dev.off()