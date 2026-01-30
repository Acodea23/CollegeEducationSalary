library(tidyverse)
library(car)

sal_df<- vroom::vroom('Salary.csv')

sal_df <- sal_df |>
  mutate(
    MajorCategory = factor(MajorCategory),
    Sex = factor(Sex)
  )

sal_lm<-lm(Salary~ .,sal_df)



summary(sal_lm)

par(mfrow = c(2,2))
plot(sal_lm)




  