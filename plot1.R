if (!exists('consumption'))
  source('loadData.R')

png('plot1.png', width=504, height = 504)

hist(consumption$Global_active_power,
     freq = T,
     col  = 'red',
     main = 'Global Active Power',
     xlab = 'Global Active Power (kilowatts)')

dev.off()
