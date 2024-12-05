meses = c('enero', 'febrero','marzo')
ventanas = c(120,100,80)
objectivos = c(TRUE, TRUE, FALSE)

datos = data.frame(meses, ventas, objectivos)
str(datos)

data()
AirPassengers

mtcars

head(mtcars)
tail(mtcars)
str(mtcars)
summary(mtcars)

datos = data.frame(meses, ventas, objectivos)

datos[1, ]
datos[,1]
datos[2,2]
datos[2,'ventas']

datos[1,c('meses','objectivos')]
datos[1:2,c('meses','objectivos')]

subset(datos, subset= ventas>=100)
datos

orden = order(datos[,'ventas'])
orden

datos[orden,]

orden.descendiente = order(-datos[,'ventas'])
orden.descendiente

datos[orden.descendiente, ]

datos
datos$meses
datos$ventas
datos$objectivos
datos$ventas[1]
datos$objectivos[3]

datos['ventas']
datos['objectivos']
datos['meses']

numeros = 1:10
numeros

letras = letters[1:10]
letras

datos = data.frame(col1=numeros, col2=letras)
datos

write.csv(datos, file='fichero.csv')

datos2 = read.csv('fichero.csv')
datos2

datos2$X = NULL
datos2

numeros = 1:10
letras = letters[1:10]
datos1 = data.frame(numeros, letras)
datos1

datos2 = data.frame(numeros=11, letras='k')

datos3 = rbind(datos1, datos2)
datos3

numeros = 1:15
letras = letters[1:5]
datos = data.frame(col=numeros, col2=letras)
datos

datos$col3 = datos $ col1 * 2
datos
colnames(datos)
#colnames(datos) = c('c1','c2','c3')
datos

colname(datos)[3] = 'Nueva'
datos

datos[datos$c1 > 3, ]

head(mtcars)
any(is.na(mtcars))
mtcars[is.na(mtcars)] = 0

nombres = c('Antonio','Maria','Juan')
edades = c(40,35,30)
sexo = c('M','F','M')
datos = data.frame(nombres, edades, sexo)
datos

coches = mtcars
is.data.frame(coches)

head(coches)
head(coches, 10)

mean(coches$mpg)
coches['Mazda RX4', 'cyl']
coches['Mazda RX4',]$cyl

coches[coches$cyl==8 & coches$disp > 400, ]
subset(coches, cyl==8 & disp > 400)

coches[ , c('disp', 'wt')]

coches$rendimiento = coches$hp / coches$wt
head(coches)

vector = 1:10
matriz = matrix(1:30, nrow=3)
datos = mtcars
vector
matriz
head(datos)

lista = list(vector, matriz, datos)
lista

lista[1]
lista[2]

lista = list(vector=vector, matriz=matriz, datos=datos)
lista

listas$vector
lista$matriz
lista$datos

lista[1]
lista[2]
lista['vector']
lista['matriz']

class(lista$vector)
class(lista$matriz)
class(lista$datos)

vector2 = lista$vector
class(vector2)

str(lista)



