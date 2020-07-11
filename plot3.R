data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
names(data)
conj<-subset(data,Date=="1/2/2007")
conj2<-subset(data,Date=="2/2/2007")
conj3<-rbind(conj,conj2) # Conjunto de Datos de 1-2-2007 y 2-2-2007 en conjunto.
com<-strptime(conj3$Time,"%H:%M:%S")
sm<-paste(conj3$Date,conj3$Time)
x<-strptime(sm,"%d/%m/%Y %H:%M:%S") #convierte los datos de Date y Time a formato adecuado.

#Abre dispositivo para generar y guardar grafico 3.
png(filename="plot3.png",width=480,height=480)
plot(x,as.numeric(conj3$Sub_metering_1),col="black",type="l",xlab="Date",ylab="Energy Sub Metering")
lines(x,as.numeric(conj3$Sub_metering_2),col="red",type="l")
lines(x,as.numeric(conj3$Sub_metering_3),col="blue",type="l")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
