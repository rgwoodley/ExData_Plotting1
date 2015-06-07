######################################################################################################## 
## plot3 - Create plot and create png file with output
##
## Author: Woodley, R.
######################################################################################################## 
createSubset <- function() {
  # Read Power consumption data
  hpc <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
  
  # Convert Date and Time to Posix format
  hpc$DateTime <- strptime(paste0(hpc$Date,' ',hpc$Time), '%d/%m/%Y %H:%M:%OS')
  
  # Create subset of dataset for the dates 02/01/2007 and -2/02/2007
  hpcsub <- hpc[format(hpc$DateTime, "%Y%m%d") == '20070201' | format(hpc$DateTime, "%Y%m%d") == '20070202',]
  
}
plot3 <- function() {
  # Create subset of date
  hpcsub <- createSubset()

  # Open Device name plot3.png"
  png("plot3.png")
  
  with(hpcsub, plot(DateTime, Sub_metering_3, type='n',  ylab="Energy sub metering", xlab='', ylim=c(0,38)))
  with(hpcsub, points(DateTime, Sub_metering_3, col="blue", type='l'))
  with(hpcsub, points(DateTime, Sub_metering_2, col="red", type='l'))
  with(hpcsub, points(DateTime, Sub_metering_1, col="black", type='l'))
  legend("topright",  col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lwd=1, lty=1 )
  
  # Turn Device Off
  dev.off()
}
