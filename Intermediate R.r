######## Intermediate R ###########
## Equality
3 == (2 + 1)
"intermediate" != "r"
TRUE != FALSE
"Rchitect" != "rchitect"
# R is case sensitive

# Greater and less than
# R determines the greater than relationship based on alphabetical order

# Comparison of numerics
-6 * 5 + 2 >= -10 + 1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE

## compare vectors
# The linkedin and facebook vectors having profile view records
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <=5

# LinkedIn more popular than Facebook
linkedin > facebook

## compare matrix
# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14

## Logical Operator
#
#
#
#
#
#
#
#
#
#
