setwd('D:\\20190203 ½Å½Â¹ü\\importance\\20200807_time')
source('One variable.R')

y<- as.matrix(rnorm(200))

# small
x<- rnorm(1200)
small<- matrix(x, ncol=6)
dim(small)
small

library(randomForest)
system.time(onevar(small, y))
# 6 -> 0.74

# big
x<- rnorm(200*4000)
big<- as.data.frame(matrix(x, nrow=200))

system.time(onevar(big, y))
# 1000 -> 561.99
# 2000 -> 2742.9
# 3000 -> 8805.27