3 + 2
3+2
3+         2

5 - 4
4 / 7
3*5
3^2
3**2

# Assigining values to data objects

a <- 3
print(a)
a

b <- 4

5 -> b
b

4 + b
c <- 4 + b
c

three_bears
three_bears

nr_of_beers <- 3
nr_Of_beers <- 4

remove(nr_of_beers)
rm(nr_Of_beers)


# Your turn at page 7
#create a variable called nrOfChickens and
#give it a value of 4, create a
#variable called nrOfDogs and assign
#it a value of 5, create a variable called
#nrOfAnimals and assign it a value of 
#nrOfChickens + nrOfDogs.

# remove the object nrOfDogs.

nrOfChickens <- 4
nrOfDogs <- 5
nrOfAnimals <- nrOfChickens + nrOfDogs
nrOfAnimals

rm(nrOfDogs)
a <- 3
print(a)

a <- c(3, 4, 5.6, 7)
print(a)

# create a data object called length and assign to it a
# vector containing the following values: 5, 6, 8, 10

length <- c(5, 6, 8, 10)
length

animal <- c("cat", "dog", "bear", "elephant")

length + 5
length * 3

length + c(1, 2)

# data frames

mydata <- data.frame(animal, length)
mydata

rm(animal)
rm(length)
mydata

View(mydata)

mydata$animal
mydata$length

mydata$animal[-1]
mydata$animal[1]

mydata[1,2]
mydata[1,]
mydata[,2]

mydata$animal[c(-2, -3)]

mydata$width <- c(3, 3, 1, 1)
mydata

mydata$lengthsquared <- mydata$length**2
mydata

mydata$width

mydata["animal"]

animallength <- mydata[c("animal", "length")]
animallength


# your turn at page 11

mydata$volume <- mydata$length * mydata$width
animalvolume <- mydata[c("animal", "volume")]
animalvolume

mydata$volume <- NULL
mydata

# commands or functions

mean(mydata$length)

?mean
mean(mydata$length, trim = 0.25)

missing <- c(3, 4, 5, NA)
missing
mean(missing, na.rm = TRUE)

read.csv()

?read.csv

gdp <- read.csv("http://www.ut.ee/~iseppo/gdpestimate.csv")

summary(gdp)

head(gdp)
tail(gdp)
dim(gdp)
View(gdp)
