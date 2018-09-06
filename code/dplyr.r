library(dplyr)

data(diamonds, package='ggplot2')
diamonds

head(diamonds)
head(diamonds, n=10)
head(diamonds, n=3)

tail(diamonds)
tail(diamonds, n=7)

head(diamonds)
diamonds %>% head()

head(diamonds, n=3)
diamonds %>% head(n=3)

tail(diamonds, n=5)
diamonds %>% tail(n=5)

tail(head(diamonds, n=4), n=1)
diamonds %>% head(n=4) %>% tail(n=1)
