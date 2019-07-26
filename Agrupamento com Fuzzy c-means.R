#Agrupamento com Fuzzy c-means

library(e1071)
cluster = cmeans(iris[,1:4], centers = 3)
cluster

#matriz de confusão
table(iris$Species, cluster$cluster)
