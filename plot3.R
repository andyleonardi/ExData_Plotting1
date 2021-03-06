## Read data for the specific dates
plotdata=read.table("household_power_consumption.txt",sep=";",skip=grep("31/1/2007;23:59:00",readLines("household_power_consumption.txt")),nrows=2880)

## Create the chart
plot(1:2880,plotdata[,7],type="l",xaxt="n",xlab="",ylab="Energy sub metering")
lines(1:2880,plotdata[,8],col="red")
lines(1:2880,plotdata[,9],col="blue")
legend("topright",lty=1,col=c("black","red","blue"),cex=0.8,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
axis(1,c(1,1441,2880),c("Thu","Fri","Sat"))

## Copy the chart to a png file
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off() ## Close the png device