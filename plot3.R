plot3 <- function() {
  # Open Device name plot1.png"
  png("plot3.png")
  
  with(hpcsub, plot(DateTime, Sub_metering_3, type='n',  ylab="Energy sub metering", xlab='', ylim=c(0,38)))
  with(hpcsub, points(DateTime, Sub_metering_3, col="blue", type='l'))
  with(hpcsub, points(DateTime, Sub_metering_2, col="red", type='l'))
  with(hpcsub, points(DateTime, Sub_metering_1, col="black", type='l'))
  legend("topright",  col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lwd=1, lty=1 )
  
  # Turn Device Off
  dev.off()
}