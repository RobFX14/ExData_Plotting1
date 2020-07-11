data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
names(data)
conj<-subset(data,Date=="1/2/2007")
conj2<-subset(data,Date=="2/2/2007")
conj3<-rbind(conj,conj2) # Conjunto de Datos de 1-2-2007 y 2-2-2007 en conjunto.

#Abre dispositivo para generar y guardar grafico 1.
png(filename="plot1.png",width=480,height=480)
hist(as.numeric(conj3$Global_active_power),main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.off() # cierra el dispositivo y guarda el grafico.



