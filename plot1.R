setwd("c:/Yasith/Learning/R/Coursera Course - Exploratory Data Analysis/Assignment")
main <- read.table("household_power_consumption.txt", sep=";", header=TRUE)

class(main$Date)
main$Date <- as.Date(main$Date, "%d/%m/%Y")
class(main$Date)

class(main$Time)
abc <- paste(main$Date, main$Time, sep=",")
xyz_1 <- strptime(abc, format="%y-%m-%d,%H:%M:%S")
library(lubridate)
main$Date_Time <- ymd_hms(abc)


df <- main["2007-02-01" == main$Date | main$Date == "2007-02-02" ,]

df$Global_active_power <- as.integer(df$Global_active_power)

#why does the graph look similar to the coursera graph why we divide by 600?
df$Global_active_power <- df$Global_active_power / 600
hist(df$Global_active_power, col = "red", breaks = 12, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frquency")
