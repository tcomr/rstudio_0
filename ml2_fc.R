
# Creditcard dataset 
  # make prediction with knn algorithm 

rm(list = ls())
# install.packages("readxl")
library(readxl)

credit = read_excel("C:/Users/sts/Downloads/credit.xls", skip = 1)
                    
# View(credit)
str(credit)




colnames(credit)


columns= c("ID", "LIMIT_BAL", "SEX", "EDUCATION", "MARRIAGE", "AGE" ,"PAY_0","PAY_2" ,"PAY_3",
           "PAY_4", "PAY_5", "PAY_6", "BILL_AMT1","BILL_AMT2","BILL_AMT3","BILL_AMT4", "BILL_AMT5", "BILL_AMT6", "PAY_AMT1",
           "PAY_AMT2", "PAY_AMT3", "PAY_AMT4","PAY_AMT5","PAY_AMT6", "default_status")

colnames(credit) = columns

# Change to factor 
credit$default_status = factor(credit$default_status, levels = c("0", "1"), 
                               labels = c("No", "Yes"))
credit$SEX = factor(credit$SEX, levels = c("2", "1"), labels = c("female", "male"))
credit$EDUCATION = factor(credit$EDUCATION, levels = c("1", "2", "3", "4"), 
                          labels = c("graduate", "univerity", "high school", "others"))
credit$MARRIAGE = factor(credit$MARRIAGE, levels = c("1", "2", "3"), 
                         labels = c("married", "single", "others"))

summary(credit)

# factor(df$col, levels = c('t', 'f'), labels = c("good", "bad"))


# Take off 
# =========== caterogical variabls ======
library(dplyr)
# credit_norm = select(credit, -c(ID, MARRIAGE, EDUCATION, SEX))
# credit_norm = select(credit, -c(ID, MARRIAGE, EDUCATION, SEX, default_status))


head(credit_norm)
# normalization function 
normal = function(a){
  return((a-min(a))/(max(a)-min(a)))
  
}
# need to normalize all the columns:
# lapply
credit_norm = data.frame(lapply(credit_norm, normal))

head(credit_norm)
summary(credit_norm)

# split on train and test set 
dim(credit_norm)
credit_train = slice(credit_norm, 1:24000)
credit_test = slice(credit_norm, 24001:30000)

head(credit_train)
head(credit_test)


# target variable 
credit_tr_cat = credit[1:24000, 25]
credit_te_cat= credit[24001:30000, 25]

head(credit_tr_cat)
# check 
prop.table(table(credit_tr_cat))
prop.table(table(credit_te_cat))

# Implementing KNN algo
library(class)

sqrt(30000) # 173 for k value 
pred = knn(train = credit_train, 
           test = credit_test, cl = credit_tr_cat$default_status, k = 173)
# =============
length(credit_tr_cat$default_status)
dim(credit_test)
dim(credit_train)
# phase 3: performance 
# install.packages("gmodels")
library(gmodels)
CrossTable(credit_te_cat$default_status, y = pred, prop.chisq = FALSE)




