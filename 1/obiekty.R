
#  BASIC CALCULATIONS -----------------------------------------------------

# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
3+4


# ARITHMETICS -------------------------------------------------------------

# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation
2^4

# Modulo
56%%3


# VARIABLE ASSIGNMENT -----------------------------------------------------

# Assign the valu
e 42 to x
x <- 
x =
# Print out the value of the variable x
x
print(x)

# Assign the value 5 to the variable my_apples
myapples=5

# Print out the value of the variable my_apples

print(myapples)
# Assign a value to the variables my_oranges
myoranges=3


# Add these two variables together
myapples+myoranges

# Create the variable my_fruit that would be the sum of my_oranges and my_apples


# Assign value myto variable my_apples


# Again: create the variable my_fruit that would be the sum of my_oranges and my_apples


# TYPY ZMIENNYCH ----------------------------------------------------------

# Change my_numeric to be 42
my_numeric <- 42.5

# Change my_character to be 'universe'
my_character <- 'some text'

# Change my_logical to be FALSE
my_logical <- TRUE

# Check class of my_numeric
class(my_numeric)

# Check class of my_character


# Check class of my_logical

# Complete the code
numeric_vector <- c(12,14,15)
character_vector <- c('kot', 'pies', 'ryba')
boolean_vector <-  c(TRUE, F, T)


print(boolean_vector)
      # PROJEKCIK ---------------------------------------------------------------

# Poker winnings from Monday to Friday
poker_vector <- 

# Roulette winnings from Monday to Friday
roulette_vector <-    

# Assign days as names of poker_vector
names(poker_vector) <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')

# Assign days as names of roulette_vectors
names(roulette_vector) <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')

# But we don't want to write this everytime, so let's create new variable
# The variable days_vector
days_vector <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <- days_vector  
names(roulette_vector) <- days_vector  

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector+roulette_vector  
  

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  

# Total winnings overall
total_week <- 
  
# Print out total_week
  

# Check if you realized higher total gains in poker than in roulette  


# Define a new variable based on a selection
poker_wednesday <- "Wedesday"
# Define a new variable based on a selection (data from Monday to Friday)
poker_midweek <- 

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- 

# Calculate the average of the elements in poker_start (using mean() function)

# Which days did you make money on poker?
selection_vector <- roulette_vector<0
macierz = matrix

roulette_vector[selection_vector]# Print out selection_vector
  
# now a little bit harder...
# Which days did you make money on poker?
selection_vector_win <- poker_vector < 0

roulette_vector# Select from poker_vector these days
poker_winning_days <- 

# Which days did you make money on roulette?
selection_vector <-

# Select from roulette_vector these days
roulette_winning_days <- 
  
# congratulate yourself
congrats <- 
print(congrats)







# MACIERZE ----------------------------------------------------------------

# Box office Star Wars (in millions!)
# you should combine vectors (new_hope, empire_strikes and return_jedi) and assign the new vector to the variable 'box_office'
# ; just use function c() like in example:
# x = c(1,23,4)
# y = c(321,43,42,1)
# combined = c(x, y)

new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- 

# Construct star_wars_matrix
star_wars_matrix <- 

# Vectors region and titles, used for naming
region <- c('US', 'non-US')
titles <- c('A New Hope', 'The Empire Strikes Back', 'Return of the Jedi')

# Name the columns with region


# Name the rows with titles


# Print out star_wars_matrix


# Calculate worldwide box office figures (using rowSums())
worldwide_vector <- 

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- 

# Here is star_wars_matrix2 created (with movies from the second trilogy) - check if everything is fine with it
star_wars_matrix2 = matrix(c(c(474, 552), c(310, 338), c(380, 468)), 
                           byrow=T,
                           nrow=3)  
region <- c('US', 'non-US')
titles <- c('The Phantom Menace', 'Attack of the Clones', 'Revenge of the Sith') 
colnames(star_wars_matrix2) = region
rownames(star_wars_matrix2) = titles
star_wars_matrix2

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <-

# Total revenue for US and non-US (separated)
total_revenue_vector <- 

# Select the non-US revenue for all movies
non_us_all <- 

# Average non-US revenue


# Select the non-US revenue for first two movies
non_us_some <- 

# Average non-US revenue for first two movies
  
# Zalozmy, ze jeden bilet kosztowal 5$ i kazdy osoba kupila tylko jeden bilet na Star Wars
# Estimate the visitors (divide the matrix)
visitors <- 

# Print the estimate to the console

# Teraz sprobujemy z bardziej dokladnymi danymi. Mamy informacje dotyczace tego, 
# ile kosztowaly bilety w roznych lokalizacjach i na rozne filmy
prices = c(c(5,4), c(5,4.5), c(5.5, 4), c(6,4), c(5.1, 4.9), c(5.1, 5.5))
ticket_prices_matrix = matrix(prices, byrow=T, nrow=6)
colnames(ticket_prices_matrix) = colnames(all_wars_matrix)
rownames(ticket_prices_matrix) = rownames(all_wars_matrix)

# Estimated number of visitors (this time by ticket_prices_matrix)
visitors <- 
  
# US visitors
us_visitors <- 

# Average number of US visitors

  

# FAKTORY -----------------------------------------------------------------
# Gender vector
gender_vector <- c('Male', 'Female', 'Female', 'Male', 'Male')

# Convert gender_vector to a factor
factor_gender_vector <-
  
# print factor_gender_vector
  
# Code to build factor_survey_vector
survey_vector <- c('M', 'F', 'F', 'M', 'M')
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector to 'male' and 'female'
levels(factor_survey_vector) <-

factor_survey_vector

# Generate summary for survey_vector


# Generate summary for factor_survey_vector




# DATA FRAMES!!!!! --------------------------------------------------------

# Definition of vectors
name <- c('Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune')
type <- c('Terrestrial planet', 'Terrestrial planet', 'Terrestrial planet', 
          'Terrestrial planet', 'Gas giant', 'Gas giant', 'Gas giant', 'Gas giant')
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <-

# see the structure
  
# show first 10 rows


# show last 10 rows
  

# print some fast summary


# print the number of columns in dataset


# Print out diameter of Mercury (row 1, column 3)


# Print out data for Mars (entire fourth row)


# Select first 5 values of diameter column


# Select the rings variable from planets_df
rings_vector <- 
  
# Print out rings_vector
  

# Adapt the code to select all columns for planets with rings 
# (instead of only the name column, all columns for planets that have rings are selected)
planets_df[rings_vector, 'name']

# Select planets with diameter < 1

# Use order() to create positions (call the function on the 'diameter' variable)
positions <-  
  
# Use positions to sort planets_df
  
  

# LISTS -------------------------------------------------------------------

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements (and add names!):
my_list <- 

# create list that would contain iris dataset, a character vector of legth 5 and matrix 3x3 (values are not important)
# name them 'iris', 'character', 'matrix' (these should be the names of list)

# print out vector named 'character'

  
# print the second element of this vector
  

# add to the list vector of 3 character values









  
  
  
