numero = 10
print(numero)

vector = 1:10

matriz = matrix(vector)
matriz = matrix(vector, nrow = 2)

empresa1 = c(100,80,90)
empresa2 = c(50,120,80)

ventas = c(empresa1, empresa2)
ventas

matriz.ventas = matrix(ventas, nrow=2, byrow=TRUE)
matriz.ventas

meses = c('enero','febrero','marzo')
colnames(matriz.ventas) = meses
matriz.ventas

matriz = matrix(1:16, nrow=4, byrow=TRUE)
matriz +5
matriz -5

matriz = matriz*2
matriz = matriz/2

matriz * matriz
matriz^2

matriz = matrix(ventas, byrow=T, nrow=2)

meses = c('enero','febrero','marzo')
empresas = c('empresa1','empresa2')
colnames(matriz) = meses
rownames(matriz) = empresas
matriz

colSums(matriz)
rowSums(matriz)

empresa3 = c(80,120,110)
matriz = rbind(matriz, empresa3)
matriz

media = rowMeans(matriz)
media

matriz = cbind(matriz, media)
matriz

matriz = matrix(1:25, byrow=T, nrow=5)
matriz[1,]
matriz[,1]

animales = c('perro','gato','mono','perro','gato')
factor(animales)
summary(factor(animales))

temperaturas = c('frio','templado','templado','frio','caliente','caliente','frio')
temperaturas

temperaturas.ordenadas = factor(temperaturas, ordered=TRUE, levels = c('frio','templado','caliente'))
summary(temperaturas.ordenadas)

vector1 = c(4,10,5,3)
vector2 = c(2,8,25,14)
matriz = rbind(vector1, vector2)
matriz

1:24
matriz = matrix(1:24, nrow=6)
matriz[3,4]

matriz.nueva = matriz[1:3,1:2]
matriz.nueva

suma = rowSums(matriz.nueva)
matriz.nueva = cbind(matriz.nueva, suma)
matriz.nueva
