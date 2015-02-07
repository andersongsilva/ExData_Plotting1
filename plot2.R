if (!exists('consumption'))
  source('loadData.R')

png('plot2.png', width = 504, height = 504)

plot(consumption$DateTime,
     consumption$Global_active_power,
     type = 'l',
     xlab = '',
     ylab = 'Global Active Power (kilowatts)')

dev.off()
