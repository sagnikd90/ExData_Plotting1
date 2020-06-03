### Source code for Assignment 1:Exploratory Data Analysis:Week 1:Plot 3


###(1) Setting the working directory:


setwd("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1")


### (2) Loading the data in R:

data<- read.table("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1\\exdata_data_household_power_consumption\\household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?",  stringsAsFactors = FALSE, dec = ".")

### (3) Subsetting according to required dates

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

### (4) Converting the datetime into the correct format

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


### (5) Subsetting the required data:


globalActivePower <- as.numeric(subSetData$Global_active_power)
voltage<- as.numeric(subSetData$Voltage)
submetering1<- as.numeric(subSetData$Sub_metering_1)
submetering2<- as.numeric(subSetData$Sub_metering_2)
submetering3<- as.numeric(subSetData$Sub_metering_3)
globalreactivepower<- as.numeric(subSetData$Global_reactive_power)


### (6) plot6:

png("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1\\plot4.png",width = 480,height = 480)

par(mfrow=c(2,2))

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime,submetering1,type = "l", ylab = "Energy Submetering", xlab = "")
lines(datetime,submetering2,type="l",col="red")
lines(datetime,submetering3,type="l",col="blue")

plot(datetime, globalreactivepower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
