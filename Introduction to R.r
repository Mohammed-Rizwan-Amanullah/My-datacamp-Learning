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
# When dealing with factors having natural order, we need to mention them.
# To create an ordered factor,
# - you have to add two additional arguments: ordered and levels
#factor(some_vector,
#       ordered = TRUE,
#       levels = c("lev1", "lev2" ...))

speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector,
                             ordered=TRUE,
                             levels= c("slow", "medium", "fast")
                             )

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)

slow medium   fast
     2      2      1

#comparing ordered factors
# comparing speed of second element with the fifth element

speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector,
                              ordered = TRUE,
                              levels = c("slow", "medium", "fast"))

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5

# ------------------ DATA FRAME ------------------------
#A data frame has the variables of a data set as columns and the observations as rows.
# the function head() enables you to show the first observations of a data frame.
#The function tail() prints out the last observations in your data set.

# Call head() on mtcars
head(mtcars)

#The function str() shows you the structure of your data set
#Applying the str() function will often be the first thing
#that you do when receiving a new data set or data frame

## Creating a data frame
# data.frame() fucntion is used to create a data frame
# vectors are passed as arguments and it becomes the column of df
# Vectors should be of same length

# Definition of vectors
name <- c("Mercury", "Venus", "Earth",
          "Mars", "Jupiter", "Saturn",
          "Uranus", "Neptune")
type <- c("Terrestrial planet",
          "Terrestrial planet",
          "Terrestrial planet",
          "Terrestrial planet", "Gas giant",
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532,
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03,
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df

# Check the structure of planets_df
str(planets_df)

#selection of data frame elements
# my_df[1,2] selects the value at the first row and second column
# my_df[1:3,2:4] selects rows 1, 2, 3 and columns 2, 3, 4 in my_df

# The planets_df data frame from the previous exercise is pre-loaded
planets_df
# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]

## selecting elements using variable name
# planets_df[1:3,"type"]

# The planets_df data frame from the previous exercise is pre-loaded
planets_df
# Select first 5 values of diameter column
planets_df[1:5, "diameter"]

# selecting using name of the column(for entire column)
# planets_df is pre-loaded in your workspace
planets_df
# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector(has boolean values)
rings_vector

# planets_df and rings_vector are pre-loaded in your workspace
planets_df
rings_vector
# Adapt the code to select all columns for planets with rings as TRUE
planets_df[rings_vector,]

# selecting based on condition(performing above operation using subset())
# suset() function helps to select data based ono certain conditions
# subset(my_df, subset = some_condition)
# subset(planets_df, subset = rings)

# planets_df is pre-loaded in your workspace
planets_df
# Select planets with diameter < 1
subset(planets_df, subset = diameter<1)

## sorting
# order() function gives the rank of the element when applied to a vector
a <- c(100, 10, 1000)
order(a)
[1] 2 1 3

# output of order function can be used to reshuffle values in vector
a[order(a)]
[1]   10  100 1000

# Play around with the order function in the console
test <- c(500, 300, 800, 1500)
order(test)
test[order(test)]

test[order(test)]
[1]  300  500  800 1500


#sorting your data
# planets_df is pre-loaded in your workspace
planets_df
# Use order() to create positions and order by diameter
positions <- order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]


# ----------------- LISTS ------------------------
# Vectors (one dimensional array): can hold numeric, character or logical values.
#   The elements in a vector all have the same data type.
# Matrices (two dimensional array): can hold numeric, character or logical values.
#  The elements in a matrix all have the same data type.
# Data frames (two-dimensional objects): can hold numeric, character or logical values.
#   Within a column all elements have the same data type,
#   but different columns can be of different data type.
# Lists -> A list in R allows you to gather a variety of objects under one name
#   (that is, the name of the list) in an ordered way.
#   These objects can be matrices, vectors, data frames, even other lists, etc.
#   It is not even required that these objects are related to each other in any way.
#   you can store practically any piece of information in it!

# create list using list() function
# my_list <- list(comp1, comp2 ...)
# The arguments to the list function are the list components.

# Vector with numerics from 1 up to 10
my_vector <- 1:10

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)

## create name for a list
# naming while creating a list
# my_list <- list(name1 = your_comp1,
#                name2 = your_comp2)

# naming after creating a list
# my_list <- list(your_comp1, your_comp2)
# names(my_list) <- c("name1", "name2")

# Adapt list() call to give the components names
my_list <- list(vec=my_vector, mat=my_matrix, df=my_df)

# Print out my_list
my_list

---------------------------------
#output
$vec
 [1]  1  2  3  4  5  6  7  8  9 10

$mat
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

$df
                   mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4

----------------------------
# The variables mov, act and rev are available
mov
act
rev
# Finish the code to build shining_list
shining_list <- list(moviename = mov, actors = act, reviews= rev)
shining_list

#output
------------------------
$moviename
[1] "The Shining"

$actors
[1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"      "Scatman Crothers"
[5] "Barry Nelson"

$reviews
  scores sources                                              comments
1    4.5   IMDb1                     Best Horror Film I Have Ever Seen
2    4.0   IMDb2 A truly brilliant and scary film from Stanley Kubrick
3    5.0   IMDb3                 A masterpiece of psychological horror


# selecting an element from the list
# to select elements from the list use double brackets [[]]
# NOTE :- In vector, we use single bracket to select element from the list
shining_list[[1]]

# we can also select using the names of the components inside the [[]]
shining_list[["reviews"]]

# also, we can select the elements using name and dollar sign
shining_list$reviews

# selecting specific elements from the vector inside the list
shining_list[["actors"]][1]

# shining_list is already pre-loaded in the workspace
shining_list
# Print out the vector representing the actors
shining_list[["actors"]]

# Print the second element of the vector representing the actors
shining_list[["actors"]][1]

#output
----------------------------
shining_list[["actors"]]
[1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"      "Scatman Crothers"
[5] "Barry Nelson"
shining_list[["actors"]][1]
[1] "Jack Nicholson"
--------------------------



# exercise

# - Create two vectors, called scores and comments,
#   that contain the information from the reviews shown in the table.
# - Find the average of the scores vector and save it as avg_review.
# - Combine the scores and comments vectors into a data frame called reviews_df.
# - Create a list, called departed_list, that contains the movie_title,
#    movie_actors, reviews data frame as reviews_df,
#    and the average review score as avg_review, and print it out.


# Use the table from the exercise to define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")

# Save the average of the scores vector as avg_review
avg_review <- mean(scores)

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores, comments)
reviews_df

# Create and print out a list, called departed_list
departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)
departed_list


















