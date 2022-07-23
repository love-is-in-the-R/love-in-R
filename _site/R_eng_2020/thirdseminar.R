# how to get data in

read.csv()

#for excel readxl
#install.library("readxl")
library(readxl)
read_xlsx("filename.xlsx", sheet = 1, range = "A1:CD34")

# haven
#spss, sas, stata

#read_sav()
#read_dta()
#read_sas()

#foreign

# feather 
install.packages("wbstats")
library(wbstats)
wbsearch("GDP per capita")
gdp_data <- wb_data("NY.GDP.MKTP.PP.KD")

library(tidyverse)

# logic in R and filtering data in R

3 > 5
5 < 3
3 < 5
4 <= 4
4 >= 5
4 == 5
4 != 5

library(tidyverse)
summary(piaac)

piaac <- read.csv("http://www.ut.ee/~iseppo/piaacENG.csv")

names(piaac)
unique(piaac$gender)
View(piaac)
unique(piaac$Education)

names(piaac)
str(piaac)

summary(piaac)
unique(piaac$gender)
onlymen <- subset(piaac, gender == "Male")
View(onlymen)
library(tidyverse)

onlymen <- filter(piaac, gender == "Male")

onlymen <- subset(piaac, gender == "Male")
oldmen <- filter(piaac, gender == "Male", age > 50)
names(piaac)
unique(piaac$Health)
women <- filter(piaac, gender == "Female", age < 60, age > 30,
       Income > 700, Health == "Excellent")
women
library(tidyverse)
unique(piaac$Health)

goodhealth <- filter(piaac, Health %in% c("Very good",
                                          "Excellent"))

View(piaac)
!is.na()

filter(piaac, !is.na(livingwithspouse))

mean(piaac$Income, na.rm = TRUE)

filter(piaac, !is.na(livingwithspouse))

piaac_withincome <- filter(piaac, !is.na(Income))
mean(piaac_withincome$Income)

# Hadley Wickham

unique(piaac$Health)

filter(piaac, Health %in% c("Poor", "Fair"))
unique(piaac$age)


# GGPLOT
ggplot() +
  geom_point(data = piaac, aes(x = Numeracy, 
                               y = Income, 
                               color = gender, 
                               shape = Health),
             alpha = 0.5) +
  geom_smooth(data = piaac, aes(x = Numeracy, y = Income))

#aesthetics
?geom_point
?geom_smooth
ggplot(data = piaac, aes(x = Numeracy, y = Income)) +
#  geom_point() +
  geom_smooth() +
  facet_wrap(~Education)

# your turn at page 16