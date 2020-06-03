### Source code for Assignment 1:Exploratory Data Analysis:Week 1:Plot 2


###(1) Setting the working directory:


setwd("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1")


### (2) Loading the data in R:

data<- read.table("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1\\exdata_data_household_power_consumption\\household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?",  stringsAsFactors = FALSE, dec = ".")

### (3) Subsetting according to required dates

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

### (4) Converting the datetime into the correct format

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subSetData$Global_active_power)

### (5) Plot2

png("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1\\plot2.png",width = 480,height = 480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()