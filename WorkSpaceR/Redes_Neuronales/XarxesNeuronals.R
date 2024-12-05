install.packages('MASS')
library(MASS)

datos = Boston
str(datos)

head(datos)

any(is.na(datos))

maximo = apply(datos, 2, max)
maximo

minimo = apply(datos, 2, min)
minimo

datos.normalizados = scale(datos, center=minimo, scale=maximo-minimo)
datos.normalizados = as.data.frame(datos.normalizados)

head(datos.normalizados)

library(caTools)
division = sample.split(datos.normalizados$medv, SplitRatio = 0.7)
entrenamientos = subset(datos.normalizados, division==TRUE)
pruebas = subset(datos.normalizados, division == FALSE)

head(entrenamientos)
head(pruebas)

install.packages('neuralnet')
library(neuralnet)

formula = medv ~ crim + zn + indus + chas + nox + rm + age + dis + rad + tax + ptratio + black + lstat
red.neuronal = neuralnet(formula, data=entrenamientos, hidden=c(5,3), linear.output=TRUE)

plot(red.neuronal)

str(predicciones)
predicciones.correctas = predicciones$net.result * (max(datos$medv) - min(datos$medv)) + min(datos$medv)7

pruebas.convertidas = (pruebas$medv) * (max(datos$medv)) + min(datos$medv)
error = sum((pruebas.convertidas - predicciones.correctas)^2 /nrow(pruebas))
error
errores

library(ggplot2)
grafico = ggplot(errores, aes(x=pruebas.convertidas, y=predicciones.correctas))
grafico = grafico + geom_point()
print(grafico)