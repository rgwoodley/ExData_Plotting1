plot2 <- function() {
  
  # Open Device name plot1.png"
  png("plot2.png")
  
  plot(hpcsub$DateTime, hpcsub$Global_active_power, type='l', ylab="Global Activet Power (kilowatts", xlab="")
  
  # Turn Device Off
  dev.off()
}