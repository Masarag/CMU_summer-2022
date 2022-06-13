#PURPOSE: EDA Project - Maternity 

library(tidyverse)
maternidy_df <- read.csv(maternity.csv)
head(maternity_df)

filter(maternity_df, TobaccoUse %in% c("Yes","No"), PrePregnancyDiabetes == "Yes", PrePregnancyHypertension == "No", 
       PriorBirthsNowDeceased == "0")


#Hypothesis------
#1. Tobacco use reduces the childs birth weight amoung mother without prior birth deads - bar chart

#2. As the age of mother increases, the number of prenatile visits increases - scatter plot 

#3. 



#Hypotehsis 1-------

maternity_df %>%
  ggplot(aes(x = TobaccoUse)) +
  geom_bar() +
  ggthemes::scale_fill_colorblind() +
  theme_bw()





#Hypothesis 2---------

maternity_df %>%
  ggplot(aes(x = AverageMotherAge, y = AverageNumberPrenatalVisits))+
  geom_point()+
  geom_smooth()+
  geom_rug(alpha = 0.4)+
  theme_bw()

#Hypotehsis 3------------------------
