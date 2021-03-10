
my_vec <- c(140, -50, 20, -120, 240)

her_vec <- c(-24, -50, 100, -350, 10)

# The variable days_vector
day_vec <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the vectors 
names(my_vec) <-   day_vec
names(her_vec) <- day_vec

# gives name as column and values 
my_vec
her_vec

# Addition with same name as colnames 
total_vec <- my_vec + her_vec # element wise additon with names 
total_vec


total_her <- sum(her_vec) # a single number 
total_my <- sum(my_vec)
total_her
total_my

# variable based on selection

tue <- her_vec['Tuesday']
tue # gives value 

days2 <- my_vec[c('Monday', 'Wednesday')]
days2

mean(my_vec)
median(day_vec)

# get only positive values of vector 
pos_day <- my_vec > 0 

good_day <- my_vec[pos_day]
good_day








