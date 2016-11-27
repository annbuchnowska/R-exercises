
#  BASIC CALCULATIONS -----------------------------------------------------

# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6+12


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
5%%2

# VARIABLE ASSIGNMENT -----------------------------------------------------

# Assign the value 42 to x
x <- 47
x = 47
# Print out the value of the variable x
x
print(x)

# Assign the value 5 to the variable my_apples
my_apples = 5

# Print out the value of the variable my_apples
my_apples

# Assign a value to the variables my_oranges
my_oranges = 7

# Add these two variables together
my_apples+my_oranges

# Create the variable my_fruit that would be the sum of my_oranges and my_apples
my_fruit = my_oranges+my_apples

# Assign value "ghdsaj" to variable my_apples
my_apples = "ghdsaj"

# Again: create the variable my_fruit that would be the sum of my_oranges and my_apples
my_fruit = my_oranges+my_apples

# TYPY ZMIENNYCH ----------------------------------------------------------

# Change my_numeric to be 42
my_numeric <- 42.5

# Change my_character to be "universe"
my_character <- "some text"

# Change my_logical to be FALSE
my_logical <- TRUE

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)

# Complete the code
numeric_vector <- c(1, 2,3,5)
character_vector <- c('jeden', 'dwa')
boolean_vector <-  c(TRUE, T, F)


# PROJEKCIK ---------------------------------------------------------------

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)  

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vectors
names(roulette_vector) = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# But we don't want to write this everytime, so let's create new variable
# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-  days_vector 
names(roulette_vector) <- days_vector

# Assign to total_daily how much you won/lost on each day
total_daily <-   poker_vector+roulette_vector
  
# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- sum(total_daily)
  
# Print out total_week
total_week  

# Check if you realized higher total gains in poker than in roulette  
total_poker>total_roulette



# Define a new variable based on a selection
poker_wednesday <- poker_vector['Wednesday']
# Define a new variable based on a selection (data from Monday to Thursday)
poker_midweek <- poker_vector[1:4]

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[1:3]

# Calculate the average of the elements in poker_start (using mean() function)
mean(poker_start)
  
  
# Which days did you lose money on roulette?
selection_vector <- roulette_vector<0

# Print out selection_vector
selection_vector

roulette_vector[selection_vector]

# Which days did you make money on roulette?
selection_vector <- roulette_vector>0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days

# congratulate yourself
congrats <- 'gratulacje'
print(congrats)







# MACIERZE ----------------------------------------------------------------

# Box office Star Wars (in millions!)
# you should combine vectors (new_hope, empire_strikes and return_jedi) and assign the new vector to the variable "box_office"
# ; just use function c() like in example:
# x = c(1,23,4)
# y = c(321,43,42,1)
# combined = c(x, y)

new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow=T, nrow=3)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) = region

# Name the rows with titles
rownames(star_wars_matrix) = titles

# Print out star_wars_matrix
star_wars_matrix

# Calculate worldwide box office figures (using rowSums())
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

# Here is star_wars_matrix2 created (with movies from the second trilogy) - check if everything is fine with it
star_wars_matrix2 = matrix(c(c(474, 552), c(310, 338), c(380, 468)), 
                           byrow=T,
                           nrow=3)  
region <- c("US", "non-US")
titles <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith") 
colnames(star_wars_matrix2) = region
rownames(star_wars_matrix2) = titles
star_wars_matrix2

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

# Total revenue for US and non-US (separated)
total_revenue_vector <- colSums(all_wars_matrix)

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,'non-US']
non_us_all <- all_wars_matrix[,2]

# Average non-US revenue
non_us_avg = mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,'non-US']

# Average non-US revenue for first two movies
non_us_avg_first_two = mean(non_us_some)
  
# Zalozmy, ze jeden bilet kosztowal 5$ i kazdy osoba kupila tylko jeden bilet na Star Wars
# Estimate the visitors (divide the matrix)
visitors <- all_wars_matrix/5

# Print the estimate to the console
visitors
# Teraz sprobujemy z bardziej dokladnymi danymi. Mamy informacje dotyczace tego, 
# ile kosztowaly bilety w roznych lokalizacjach i na rozne filmy
prices = c(c(5,4), c(5,4.5), c(5.5, 4), c(6,4), c(5.1, 4.9), c(5.1, 5.5))
ticket_prices_matrix = matrix(prices, byrow=T, nrow=6)
colnames(ticket_prices_matrix) = colnames(all_wars_matrix)
rownames(ticket_prices_matrix) = rownames(all_wars_matrix)

# Estimated number of visitors (this time by ticket_prices_matrix)
visitors <- all_wars_matrix/ticket_prices_matrix
  
# US visitors
us_visitors <- sum(visitors[,'US'])

# Average number of US visitors
us_visitors_avg = mean(visitors[,'US'])
  

# FAKTORY -----------------------------------------------------------------
# Gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert gender_vector to a factor
factor_gender_vector <- factor(gender_vector)
  
# print factor_gender_vector
factor_gender_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector to 'male' and 'female'
levels(factor_survey_vector) <- 

factor_survey_vector

# Generate summary for survey_vector
summary(survey_vector)

# Generate summary for factor_survey_vector
summary(factor_survey_vector)



# DATA FRAMES!!!!! --------------------------------------------------------

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)

# see the structure
str(planets_df)
  
# show first 10 rows
head(planets_df, 3)
planets_df[1:3,]
planets_df[1:10,]

# show last 3 rows
tail(planets_df, 3)

# print some fast summary
summary(planets_df)

# print the number of columns in dataset
ncol(planets_df)

# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]
planets_df$diameter[planets_df$name=='Mercury']
planets_df[planets_df$name=='Mercury', 'diameter']


# Print out data for Mars (entire fourth row)
planets_df[planets_df$name=='Mars',]

# Select first 5 values of diameter column
planets_df$diameter[1:5]
head(planets_df$diameter, 5)
planets_df[,'diameter'][1:5]

# Select the rings variable from planets_df
rings_vector <- planets_df$rings
rings_vector <- planets_df[,'rings']
  
# Print out rings_vector
rings_vector

# Adapt the code to select all columns for planets with rings 
# (instead of only the name column, all columns for planets that have rings are selected)
planets_df[rings_vector, ]

# Select planets with diameter < 1
planets_df[planets_df$diameter<1,]
subset(planets_df, subset=diameter<1)

# Use order() to create positions (call the function on the "diameter" variable)
positions <-  order(planets_df$diameter)
  
# Use positions to sort planets_df
planets_df_sort = planets_df[positions,]
planets_df_sort = planets_df[c(1,4,2,3,8,7,6,5),]

# LISTS -------------------------------------------------------------------

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements (and add names!):
my_list <- list(mtcars=mtcars,
                my_vector=my_vector,
                my_matrix=my_matrix,
                my_df=my_df)

# create list that would contain iris dataset, a character vector of legth 5 and matrix 3x3 (values are not important)
# name them 'iris', 'character', 'matrix' (these should be the names of list)

ch = c('a', 'b', 'c', 'd', 'e')
m = matrix(1:9, nrow=3, ncol=3)

my_list = list(iris=iris,
               character=ch,
               matrix=m)

# print out vector named "character"
my_list$character
  
# print the second element of this vector
my_list$character[2]

# add to the list vector of 3 character values









  
  
  
