library(tidyverse)
library(ggthemes)

car_plot <- mtcars %>% select(wt, mpg) %>% ggplot(.)+aes(wt,mpg)+
  geom_point()+geom_smooth(method='lm', formula = y~x, se=F)+
  theme_clean()+
  labs(title = 'relationship between mpg and weight of the car',
       x='weight (1000s of lbs)',
       y='miles per gallon',
       subtitle = 'With the increase in weight the fuel consumption increases')

write_rds(car_plot,"car-plot.rds")




