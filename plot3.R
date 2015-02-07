if (!exists('consumption'))
  source('loadData.R')

png('plot3.png', width = 504, height = 504)

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
       lty    = 1)

dev.off()
