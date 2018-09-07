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

land_test <- readRDS('data/manhattan_Test.rds')
set.seed(1234)
land_test_small <- land_test %>% sample_n(20)
land_test_small

histPreds1 <- predict(historic1, newdata=land_test_small,
                      se.fit=TRUE,
                      type='response')
histPreds1$fit
