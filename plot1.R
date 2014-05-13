mydata <- read.csv2("https://raw.githubusercontent.com/fmoedrit/ExData_Plotting1/master/hpc_feb2007.csv", header=TRUE, sep=";", dec=".", quote="\"", row.names=1);

# filtering entries from 01-02-2007 and 02-02-2007
ind1 <- which(mydata$Date == '1/2/2007');
ind2 <- which(mydata$Date == '2/2/2007');
mydata_f <- mydata[ c(ind1, ind2) , ];

# create plot 1: histogramm of global active power
hist(
  as.numeric(paste(mydata_f$Global_active_power)), col="red",
  main="Global Active Power", xlab="Global Active Power (kilowatts)"
);

