par(mfrow=c(2,2), mar = rep(2, 4))
plot(df$Date_Time, df$Voltage, type="l", xlab="", ylab="Voltage")
plot(df$Date_Time, df$Global_reactive_power, type= "h",xlab="datetime", ylab="Global_reactive_power")
