######################################################################################################## 
## plot1 - Create Histogram and create png file with output
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
plot1 <- function() {
  
  # Create subset of date
  hpcsub <- createSubset()

  # Open Device name plot1.png
  png("plot1.png")
  
  # Create historgram
  hist(hpcsub$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")

  # Turn Device Off
  dev.off()
}
