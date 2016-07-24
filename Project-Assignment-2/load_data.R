##############################################################################
# Load_data.R - Code to load and unzip data file.                            #
#                                                                            #
# Author: Vikram Prasad                                                      #
##############################################################################

setwd("C:/Users/vikram/Desktop/Big Data & Hadoop/Data Science Specialization/CourseraDir/Coursera-Exploratory-Data-Analysis/ExData_Plotting2/")
unzip("./data/exdata-data-NEI_data.zip", exdir = "./data/")
# Check if both data exist. If not, load the data.
if (!"neiData" %in% ls()) {
    neiData <- readRDS("./data/summarySCC_PM25.rds")
}
if (!"sccData" %in% ls()) {
    sccData <- readRDS("./data/Source_Classification_Code.rds")
}
head(neiData)
head(sccData)
dim(neiData) # 6497651   6
dim(sccData) # 11717    15

