# This function creates a plot of histogram for Global Active Power. This function uses the base plotting system for plotting.

# Call the function Load_PowerData, to load and clean the data first.
source ("Load_PowerData.R")
powerdata <- load_data()

#Function to plot the histogram
 plot1 <- function() {
         #Save the plot as png file with width and height as 480.
		 png("plot1.png", width=480, height=480)
         #Plot histogram using Global Active Power as input
		 hist(powerdata$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
         dev.off()
 }
 
 #Call the function to plot the histogram and save it as png
 plot1()