3 + 4

a <- 15

remove(a)
a

myvector <- c(3, 4, 5.6, 7)
myvector

gdp
gdp$year

gdp$difference <- gdp$firstEstimate - gdp$latestEstimate 
gdp

functionname()
?mean
mean(gdp$difference)
# the function to use is: abs()
gdp$absdifference <- abs(gdp$difference)
?abs
mean(gdp$absdifference)
View(gdp)

cor(gdp$firstEstimate, gdp$latestEstimate)

piaac <- read.csv("http://www.ut.ee/~iseppo/piaacENG.csv")
View(piaac)

write.csv(piaac, file = "piaac.csv")
piaac2 <- read.csv("piaac.csv")
piaac
View(piaac)


piaac <- read.csv("http://www.ut.ee/~iseppo/piaacENG.csv") 

dim(piaac)

piaac <- read.csv("http://www.ut.ee/~iseppo/piaacENG.csv")

?quantile
quantile(piaac$Income, probs = c(0.1, 0.5), na.rm = TRUE)


?write.csv
write.csv(gdp, file = "gdpnew.csv", row.names = FALSE)
write.csv2(gdp, file="gdpnew2.csv", row.names = FALSE, sep = ";")
?write.csv
quantile(piaac$Income, probs = c(0.1, 0.5), na.rm = TRUE)

save(gdp, file="gdp.rdat")
rm(gdp)
gdp
load("gdp.rdat")
gdp


# data types

a <- 5
a
class(a)

mypet <- "dog"
class(mypet)
mypet


b <- TRUE
class(b)


class(gdp$year)

# weakly typed language

c(3, 4, "cat", 5)

a <- 4
a
class(a)
a <- as.character(a)
a
a + 5
a <- as.numeric(a)
a + 5

as.numeric("dog")

# additional packages in R

# readxl

library(readxl)
#CRAN - comprehensive R Archive network

#read_excel("blabla.xlsx", sheet=2, range = "A1:C5")

?read_excel

read_excel("C:/myfolder/filename.xlsx")


install.packages("tidyverse")
install.packages("lubridate")

library(lubridate)

dates <- read.csv("http://www.ut.ee/~iseppo/dates.csv")
View(dates)
summary(dates)

dmy()
mdy()

dmy("01-9-1997")

dmy("16akdäöesaapowewskädaäöadsjsfdkj7äajfösewopjklädsfaouafdks2022")

dates
library(lubridate)

head(dates, n = 5)
dates$date1 <- ymd(dates$date1)
summary(dates)
class(dates$date1)

head(dates)
dates$date2 <- dmy(dates$date2)
summary(dates)

dmy("03-04-1978") %--% today() / months(1)
dmy("03-04-1978") %--% today() / hours(1)
dmy("03-04-1978") %--% today() / weeks(1)
dmy("03-04-1978") %--% today() / minutes(1)

# your turn on page 4 
dates <- read.csv("http://www.ut.ee/~iseppo/dates.csv")
head(dates)
dates$date3 <- dmy(dates$date3)
dates$date4 <- ydm(dates$date4)

dates$difference <- dates$date3 %--% dates$date4 / days(1)
dates

View(dates)
