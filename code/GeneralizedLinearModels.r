library(readr)

land <- read_csv('data/manhattan_Train.csv')

table(land$HistoricDistrict)

library(dplyr)
land <- land %>% 
    mutate(HistoricDistrict=factor(HistoricDistrict))

historic1 <- glm(HistoricDistrict ~ TotalValue + NumFloors + LotArea,
                 data=land,
                 family=binomial)
summary(historic1)

library(coefplot)
coefplot(historic1, sort='magnitude')
coefplot(historic1, sort='magnitude', intercept=FALSE)
coefplot(historic1, sort='magnitude', intercept=FALSE, trans=invlogit)

