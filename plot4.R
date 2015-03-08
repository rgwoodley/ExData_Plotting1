##########################################################################################
## plot4 - Creates a 4 grids of different plots and write to png file.
##
## Author: Woodley, R.
########################################################################################## 
plot4 <- function() {
  # Open Device name plot4.png"
  png("plot4.png")
  
  par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0)) 

  with(hpcsub, {
    plot(DateTime, Global_active_power, type='l', ylab="Global Activity Power", xlab="")
    plot(DateTime, Voltage, type='l', ylab="Voltage", xlab="datatime")
    
    
    plot(DateTime, Sub_metering_3, type='n',  ylab="Energy sub metering", xlab='', ylim=c(0,38))
    points(DateTime, Sub_metering_3, col="blue", type='l')
    points(DateTime, Sub_metering_2, col="red", type='l')
    points(DateTime, Sub_metering_1, col="black", type='l')
    legend("topright",  col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lwd=1, lty=1, cex=.66, bty = "n")
   
    plot(DateTime, Global_reactive_power, type='l', ylab="Global_reactive_power", xlab="datatime")
    
    # Turn Device Off
    dev.off()
  })
}