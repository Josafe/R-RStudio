library(ggplot2)
library(ggplot2movies)

peliculas = movies
head(peliculas)

peliculas[c('title','year','rating')]
datos = ggplot(peliculas, aes(x=rating))
histograma = datos + geom_histogram(binwidth = 0.3)

histograma = datos + geom_histogram(binwidth = 0.3, color='green')

histograma = datos + geom_histogram(binwidth = 0.3, color='green', fill='green', alpha=0.3)

histograma = histograma + xlab('Puntuacion') + ylab('Frecuencia') + ggtitle('Histograma')
print(histograma)

coches = mtcars

grafico = ggplot(coches, aes(x=disp, y=mpg))
grafico = grafico + geom_point()
print(grafico)

grafico = grafico + geom_point(size=8, alpha=0.4)
print(grafico)

grafico = grafico + geom_point(size=8, color='red')
print(grafico)

grafico = grafico + geom_point(size=8, color='#2717C4')
print(grafico)

grafico = grafico + geom_point(aes(size=wt))
print(grafico)

grafico = ggplot(coches, aes(x=disp,y=mpg))
grafico = grafico + geom_point(size=8, aes(color=hp))
grafico = grafico + scale_color_gradient(low='blue', high='red')
print(grafico)

datos = mpg
head(datos)
str(datos)
      
grafico = ggplot(datos,aes(x=class))
grafico = grafico + geom_bar()
print(grafico)

grafico = grafico + geom_bar(aes(fill=drv))
print(grafico)