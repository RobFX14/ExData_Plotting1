data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
names(data)
conj<-subset(data,Date=="1/2/2007")
conj2<-subset(data,Date=="2/2/2007")
conj3<-rbind(conj,conj2) # Conjunto de Datos de 1-2-2007 y 2-2-2007 en conjunto.
com<-strptime(conj3$Time,"%H:%M:%S")
sm<-paste(conj3$Date,conj3$Time)
x<-strptime(sm,"%d/%m/%Y %H:%M:%S") #convierte los datos de Date y Time a formato adecuado.

#Abre dispositivo para generar y guardar grafico 2.
png(filename="plot2.png",width=480,height=480)
plot(x,as.numeric(conj3$Global_active_power),type="l",xlab="Date",ylab="Global Active Power (kilowatts)")
dev.off()
