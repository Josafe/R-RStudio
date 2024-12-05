library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrplot)
library(corrgram)

numero = 10
print(numero)

datos = read.csv('student-mat.csv',sep=';')
head(datos)

print(head(datos))

columnas.numericas= sapply(datos,is.numeric)
head(columnas.numericas)

datos.correlacion = cor(datos[,columnas.numericas])
print(datos.correlacion)

corrgram(datos)
View(datos)

columnas.numericas= sapply(datos,is.numeric)
head(columnas.numericas)

datos.correlacion = cor(datos[,columnas.numericas])
#print(datos.correlacion)

grafico = corrplot(datos.correlacion, method='color')

print(ggplot(datos, aes(x=G3)) + geom_histogram(bins=20, alpha=0.5, fill='blue'))

set.seed(80)
ejemplo = sample.split(datos$G3, SplitRatio = 0.7)

entrenamiento = subset(datos, ejemplo==TRUE)
pruebas = subset(datos, ejemplo==FALSE)

modelo = lm(G3 ~. , entrenamiento)
kprint(summary(modelo))

residuos = residuals(modelo)
class(residuos)

residuos = as.data.frame(residuos)
head(residuos)

print(ggplot(residuos,aes(residuos)) + geom_histogram(fill='blue', alpha=0.5))