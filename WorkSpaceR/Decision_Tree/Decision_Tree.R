install.packages('ggplot2')
install.packages('rpart.plot')
install.packages('e1071')

library(ggplot2)
library(randomForest)
library(ISLR)
library(rpart.plot)
library(cluster)
library(e1071)

grafico = ggplot(datos, aes(Petal.Length, Petal.Width, color=Species))
grafico = grafico + geom_point(size=5)
print(grafico)

datos = iris
str(datos)
datos = kyphosis
str(datos)

arbol = rpart(kyphosis, datos)

printcp(arbol)
plot(arbol, uniform=TRUE, main='Arbol de decision')

text(arbol, use.n=TRUE, all = TRUE)

prp(arbol)
install.packages('randomForest')
modelo = randomForest(Kyphosis ~. ,data=datos)
print(modelo)

modelo$predicted

predicciones
tabla

set.seed(90)
conjuntos = kmeans[datos[,1:4],3, nstart=20]

print(conjuntos)

table(conjuntos$cluster, datos$Species)
clust(datos, conjuntos$cluster, color=TRUE, shade=TRUE, labels=0, lines=0)

help('kmeans')

modelo = svm(Species ~ . , data=datos)
predicciones = predict(modelo, datos[1:4])

predicciones 

