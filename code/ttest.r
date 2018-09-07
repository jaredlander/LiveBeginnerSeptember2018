data(tips, package='reshape2')

head(tips)

tips$tip
mean(tips$tip)

library(ggplot2)
ggplot(tips, aes(x=tip)) + geom_histogram(bins=20)

sd(tips$tip)

t.test(tips$tip, mu=2.99, alternative='two.sided')

head(tips)

t.test(tip ~ sex, data=tips, var.equal=TRUE)
