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
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()