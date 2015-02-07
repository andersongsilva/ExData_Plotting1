if (!exists('consumption'))
  source('loadData.R')

png('plot4.png', width=504, height = 504)

par(mfrow = c(2, 2))

#Plot top left
plot(consumption$DateTime,
     consumption$Global_active_power,
     type = 'l',
     xlab = '',
     ylab = 'Global Active Power')

#Plot top right
plot(consumption$DateTime,
     consumption$Voltage,
     type = 'l',
     xlab = 'datetime',
     ylab = 'Voltage')

#Plot bottom left
plot(consumption$DateTime,
     consumption$Sub_metering_1,
     type = 'l',
     col  = 'black',
     xlab = '',
     ylab = 'Energy sub metering')

lines(consumption$DateTime,
      consumption$Sub_metering_2,
      col = 'red')

lines(consumption$DateTime,
      consumption$Sub_metering_3,
      col = 'blue')

legend('topright',
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col    = c('black', 'red', 'blue'),
       lty    = 1,
       bty    = 'n')

#Plot bottom right
plot(consumption$DateTime,
     consumption$Global_reactive_power,
     type = 'l',
     xlab = 'datetime',
     ylab = 'Global_reactive_power')

dev.off()
