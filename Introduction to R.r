# As part of the datacamp "Introduction to R" I have learned the below topics
# - Intro to basics
# - Vectors
# - Matrices
# - Factors
# - Data Frames
# - Lists

#---------------# INTRO TO BAISCS -----------------------

## Arithmetic with R

# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6+12

# An addition
5 + 5

# A subtraction
5 - 5

# A multiplication
3 * 5

 # A division
(5 + 5) / 2

# Exponentiation
2^5

# Modulo
28%%6

## Variable Assignment

# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x

# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples

# Assign a value to the variables my_apples and my_oranges
my_apples <- 5
my_oranges <- 6


# Add these two variables together
my_apples+my_oranges

# Create the variable my_fruit
my_fruit <- my_apples+my_oranges

# Assign a value to the variable my_apples
my_apples <- 5

# Fix the assignment of my_oranges
my_oranges <- 6

# Create the variable my_fruit and print it out
my_fruit <- my_apples + my_oranges
my_fruit

## Basic datatype in R
#Decimal values like 4.5 are called numerics.
#Whole numbers like 4 are called integers. Integers are also numerics.
#Boolean values (TRUE or FALSE) are called logical.
#Text (or string) values are called characters.

# Change my_numeric to be 42
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- FALSE

# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)

#---------------- Vectors --------------------
#a vector is a simple tool to store data.
#For example, you can store your daily gains and losses in the casinos.
#In R, you create a vector with the combine function c().
#You place the vector elements separated by a comma between the parentheses.

## Vector Assignment
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <- c(TRUE, FALSE, TRUE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c(-24, -50, 100, -350, 10)

## Naming a vector
#You can give a name to the elements of a vector with the names() function.
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

## another way of naming a vector
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <- days_vector

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# Print out total_vector
total_vector

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector + roulette_vector
total_daily

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
  total_week

###
#Calculate total_poker and total_roulette as in the previous exercise.
#Use the sum() function twice.
#Check if your total gains in poker are higher than for roulette by using a comparison.
#Simply print out the result of this comparison.
#What do you conclude, should you focus on roulette or on poker?
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette
total_poker > total_roulette


## Vector Selection
#To select elements of a vector (and later matrices, data frames, …),
#you can use square brackets. Between the square brackets,
#you indicate what elements to select.
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]

##
#To select multiple elements from a vector,
#you can add square brackets at the end of it.
#You can indicate between the brackets what elements should be selected.
# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2, 3, 4)]

##
#an easier way to do this: c(2, 3, 4) can be abbreviated to2:4,
#which generates a vector with all natural numbers from 2 up to 4.
# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]

# Calculate the average of the elements in poker_start
mean(poker_start)

## Selection by comparison

c(4, 5, 6) > 5
[1] FALSE FALSE TRUE

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Print out selection_vector
selection_vector

# Which days did you make money on poker?
selection_vector <- poker_vector > 0
selection_vector

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0
selection_vector

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days


#------------ Matrix -----------------------
# In R, a matrix is a collection of elements of the same data type
#(numeric, character, or logical) arranged into a fixed number of rows and columns.
#Since you are only working with rows and columns, a matrix is called two-dimensional.

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
mat <- matrix(1:9, byrow = TRUE, nrow=3)
mat

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)
box_office

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)
star_wars_matrix

## Naming a Matrix
# rownames(my_matrix) <- row_names_vector
# colnames(my_matrix) <- col_names_vector
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

#In R, the function rowSums() conveniently calculates the totals for each row of a matrix.
#This function creates a new vector:
#Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

###################
## Adding a column to a matrix
# You can add a column or multiple columns to a matrix with the cbind() function
# big_matrix <- cbind(matrix1, matrix2, vector1 ...)
# The worldwide box office figures
# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office,
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector
# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

############
## adding a row to a matrix or combining two matrix row wise
# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

#                           US non-US
#A New Hope              461.0  314.4
#The Empire Strikes Back 290.5  247.9
#Return of the Jedi      309.3  165.8
#The Phantom Menace      474.5  552.5
#Attack of the Clones    310.7  338.7
#Revenge of the Sith     380.3  468.5

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector
#   US non-US
#2226.3 2087.8


## selection of matrix elements
# similar to vectors, we can use [] to select one or multiple elements from a matrix
#my_matrix[1,2] selects the element at the first row and second column.
#my_matrix[1:3,2:4] results in a matrix with the
#data on the rows 1, 2, 3 and columns 2, 3, 4.
#my_matrix[,1] selects all elements of the first column.
#my_matrix[1,] selects all elements of the first row.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
non_us_all
# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
non_us_some

# Average non-US revenue for first two movies
mean(non_us_some)

## A little arithmetic with matrices
#Similar to what you have learned with vectors,
#the standard operators like +, -, /, *, etc.
#work in an element-wise way on matrices in R.

#Question
#find out how many visitors went to each movie for each geographical area.
#You already have the total revenue figures in all_wars_matrix.
#Assume that the price of a ticket was 5 dollars.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Estimate the visitors
visitors <- all_wars_matrix/5

# Print the estimate to the console
visitors


#########
# Matrix multiplication
# my_matrix1 * my_matrix2 creates a matrix where each element is the
# product of the corresponding elements in my_matrix1 and my_matrix2.

ticket_prices_matrix
                         US non-US
A New Hope              5.0    5.0
The Empire Strikes Back 6.0    6.0
Return of the Jedi      7.0    7.0
The Phantom Menace      4.0    4.0
Attack of the Clones    4.5    4.5
Revenge of the Sith     4.9    4.9

all_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5

# Estimated number of visitors
visitors <- all_wars_matrix/ticket_prices_matrix

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors
mean(us_visitors)

########

#------------------ Factors ------------------------
#The term factor refers to a statistical data type used to store categorical variables.
#The difference between a categorical variable and a continuous variable
#is that a categorical variable can belong to a limited number of categories.
#A continuous variable, on the other hand, can correspond to an infinite number of values.
# to create a factor, we need to have a vector containing categories for all observations

# sex observations for 5 individuals
sex_vector <- c("Male","Female","Female","Male","Male")

# factor() function will encode the vector as factor
factor_sex_vector <- factor(sex_vector)

# Print out factor_sex_vector
factor_sex_vector
> Levels: Female Male

### Two types of categorical variable
# Nominal Categorical - variable without implied order
# - impossible to say one is worth more than the other
# Ordinal categorical - variables have natural ordering
# - example low, medium, high
# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

## Factor levels()
# sometimes, we need to change the factor name for clarity.
# example - changing sex "M" and "F" to "Male" and "Female"
# levels(factor_vector) <- c("name1", "name2",...)

# NOTE - R assign's value alphabetically, so use c() to assign them
# based on the output of the factor
# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

factor_survey_vector

## summary() function

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

Female   Male
     2      3

#By default, R returns NA when you try to compare values in a factor,
#since the idea doesn't make sense


## Ordered Factors
####
