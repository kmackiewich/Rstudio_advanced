 # arithmetic calulations
2 + 3

 #assigning variables
x <- 3
y = 4

# Plotting in R
x = c(1,2,3)
y = c(3,4,1)
plot(x,y)

# class of variables
class(x)
length(x)
class(y)
length(y)

# Strings
str <- #"This is my first script" 
class(str)
length(str)

# clear my variables
ls()
rm(list = ls())

# functions
?mean
?sd
?max

# total function
# name of function
# function statement
# same argument
# body
# return statement (optional)

my_sum = function(input_1, input_2) {
  tot = input_1 + input_2
  return(tot)
}

input_1 = 3
input_2 = 4

input_1 + input_2

# calling a function
my_sum(input_1 = 2, input_2 = 4)
my_sum(input_1 = 4, input_2 = 5)
my_sum(input_1, input_2)

# Native function in 
sum(input_1+input_2)

# Converting F to K

fah_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32)*(5/9)) + 273.15
  return(kelvin)
}

fah_to_kelvin(temp=32)
fah_to_kelvin(32)

#Converting K to C
kel_to_cel <- function(temp) {
  celcius <- temp - 273.15
  return(celcius)
}
kel_to_cel(temp=0)

# Write function to convert F to C




fah_to_cel = function(temp) {
  temp_k <- fah_to_kelvin(temp)
  result <- kel_to_cel(temp_k)
  return(result)
}
fah_to_cel(temp=32)
                       
#Exercise 2
best_practice <- c("write", "programs","for","people","not","computers")
asterisk <- "***"

# Write a function called "fence" that takes two arguments and a new vector something
# like asterisk at the beginning and end

fence <- function(best_practice, asterisk) {
  result <- c(input2, input1, input2)
  return(result)
}

fence(input1 = best_practice, input2 = asterisk)

#Clear the functions and variables
#Now do something with a real dataset
dir.create("data") #create a directory
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder.csv")

# Now call fah_to_cel_functions.R script to convert F to C
source("fah_to_cel_functions.R")

fah_to_kelvin(temp=32)
kel_to_cel(0)
fah_to_cel(0)

#Now do something with a real dataset
dir.create("data") #create a directory
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder.csv")

dat <- read.csv("data/gapminder.csv", header = TRUE)
head(dat)
summary(dat)
str(dat)


# Write a function called "analyze" that takes country as an argument and displays
# mean, min, max lifeExp of that country
# Subsetyting the data file
country_name <- subset(dat, dat$country == "Uganda")
head(country_name)
summary(country_name)
# Calculate mean, min, max
mean(country_name[,5])
min(country_name[,5])
max(country_name[,5])

# Function now
analyze <- function(countr) {
  country_name <- subset(dat, dat$country == countr)
  print(mean(country_name$lifeExp))
  print(min(country_name$lifeExp))
  print(max(country_name$lifeExp))
  out <- c("Mean_le" = mean(country_name$lifeExp), 
           "Min_le" = min(country_name$lifeExp), 
           "max_le" = max(country_name$lifeExp)) 
  print(out)
  X <- country_name$year     #This is how it was modified to output plot
  Y <- country_name$lifeExp  #^^^^^^^
  plot(X,Y, xlab="Year", ylab="Life Expectancy", main = countr)
}
analyze("Uganda")
analyze("United States")

#Modify the analyze function to generate a plost with "Year" on the x-axis and "LifeExp" on y-axis

# Loops 

best_practice

best_practice_fun <- function(some_argument) {
  print(some_argument[1])
  print(some_argument[2])
  print(some_argument[3])
  print(some_argument[4])
  print(some_argument[5])
  print(some_argument[6])
}
best_practice_fun(best_practice)

for(w in best_practice) {
  print(w)
}

best_practice_fun2(best_practice) {
for(w in best_practice) {
  print(w)
  }
}
# IDK but this ^^^ isn't quite right

#Generate a file that contains the years "1952" and "1997" and name it "gapminder_52_97"
#and another file that contains the years "1967" and "2007" and name it "gapminder_67_07"
# Hint: Use subset with &

gapminder_52_97 <- subset(dat, dat$year == 1952 | dat$year == 1997)
head(gapminder_52_97)

gapminder_67_07 <- subset(dat, dat$year == 1967 | dat$year == 2007)
head(gapminder_67_07)

# Writing a dataset
write.csv(file = "data/gapminder_52_97.csv", gapminder_52_97, row.names = FALSE, quote = FALSE)
write.csv(file = "data/gapminder_67_07.csv", gapminder_67_07, row.names = FALSE, quote = FALSE)

#Listing the files witha  pattern in a directory
list.files(path = "data", pattern = ".csv", full.names = TRUE)

# Write a for loop to print each filename on a different line for the above output

file_names <- list.files(path = "data", pattern = ".csv", full.names = TRUE) 
  for(x in file_names) {
    print(x)
}

analyze_data <- function(file, new) {
  file_out <- read.csv(file, header = TRUE)
  country_name <- subset(file_out, file_out$country == new)
  out2 <- c("Mean_le" = mean(country_name$lifeExp), 
            "Min_le" = min(country_name$lifeExp), 
            "max_le" = max(country_name$lifeExp))
  print(file)
  print(new)
  print(out2)
  #plot(m, xlab="Year", ylab="Life Expectancy", main = new)
}


analyze_all <- function(new) {
  file_names <- list.files(path = "data", pattern = ".csv", full.names = TRUE) 
  for(x in file_names) {
    analyze_data(x,new)
  }
}
  
analyze_all("Uganda")





