##LOAD THE DPLYR PACKAGE
install.packages('dplyr')

#Load the Dataset
store <-read.csv("MY DEPARTMENTAL STORE .csv")

#4. Select()
####4.1. Get the information of Columns SELLING PRICE, COMPANY
store1 <- select(store, SELLING_PRICE, COMPANY)
View(store1)

####More examples of usin g the same function

####4.2. Get the Information of Column 2 and 5

store1 <- select(store, c(2, 5) )
View(store1)

####4.3. Get the information of Column 2 to 5

store1 <- select(store, 2 : 5)
View(store1)

####4.4. Get the Information of Columns Starting with P to look for product range
store1 <- select(store, starts_with("P"))
View(store1)

####4.4. Get the Information of Columns Ending with E
store1 <- select(store, ends_with("E"))
View(store1)

##5. Mutate()
###5.1. Add a Column to Show Profit 
store1 <- mutate(store, PROFIT = SELLING_PRICE - COST_PRICE)
View(store1)

### More example/Instances of Using the same function

###5.2. Add a Column to show Profit Percentage
store2 <- mutate(store1, PROFIT_PERCENT = PROFIT/COST_PRICE*100)
View(store2)


###5.3. Add a Column to show NET Profit 
store3 <- mutate(store2, NET_PROFIT = PROFIT * QUANTITY_DEMANDED)
View(store3)


###5.4. Lets save the updated file
write.table(store3, file = "Final_Departmental_Store.csv")


##6. Summerise()
#### Find the following descriptive Statics for the Net Profit

###6.1. Find the AVERAGE/Mean

summarise(store3, AVG = mean(NET_PROFIT))

####More Exmaples/Instances using the function.

###6.2. Find the SUM/Total 
summarise(store3, SUM= sum(NET_PROFIT))

####More Exmaples/Instances using the function.

###6.3. Find the Minimum/Maximum Values 
summarise(store3, MINIMUM_Val= min(NET_PROFIT),MAXIMUM_Val= max(NET_PROFIT) )

###6.4. Find the Median Values 
summarise(store3, MEDIAN_Val= median(NET_PROFIT) )

###6.5. Find the Variance Values 
summarise(store3, VARIANCE= var(NET_PROFIT) )

###6.6. Find the Standadrd Deviation Values 
summarise(store3, STD= sd(NET_PROFIT) )

###6.7. Find the Summary For Net Profit
reframe(store3, SUMMARY= summary(NET_PROFIT) )

###6.8. Find the Quantile For Net Profit
summarise(store3, QUANTILEY= quantile(NET_PROFIT) ) #Giving life_cycel errors 
reframe(store3, QUANTILEY= quantile(NET_PROFIT) )

###6.9. Find the Range For Net Profit
reframe(store3, RANGE= range(NET_PROFIT) ) 
