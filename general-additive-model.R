library(ggplot2)
library(dplyr)

data(diamonds)
#The %>% operartor is a pipe that simply passes the output of the left operation to the first argument to the right operator.
diamonds %>%
#The (aes) is an aesthetic mapping that declares the independent variable x is the carat and the dependend variable y is price  
  ggplot(aes(x=carat,y=price)) +
#Scatter plot representation of each dta point
  geom_point(alpha=0.5) +
#Facet the scatter plot on cut
  facet_grid(~ cut) +
#Fit a second order linear model to the data and display the fit on top of the scatterplot
  stat_smooth(method = lm, formula = y ~ poly(x,2)) +
  theme_bw()
