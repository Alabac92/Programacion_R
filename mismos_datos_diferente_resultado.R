# Instalamos el paquete donde se encuentra el data set sobre el
# cuarteto de Anscombe
install.packages('Tmisc')

# Cargamos los datos
library(Tmisc)
data(quartet)
View(quartet)

# Este conjunto de datos contiene 4 conjuntos de ejex x e y.
# Los datos se pueden resumir a través de diferentes parametros estadisticos.
# Obtendremos un resumen de cada conjunto de datos con la media, desvest y la
# correalacion

# Cargamos paquetes necesarios para usar summarize
install.packages("dplyr")
library(dplyr)

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x, y))

# Al observar la salida del comando anterior podemos ver que tanto la media,
# como la desviacion estandar y la correlacion entre las variables x e y en 
# cada cuadrante es identica. Pero mirar unicamente el resumen estadistico puede
# resultar engañoso. Para notar esto, creaeremos algunos gráficos

ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + 
  facet_wrap(~set)
# Los gráficos fenerados muestran las grandes diferencias que hay para cada 
# cuadrante

# El paquete datasauRus crea diagramas con los datos Anscombe (los que estamos
# utilizando) en diferentes formas

install.packages('datasauRus')
library('datasauRus')

# Ahora crearemos un gráfico nuevo
ggplot(datasaurus_dozen, aes(x=x,y=y, colour=dataset)) + geom_point() + 
  theme_void()+ theme(legend.position = "none") + facet_wrap(~dataset,ncol=3)
