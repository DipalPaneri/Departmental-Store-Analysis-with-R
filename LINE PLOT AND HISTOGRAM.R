
## LET'S LOAD THE PACKAGES
require(dplyr)
require(ggplot2)


###LOAD THE DATASET
store <-read.csv("FINAL DEPARTMENTAL STORE.csv")




### We use group=1 when we will use only one variable for grouping



######10. LINE PLOT

#10.1.PLOT FOR  PRICE-DEMAND RELATIONSHIP (AVERAGE_SELLING_PRICE VS QUANTITY_DEMANDED)


 



### ANOTHER EXAMPLE

#10.2.PLOT FOR AVERAGE_NET_PROFIT & COMPANY

store %>% group_by(PRODUCT_TYPE, COMPANY) %>% 
  summarise(AVERAGE_NET_PROFIT=mean(NET_PROFIT, na.rm=TRUE)) %>%
  ggplot(aes(x=PRODUCT_TYPE, y=AVERAGE_NET_PROFIT, group=COMPANY, color=COMPANY))+
  geom_line()+ theme(text= element_text(size=9.5))




##### 11.HISTOGRAM 

#11.1. HISTOGRAM FOR PROFIT_PERCENT OF PRODUCT_CATEGORY





### ANOTHER EXAMPLE

#11.2. HISTOGRAM FOR QUANTITY_DEMANDED OF PRODUCT_CATEGORY WHERE PRODUCT_TYPE IS "snacks"
store %>%
  filter(PRODUCT_TYPE == "snacks") %>%
  ggplot(aes(x=QUANTITY_DEMANDED, fill=PRODUCT_CATEGORY))+geom_histogram(binwidth = 30)


