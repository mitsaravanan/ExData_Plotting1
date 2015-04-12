# This function creates 4 plots in a single png file. This function uses the base plotting system for plotting.

# Call the function Load_PowerData, to load and clean the data first.
source ("Load_PowerData.R")
powerdata <- load_data()

#This function creates 4 plots in a single png file.
  plot4 <- function() {
         #Save the plot as png file with width and height as 480.
		 png("plot4.png", width=480, height=480)
         par(mfrow=c(2,2))
         
         #PLOT 1 - Global active power
         plot(powerdata$DateTime,powerdata$Global_active_power, type="l", xlab="", ylab="Global Active Power")
         
	 #PLOT 2 - Voltage
         plot(powerdata$DateTime,powerdata$Voltage, type="l", xlab="datetime", ylab="Voltage")
         
         #PLOT 3 - Energy sub metering.
         plot(powerdata$DateTime,powerdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
         lines(powerdata$DateTime,powerdata$Sub_metering_2,col="red")
         lines(powerdata$DateTime,powerdata$Sub_metering_3,col="blue")
         #Add a legend for the plot
	 legend("topright", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), bty="n", cex=.9) 
         
         #PLOT 4 - Global_active_power
         plot(powerdata$DateTime,powerdata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
         dev.off()
         
 }
 #Call the function to plot save it as png
 plot4()