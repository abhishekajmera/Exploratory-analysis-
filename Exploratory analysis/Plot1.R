household_power_consumption <- read.csv("C:/Users/Abhishek/Desktop/CSV files/household_power_consumption.txt", sep=";",na.strings = "?")
data<-data.frame(household_power_consumption)
library(dplyr)
png("plot1.png", width=480, height=480)
data<-filter(data,data$Date %in% c("1/2/2007","2/2/2007") , )

hist(as.numeric(data$Global_active_power),col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off();
