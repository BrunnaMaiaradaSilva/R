#e1071

install.packages('e1071', dependencies = T) 
#intalação da biblioteca e1071

library(e1071)
#disponibilizar a biblioteca e1071

credito = read.csv(file.choose(), sep = ',', header = T)
#carregar csv, vírgula como separador, head

head(credito)
#visualizar o head

dim(credito)
#linhas e colunas do dataframe

amostra = sample(2, 1000, replace = T, prob = c(0.7, 0.3))
#criar uma amostra usando um array de zeros e uns
#70% de probabilidade de gerar 1
#30% de probabilidade de gerar 2

creditotreino = credito[amostra == 1,]
creditoteste = credito[amostra == 2,]

dim(creditotreino)
dim(creditoteste)

modelo = naiveBayes(class ~ . , creditotreino)
modelo
