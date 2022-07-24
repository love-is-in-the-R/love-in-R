################################################################
#                                                              #
#     PRINCIPLES & PRACTICE OF DATA VISUALIZATION WITH R       #
#                                                              #
################################################################

# PACKAGES
install.packages("readxl")
install.packages("wooldridge")
install.packages("ggplot2")

# IMPORT DATASETS

## Import "mtcars" from -base R-

data(mtcars)

help(mtcars)   # info about DataFrane
?mtcars        # info about DataFrame

## Import "wage1" from -wooldridge- package & from excel file

library(readxl)
wage <- read_excel(file.choose())

wage1 <- read_excel("C:/Users/Administrator/Desktop/R MENTOR CLASS/wage.xlsx")
wage2 <- read_excel("C:\\Users\\Administrator\\Desktop\\R MENTOR CLASS\\wage.xlsx")

rm(wage1)   # rm is short for 'remove' - removes objects from environment
rm(wage2)

library(wooldridge)
data("wage1")

## Import "diamonds" from -ggplot2- package

library(ggplot2)
data("diamonds")

## Import "economics" dataframe from -ggplot2-
data(economics)

# GRAMMAR OF GRAPHICS PLOTS

## GGPLOT LAYERS
# 1. Data
# 2. Aesthetics
# 3. Geometries
# 4. Facets
# 5. Statistics
# 6. Coordinates
# 7. Themes

# Now, let's do some coding



########################  DATA   ######################## 

ggplot(data = mtcars)
ggplot(mtcars)



#####################  AESTHETICS  ###################### 

ggplot(data = mtcars, mapping = aes(x = mpg))
ggplot(mtcars, aes(mpg))

ggplot(data = mtcars, mapping = aes(x = mpg, y = disp))
ggplot(mtcars, aes(mpg, disp))

#####################  GEOMETRIES   ##################### 

ggplot(data = mtcars, mapping = aes(x = mpg)) + 
  geom_histogram()

ggplot(data = mtcars, mapping = aes(x = mpg, y = disp)) +
  geom_point()


## TYPES OF VARIABLES AND PLOTS


### ONE VARIABLE - DISCRETE

head(mtcars)
unique(mtcars$cyl)

ggplot(data = mtcars, aes(x = cyl)) + geom_bar()
ggplot(data = mtcars, aes(y = cyl)) + geom_bar()

unique(mtcars$vs)

ggplot(data = mtcars, aes(x = vs)) + geom_bar()

head(wage)

ggplot(data = wage, aes(x = female)) + geom_bar()

head(diamonds)

ggplot(data = diamonds, aes(x = color)) + geom_bar()

### ONE VARIABLE - CONTINUOUS

ggplot(data = mtcars, aes(x = mpg)) + geom_histogram()
ggplot(data = mtcars, aes(x = mpg)) + geom_density()
ggplot(data = mtcars, aes(x = mpg)) + geom_dotplot()
ggplot(data = mtcars, aes(x = mpg)) + geom_freqpoly()

head(wage)

ggplot(data = wage, aes(x = wage)) + geom_histogram()
ggplot(data = wage, aes(x = wage)) + geom_density()
ggplot(data = wage, aes(x = wage)) + geom_dotplot()
ggplot(data = wage, aes(x = wage)) + geom_freqpoly()

### TWO VARIABLES - BOTH CONTINUOUS

head(mtcars)

ggplot(data = mtcars, aes(x = mpg, y = wt)) + geom_point()
ggplot(data = mtcars, aes(x = mpg, y = wt)) + geom_quantile()
ggplot(data = mtcars, aes(x = mpg, y = wt)) + geom_rug()

ggplot(data = mtcars, aes(x = mpg, y = wt)) + 
  geom_text(aes(label = row.names(mtcars)))

ggplot(data = mtcars, aes(x = mpg, y = wt)) + 
  geom_point() +
  geom_text(aes(label = row.names(mtcars)), check_overlap = TRUE)

row.names(mtcars)

### TWO VARIABLES - ONE CONTINUOUS, ONE DISCRETE

head(wage)

names(wage)[6] <- "gender"

ggplot(data = wage, aes(x = gender, y = wage)) + geom_col()

wage$gender <- ifelse(wage$gender == 1, "female", "male")

wage$gender <- ifelse(test = wage$gender == 1, 
                      yes = "female", 
                      no = "male")

names(wage)[7] <- "marital_status"

ggplot(data = wage, aes(x = marital_status, y = wage)) + 
  geom_col()

ggplot(data = wage, aes(x = marital_status, y = wage)) + 
  geom_bar(stat = "identity")

ggplot(data = wage, aes(x = marital_status, y = wage)) + 
  geom_boxplot()

ggplot(data = wage, aes(x = marital_status, y = wage)) + 
  geom_violin()


### TWO VARIABLES - AT LEAST ONE DISCRETE (at best two discrete variables)

ggplot(data = wage, aes(x = marital_status, y = gender)) +
  geom_count()

ggplot(data = wage, aes(x = marital_status, y = gender)) +
  geom_jitter()

### SHOW DISTRIBUTION
# requires the installation of "hexbin" package
install.packages("hexbin")
library(hexbin)

ggplot(diamonds, aes(x = carat, y = price)) + geom_hex()
ggplot(diamonds, aes(x = carat, y = price)) + geom_point()

ggplot(mtcars, aes(x = mpg, y = wt)) + geom_hex()

### TWO VARIABLES - ONE TIME, ONE CONTINUOUS

head(economics)

ggplot(data = economics, aes(x = date, y = unemploy)) +
  geom_line()

ggplot(data = economics, aes(x = date, y = unemploy)) +
  geom_area()

ggplot(data = economics, aes(x = date, y = unemploy)) +
  geom_step()

