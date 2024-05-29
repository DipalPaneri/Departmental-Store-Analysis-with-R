####LOAD THE PACKAGES
require(dplyr)
require(ggplot2)

##LET'S LOAD THE DATASET
store <- read.csv("FINAL DEPARTMENTAL STORE.csv")


###NOW LET'S GET STARTED WITH CODE

#####12. PIE CHART

#Q1. MAKE A PIE CHART FOR EACH HYGIENE PRODUCT'S QUANTITY DEMANDED.

####STEP 1 AND STEP 2 ARE REVISION OF DATA MANIPULATIION.

#STEP1: LET'S PREPARE REQUIRD DATA

store1 <-  filter(store, PRODUCT_TYPE=="hygiene")%>%
  group_by(PRODUCT_CATEGORY)%>%
  summarise(QUANTITY_DEMANDED=sum(QUANTITY_DEMANDED))

# STEP2: LET'S CALCULATE PERCENTAGE OF EACH PRODUCT

store2 <- store1 %>% 
  arrange(desc(PRODUCT_CATEGORY)) %>%
  mutate(percentage=round(QUANTITY_DEMANDED*100/sum(QUANTITY_DEMANDED))) %>% 
  mutate(y_pos = cumsum(percentage)-0.5*percentage)

# STEP3: LET'S CREATE THE PIE CHART

store2 %>% 
  ggplot(aes(x="", percentage, fill=PRODUCT_CATEGORY)) +
  geom_bar(width = 1, stat = "identity", color="white", alpha=0.5) +
  coord_polar("y", start = 0) +
  geom_text(aes(y=y_pos, label = paste0(percentage, "%")), color="black") +
  scale_fill_manual(values = rainbow(7))+ theme_void()

#LET'S EXPLORE SOME MORE CIRCULAR PLOTS FROM THE EXISING PREPARED DATA OF STEP 1 AND STEP 2.

####13. DONUT

#Q2. MAKE A DONUT FOR THE SAME DATA

store2 %>% 
  ggplot(aes(x=2, percentage, fill=PRODUCT_CATEGORY)) +
  geom_bar(stat = "identity", color="white", alpha=0.5) +
  coord_polar(theta = "y", start = 0) +
  geom_text(aes(y=y_pos, label = paste0(percentage, "%")), color="black") +
  scale_fill_manual(values = rainbow(7))+ theme_void() +xlim(0.6, 2.6)


####14. COXCOMB CHART 

#Q3. MAKE A COXCOMB CHART  FOR THE SAME DATA
store2 %>% ggplot(aes(PRODUCT_CATEGORY,QUANTITY_DEMANDED, fill=PRODUCT_CATEGORY)) + 
  geom_bar(stat="identity") + 
  coord_polar("x", start= 0, direction = -1)+
  xlab("DIFFERENT HYGIENE PRODUCTS") +
  ylab("QUANTITY")


