## Read data for the specific dates
plotdata=read.table("household_power_consumption.txt",sep=";",skip=grep("31/1/2007;23:59:00",readLines("household_power_consumption.txt")),nrows=2880)

## Create the histogram
hist(plotdata[,3],col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")

## Copy the chart to a png file
dev.copy(png,file="plot1.png")
dev.off() ## Close the png device
