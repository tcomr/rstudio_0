
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


#====================matrix================
matrix(1:20, nrow = 4, byrow = TRUE)
matrix(1:20, nrow = 4, byrow = FALSE)

her_me <- c(my_vec, her_vec)
her_me

hm_mat_tall <- matrix(her_me)
hm_mat_tall

hm_wide <- matrix(her_me, nrow = 1)
hm_wide

hm_default <- matrix(her_me, nrow = 2)
hm_default

hm_byrow <- matrix(her_me, nrow = 2, byrow =  TRUE)
hm_byrow

# rownames, colnames 
big_mat <- t(hm_byrow) # transpose matrix
big_mat
rownames(big_mat) <- day_vec
big_mat

colnames(big_mat) <- c('Bowl', 'balance')
big_mat
help(matrix)

d_mat <- matrix(her_me, nrow = 2, byrow = TRUE, 
                dimnames = list(c('a', 'b'), list('ab', 'cd', 'ef', 'gh', 'ij')))
d_mat # if only one arguement in dimnames, it is rownames 

# cbind(), rbind(), colSums()
# head(), matrix[, 2]
# modulus %%; 
5%%3 # 2


