library(tidyverse)
piaac <- read.csv("http://www.ut.ee/~iseppo/piaacENG.csv")

names(piaac)
ggplot(data = piaac, aes(x = Numeracy, y = Income)) +
#  geom_point(size = 5, color = "blue", aes(shape = Health)) +
  geom_smooth()

?geom_point

ggplot(data = piaac, aes(x = Numeracy, y = Income)) +
  geom_point(aes(color = Health)) +
  facet_wrap(~Health)



# your turn on page 16
gdp <- read.csv("http://www.ut.ee/~iseppo/gdpestimate.csv")

names(gdp)
str(gdp)




library(lubridate)
gdp$date <- ymd(gdp$date)
names(gdp)


p <- ggplot(data = gdp, aes(x = date, y = firstEstimate)) +
  geom_line() +
  geom_line(aes(y = latestEstimate), color = "red") 

ggsave(p, filename = "gdp.png", height = 5, width = 7,
       scale = 1.1, dpi = 300)
?ggsave

ggplot(data = gdp, aes(x = date, y = firstEstimate)) +
  geom_line() +
  geom_line(aes(y = latestEstimate), color = "red") +
  labs(title = "gdp", subtitle = "estonia",
       caption ="data: Statistics Estonia",
       y = "Growth", x = "year")


ggplot(data = piaac, aes(x = Numeracy, y = Income)) +
  geom_smooth(method = "lm") +
  facet_wrap(~Education, ncol = 2)

piaac2 <- filter(piaac, !is.na(children))
ggplot(data = piaac2, aes(x = Numeracy, y = Income)) +
  geom_smooth(method = "lm") +
  facet_grid(children ~ Education)


#Your turn at page 17

ggplot(data = piaac, aes(x = gender, y = Income)) +
  geom_boxplot(aes(color = Education), outlier.shape = NA)

ggplot(data = piaac, aes(x = Education, y = Income)) +
  geom_violin(aes(color = gender)) +
  facet_wrap(~children)


# themes in ggplot2

ggplot(data = piaac, aes(x = gender, y = Income)) +
  geom_boxplot(aes(color = Education), outlier.shape = NA) +
  theme_minimal()

install.packages("ggthemes")
library(ggthemes)

ggplot(data = piaac, aes(x = gender, y = Income)) +
  geom_boxplot(aes(color = Education), outlier.shape = NA) +
  theme_excel()

install.packages("hrbrthemes")


install.packages("gapminder")
library(gapminder)
library(tidyverse)
gapminder

gapminder2007 <- filter(gapminder, year == 2007)
gapminder19622007 <- filter(gapminder, year %in% c(1962, 2007))

?ggplot
ggplot(piaac, aes(x=age, y = Income)) +
 # geom_point(alpha = 0.2, size = 0.5) +
  geom_smooth(aes(color = gender)) +
  facet_wrap(~gender)


# to read excel files

library(readxl)
mydata <- read_excel("filename.xlsx", sheet = 1, 
                     range = "A1:C4")

