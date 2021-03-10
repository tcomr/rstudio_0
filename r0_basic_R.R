
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

##================factor====================

# gender vector
gender <- c("Male", "Female", "Female", "Male", "Male")

# Convert  to a factor
factor_vector <-factor(gender)

# Print out factor_sex_vector
factor_vector

mode(factor_vector) # numeric
mode(gender) # character 
typeof(factor_vector) # integer 
typeof(gender) # character 

# Animals
animals <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals <- factor(animals)
factor_animals

# Temp
temp <- c("High", "Low", "High","Low", "Medium")
temp_fac <- factor(temp, order = TRUE, levels = c("Low", "Medium", "High"))
temp_fac

# levels 
sex_vec <- c("M", "F", "F", "M", "M")
factor_sex <- factor(sex_vec)

# Specify the levels of factor_survey_vector
levels(factor_sex) <- c("Female", "Male")

factor_sex

summary(factor_sex)
summary(sex_vec)

# Create factor_speed_vector
vec <- c("medium", "slow", "slow", "medium", "fast")
factor_vec <- factor(vec, ordered = TRUE, 
                     levels = c("slow", "medium", "fast"))

# Factor value for second data analyst
da4 <- vec[4]
da4
# Factor value for fifth data analyst
da5 <- vec[5]
da5
# Is data analyst 2 faster than data analyst 5?
da4 > da5



# ========================data.frame=============

# head(df), str(df), 

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
df <- data.frame(name, type, diameter, rotation, rings)
df
str(df)
df[5,2]
df[4, ]
df[, 3]
df[2:7, 'rings']


df$ rotation
ring <- df$rings
ring
df[ring, ]

# subset 
subset(df, rotation > .5 ) # only with rotation > than one half 

# order gives index of order 
x <- c(234, 32, 33, 56, 678)
order_x <- order(x)
x[order_x] # prints elements in order 






