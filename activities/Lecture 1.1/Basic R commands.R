# Math

3 + 3

# Base R Functions + objects

x <- 3 + 5
x

y <- c(1, 2, 3, 4, 5)

y

# Libraries + functions

install.packages("tidyverse")

library(ggplot2)

help(ggplot2)

# Loading data

mcdonalds <- read.csv("mcdonalds.csv")

ggplot(mcdonalds, aes(x = Total.Fat, y = Calories)) +
  geom_point() +
  labs(x = "Total Fat (g)",
       y = " Calories",
       title = "Calories as a function of Total Fat")

# Tidyverse 

library(tidyverse)

