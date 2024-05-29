#Load the Dplyr package
install.packages(dplyr)

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

##7. group_by()
####To group the data by Columns
####Sort the data grouped by Product_type
store4 <- group_by(store3, PRODUCT_TYPE)


###7.1. Find the AVERAGE/Mean
reframe(store4, AVG = mean(NET_PROFIT))

###7.2. Find the SUM/Total 
reframe(store4, SUM= sum(NET_PROFIT))

###7.3. Find the Minimum/Maximum Values 
summarise(store4, MINIMUM_Val= min(NET_PROFIT),MAXIMUM_Val= max(NET_PROFIT) )

###7.4. Find the Median Values 
summarise(store4, MEDIAN_Val= median(NET_PROFIT) )

###7.5. Find the Variance Values 
summarise(store4, VARIANCE= var(NET_PROFIT) )

###7.6. Find the Standadrd Deviation Values 
summarise(store4, STD= sd(NET_PROFIT) )

###7.7. Find the Summary For Net Profit
reframe(store4, SUMMARY= summary(NET_PROFIT) )

###7.8. Find the Quantile For Net Profit
reframe(store4, QUANTILEY= quantile(NET_PROFIT) )

###7.9. Find the Range For Net Profit
reframe(store4, RANGE= range(NET_PROFIT) ) 


