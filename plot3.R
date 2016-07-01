##############################################################################
# plot1.R - Create plot for Global Active Power usage for house hold.        #
#                                                                            #
# Author: Vikram Prasad                                                      #
##############################################################################

## First check whether it has the file in the current dir.
if (!"load_data.R" %in% list.files()) {
  setwd("C:/Users/vikram/Desktop/Big Data & Hadoop/Data Science Specialization/CourseraDir")
} 
source("load_powcon_data.R")
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()