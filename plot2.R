######################################################################################################## 
## plot2 - Create plot and create png file with output
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
plot2 <- function() {
  
  # Create subset of date
  hpcsub <- createSubset()

  # Open Device name plot2.png"
  png("plot2.png")
  
  plot(hpcsub$DateTime, hpcsub$Global_active_power, type='l', ylab="Global Active Power (kilowatts", xlab="")
  
  # Turn Device Off
  dev.off()
}
