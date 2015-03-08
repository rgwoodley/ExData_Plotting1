######################################################################################################## 
## plot1 - Create Histogram and create png file with output
##
## Author: Woodley, R.
######################################################################################################## 
plot1 <- function() {
  
  # Open Device name plot1.png
  png("plot1.png")
  
  # Create historgram
  hist(hpcsub$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kwh)")

  # Turn Device Off
  dev.off()
}