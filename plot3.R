# This function creates a plot for Sub_metering. This function uses the base plotting system for plotting.

# Call the function Load_PowerData, to load and clean the data first.
source ("Load_PowerData.R")
powerdata <- load_data()

#Function to plot Sub_metering.
 plot3 <- function() {
         #Save the plot as png file with width and height as 480.
		 png("plot3.png", width=480, height=480)
         #plot Sub_metering.
		 plot(powerdata$DateTime,powerdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
         lines(powerdata$DateTime,powerdata$Sub_metering_2,col="red")
         lines(powerdata$DateTime,powerdata$Sub_metering_3,col="blue")
         #Add a legend for sub metering
		 legend("topright","(x,y)", col=c("black","red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), lwd=c(1,1))
         dev.off()
 }

 #Call the function to plot save it as png
 plot3()