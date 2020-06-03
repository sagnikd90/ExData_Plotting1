
### Source code for Assignment 1:Exploratory Data Analysis:Week 1:Plot 1

###(1) Setting the working directory:


setwd("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1")


### (2) Loading the data in R:

df<- as.data.frame(read.csv("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1\\exdata_data_household_power_consumption\\household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?", nrows = 2075259,check.names = FALSE, stringsAsFactors = FALSE, comment.char = ""))
dim(df)
names(df)
typeof(df$Date)


### (3) As per the question, we just need to check how the household energy consumption varies over a two day period in February. So using the 1st and 2nd of February would suffice. Hence, we can subset the data.


df1<- subset(df,Date %in% c("1/2/2007", "2/'2/2007"))



###(4) As per instructions, we need to convert the dates into the date format:



df1$Date <- as.Date(df1$Date, format="%d/%m/%Y")



### Plot1


png("C:\\Users\\das90\\OneDrive\\Coursera courses\\John Hopkins\\R Codes and Files\\Exploratory Data Analysis\\ExData_Plotting1\\plot1.png",width = 480,height = 480)
hist(df1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
