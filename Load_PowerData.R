#This function loads the data set "household_power_consumption.txt" into data frame.
#The data is available at https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

load_data <- function() {
	#Load data into data frame
	powerdataraw = read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
	#Format date to R format
	powerdataraw$Date <- as.Date(powerdataraw$Date, format="%d/%m/%Y")
	#Filter data for the specified time frame.
	powerdata <- powerdataraw[(powerdataraw$Date=="2007-02-01") | (powerdataraw$Date=="2007-02-02"),]
	# Add a column with date and time to meet R format in POSIX format.
	powerdata$DateTime <- strptime((paste(powerdata$Date, powerdata$Time)), "%Y-%m-%d %H:%M:%S")
	powerdata$Sub_metering_1 <- as.numeric(as.character(powerdata$Sub_metering_1))
	powerdata$Sub_metering_2 <- as.numeric(as.character(powerdata$Sub_metering_2))
	powerdata$Sub_metering_3 <- as.numeric(as.character(powerdata$Sub_metering_3))
	powerdata
}


