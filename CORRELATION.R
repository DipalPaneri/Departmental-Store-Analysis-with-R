###WELCOME TO CORRELATION 

###Correlation refers to the statistical concept that studies the relationship
#### between 2 quantitative variables.

### INSTALL THE PACKAGES
install.packages("corrplot")
install.packages("ggcorrplot")

#### LOAD THE PACKAGES
library(ggplot2)
library(corrplot)
library(ggcorrplot)

### LOAD THE DATASET
store <- read.csv("RATINGS.csv")


####15.CORRELATION
####FIND AND PLOT CORRELATION BETWEEN RATINGS AND QUANTITY DEMANDED
cor(store$RATING, store$QUANTITY_DEMANDED)
plot(store$RATING, store$QUANTITY_DEMANDED)


####CORRELATION TEST
### PEARSON'S CORRELATION 

cor.test(store$RATING, store$QUANTITY_DEMANDED)


### 16. CORRELATION MATRIX
####TO GET GREATER INSIGHT, LET'S WORK WITH OUR PRIMARY DATASET

store <- read.csv("FINAL DEPARTMENTAL STORE.csv")
#### FIND CORRELATION MATRIX

store<-dplyr::select_if(store, is.numeric)
r<-cor(store, use = "complete.obs")
round(r,2)



####PLOT THE CORRELATION MATRIX  
###HEAT MAP

ggcorrplot(r)

#### PLOT THE SORTED LOWER TRIANGLE

ggcorrplot(r, 
       hc.order = TRUE,
       type = "lower",
       lab = TRUE)

