library(dplyr)
library(lubridate)

# reading relevant data from data set
data <- read.table("C:/Users/David/Documents/R/Exploratory Data Analysis/household_power_consumption.txt", sep=";", skip=66637, nrows=2880)

# clearing name row and unrelevant variables
data <- data %>% select(V3) %>% mutate(V3 = as.numeric(as.character(V3)))

#create histogram
png("plot1.png", width=480, height=480)
hist(data$V3, col = "red", main ="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")