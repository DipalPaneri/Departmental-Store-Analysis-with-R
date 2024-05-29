###WELCOME TO DATA VISULAIZATION

## LET'S GET STARTED WITH COLUMN PLOT



###8. COLUMN PLOT
###THE PACKAGE NEEDED IS DPLYR AND GGPLOT2
require("ggplot2")

###LOAD THE DATASET
store <- read.csv("FINAL DEPARTMENTAL STORE.csv")
colnames(store)
##8.1. PLOT FOR AVERAGE_QUANTITY & PRODUCT_TYPE
store %>% 
  group_by(PRODUCT_TYPE) %>% 
  summarise(AVERAGE=mean(QUANTITY_DEMANDED)) %>% 
  ggplot(aes (x=PRODUCT_TYPE, y=AVERAGE)) + geom_col(width = 0.6, fill="Light Blue") +
  theme(element_text(size=9))

##8.2. PLOT FOR AVERAGE_NET_PROFIT & PRODUCT_TYPE
store %>% 
  group_by(PRODUCT_TYPE) %>% 
  summarise(AVERAGE_NET_PROFIT=mean(NET_PROFIT)) %>% 
  ggplot(mapping= aes(x=PRODUCT_TYPE, y=AVERAGE_NET_PROFIT)) + geom_col(width = 0.6, fill="Green") +
  theme(element_text(size=9))

##9. SCATTER PLOT FOR NET_PROFIT & COMPANY
store %>% 
  ggplot(mapping= aes(x=COMPANY, y=NET_PROFIT, color = PRODUCT_CATEGORY)) + 
  geom_point()

##Another Example of SCATTER PLOT FOR PROFIT & Quantity Demanded where Product_type == "beauty Products"
store %>% filter(PRODUCT_TYPE == "beauty products") %>% 
  ggplot(mapping= aes(x=QUANTITY_DEMANDED, y=PROFIT, color = PRODUCT_CATEGORY)) + 
  geom_point()

##10. LINE PLOT
###10.1. Following PRICE_DEMAND RELATIONSHIP(AVERAGE_SELLING_PRICE VS QUANTITY_DEMAND)

ggplot(data = store, aes(x=QUANTITY_DEMANDED, y = SELLING_PRICE)) +
         geom_line(color = "Dark Blue")

##10.2. PLOT FOR AVERAGE_NET_PROFIT & COMPANY
store %>% 
  group_by(PRODUCT_TYPE, COMPANY) %>% 
  summarise(AVERAGE_NET_PROFIT=mean(NET_PROFIT, na.rm = TRUE)) %>% 
  ggplot(mapping= aes(x=PRODUCT_TYPE, y=AVERAGE_NET_PROFIT, group=COMPANY, color = COMPANY)) + 
  geom_line() +
  theme(text = element_text(size=9.5))

##### 11.HISTOGRAM 

#11.1. HISTOGRAM FOR PROFIT_PERCENT OF PRODUCT_CATEGORY

store %>%
  ggplot(aes(x=PROFIT_PERCENT, fill=PRODUCT_CATEGORY))+geom_histogram(binwidth = 30)


### ANOTHER EXAMPLE

#11.2. HISTOGRAM FOR QUANTITY_DEMANDED OF PRODUCT_CATEGORY WHERE PRODUCT_TYPE IS "snacks"
store %>%
  filter(PRODUCT_TYPE == "snacks") %>%
  ggplot(aes(x=QUANTITY_DEMANDED, fill=PRODUCT_CATEGORY))+geom_histogram(binwidth = 30)



  