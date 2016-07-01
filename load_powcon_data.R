############################################################################
# load_powcon_data.R - This file will load power consuption dataset.       #
#                                                                          #
# Author: Vikram Prasad                                                    #
############################################################################

filename <- "./exdata_Fdata_Fhousehold_power_consumption/household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

# Number of rows - 2075259
# Number of cols - 9

dim(data) # 2075259 9
attach(data)

# Load data of only 2 days

subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)

x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10
attach(newData)
