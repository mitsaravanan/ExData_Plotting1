# This function creates a plot for Global Active Power against days of the week for selected days. This function uses the base plotting system for plotting.

# Call the function Load_PowerData, to load and clean the data first.
source ("Load_PowerData.R")
powerdata <- load_data()

#Function to plot Global Active Power against days of the week for selected days
 plot2 <- function() {
         #Save the plot as png file with width and height as 480.
	 png("plot2.png", width=480, height=480)
         #Plot Global Active Power against days of the week for selected days
	 plot(powerdata$DateTime,powerdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
         dev.off()
 }
 
 #Call the function to plot save it as png
 plot2()