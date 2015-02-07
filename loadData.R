consumption <- read.csv('household_power_consumption.txt',
                        header     = T,
                        sep        = ';',
                        colClasses = c('character', 'character',
                                       rep('numeric', 7)),
                        na         = '?')

date.subset <- consumption$Date == '1/2/2007' | consumption$Date == '2/2/2007'
consumption <- subset(consumption, date.subset)

consumption$Date     <- as.Date(consumption$Date, format = '%d/%m/%Y')
consumption$DateTime <- as.POSIXct(paste(consumption$Date, consumption$Time))
