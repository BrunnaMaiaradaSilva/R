#Agrupamento com k-medoids (ponto mais representativo)

library(cluster)

cluster = pam(iris[, 1:4], k = 3)

cluster

#imprimir o modelo
clusplot(pam(x = iris[, 1:4], k = 3))
 