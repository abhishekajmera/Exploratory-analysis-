household_power_consumption <- read.csv("C:/Users/Abhishek/Desktop/CSV files/household_power_consumption.txt", sep=";",na.strings = "?")
data<-data.frame(household_power_consumption)
png("plot3.png", width=480, height=480)
data<-filter(data,data$Date %in% c("1/2/2007","2/2/2007") , )
data$x<- strptime(paste(data$Date, data$Time,sep=" "), "%d/%m/%Y %H:%M:%S")

plot(data$x,as.numeric(data$Sub_metering_1),type="l",xlab="",ylab="Energy sub meeting")
lines(data$x,as.numeric(data$Sub_metering_2),type="l",xlab="", ,col="red")
lines(data$x,as.numeric(data$Sub_metering_3),type="l",xlab="" ,col="blue")
legend("topright",legend=c("Sub_meeting_1","Sub_meeting_2","Sub_meeting_3"),col=c("black","red","blue"),lty=1)

dev.off();