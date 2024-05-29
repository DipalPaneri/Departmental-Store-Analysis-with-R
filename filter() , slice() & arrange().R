##WELCOME TO THE GUIDED PROJET!!



##WELCOME TO DATA MANIPULATION USING DPLYR !!
### THE IMPORTANT FUNCTIONS OF DPLYR ARE: 
### filter(), slice(), select(),arrange(),mutate(),summarise() and group_by() 
### WE WILL ALSO COVER SOME MORE IMPORTANT FUNCTIONS 
### FOR DESCRIPTIVE STATISTICS.


###PROBLEM STATEMENT:
###You are provided with a dataset of a departmental store. 
###It contains details of products from May, 2020, a period marked by covid-19.
###Your manager wants you to find out that investing in which products will be more profitable.
###Your objective is to analyse the patterns and trends of the products, and gather insights for 
###strategic decision making.(At this level, you don’t need to make reports/recommendations now.
###You will build reports and make recommendations in future, with the knowledge you gained from 
###this project.)

##The package needed is dplyr :
###TO INSTALL THE PACKAGE, RUN THE FOLLOWING:-

install.packages("dplyr")


####LOAD THE DPLYR PACKAGE
require(dplyr)
library(dplyr)

##LET'S LOAD THE DATASET
store <-read.csv("MY DEPARTMENTAL STORE .csv")
#VIEW THE DATASET
View(store)

#GLIMPSE THE DATASET
glimpse(store)



####1.filter()
###1.1.GET THE INFORMATION OF THE PRODUCT WHERE TO PRODUCT_TYPE IS 'beauty products'

store1<-filter(store, PRODUCT_TYPE == 'beauty products')
View(store1)


### ANOTHER EXAMPLE/INSTANCE OF USING THIS FUNCTION
###1.2. GET THE INFORMATION OF THE PRODUCT WHERE IT BELONGS TO COMPANY S&M
store1 <- filter(store, COMPANY %in% c("S", "M") )
View(store1)


####2. slice() 
###2.1 GET THE DETAILS OF FIRST 10 ROWS
store2 <- store %>% slice(1 : 10)
View(store2)


### MORE EXAMPLES/INSTANCES OF USING THIS FUNCTION

###2.2 GET THE DETAILS OF FIRST 6 ROWS
store2<-store %>% slice_head(n = 6)
View(store2)

####3.arrange()
###3.1.ARRANGE THE DATASET IN ASCENDING ORDER OF QUANTITTY DEMANDED
store1 <- arrange(store, QUANTITY_DEMANDED)
View(store1)


### ANOTHER EXAMPLE/INSTANCE OF USING THIS FUNCTION
###3.2. ARRANGE THE DATASET IN DESCENDING ORDER OF SELLING PRICE
store1 <- arrange(store, desc(SELLING_PRICE) )
View(store1)
