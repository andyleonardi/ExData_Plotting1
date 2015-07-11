## Read data for the specific dates
plotdata=read.table("household_power_consumption.txt",sep=";",skip=grep("31/1/2007;23:59:00",readLines("household_power_consumption.txt")),nrows=2880)

## Create the chart
plot(1:2880,plotdata[,3],type="l",xaxt="n",xlab="",ylab="Global Active Power (kilowatts)")
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))

## Copy the chart to a png file
dev.copy(png,file="plot2.png")
dev.off() ## Close the png device