# Elementos basicos de visualizacion 

# En R existen multiples paquetes que permiten crear visualizacion de datos.
# Plotly te permite realizar una gran variedad de funciones de visualización,
# por otro lado, RGL se enfoca en soluciones específicas como visualizaciones 3D.

# Algunos de los paquetes más populares incluyen:
# ggplot2, Plotly, Lattice, RGL, Dygraphs, Leaflet, Highcharter, Patchwork, 
# gganimate y ggridges. 

# ggplot2
# Creado por el estadístico y desarrolador Hadley Wickham en 2005, inspirado por
# el libro "The Grammar of Graphics", un estudio académico sobre la visualizacion
# de datos, escrito por el cientifico de la computación Leland Wilkinson.

# De igual forma que los humanos usamos la gramatica para establecer normas para
# crear oraciones, la gramática de los gráficos nos da normas para armar 
# cualquier tipo de visualización.

# ggplot2 tiene algunos bloques de constricción básicos que puedes usar para crear
# diagramas. Cuando tenemos claros estos bloques de consturccion básicos podemos
# usarlos para crear muchos tipos de diagramas diferentes. Además, puedes agregar
# o quitar capas de detalles a tu diatrama sin cambiar su estructura básica o los
# datos subyacentes.

# Puedes crear todo tipo de diagramas diferentes, entre ellos, diagramas de 
# dispersión, gráficos de barras, diagramas de línea, y muchos más. 
# Puedes cambiar los colores, el diseño y las dimensiones de tus diagramas y
# agregar elementos de texto como títulos, leyendas y etiquetas. Con solo un poco 
# de código puedes crear representaciones visuales de alta calidad.
# Además, ggplot2 te deja combinar manipulación y visualización de datos usando el 
# operador de canalización. Ggplot2 también tiene muchísimas funciones que 
# satisfacen todas tus necesidades de visualización de datos. 

# Nos enfocaremos en algunos conceptos centrales en ggplot2: 
# estética, figuras geométricas, facetas, etiquetas y anotaciones.

# Estética
# la estética incluye cosas como el tamaño, la forma y el color de tus puntos de 
# datos. Piensa en una estética como una conexión o mapeo entre una característica 
# visual en tu diagrama y una variable en tus datos. 

# Figuras geométricas
# Una figura geométrica se refiere al objeto geométrico usado para representar 
# tus datos. Por ejemplo, puedes usar puntos para crear un diagrama de dispersión,
# barras para crear un gráfico de barras o líneas para crear un diagrama de líneas. 
# Puedes elegir una figura geométrica que se adapte al tipo de datos que tienes. 
# Los puntos muestran la relación entre dos variables cuantitativas. 
# Las barras muestran una variable cuantitativa que varía entre diferentes categorías.

# Facetas
# Las facetas te permiten mostrar grupos más pequeños, o subconjuntos, de datos.
# Con las facetas, puedes crear diagramas separados para todas las variables 
# en tu conjunto de datos.

# Funciones label y annotate
# Por último, las funciones label y annotate te dejan personalizar tu diagrama. 
# Puedes agregar texto como títulos, subtítulos y leyendas para comunicar el
# propósito de tu diagrama o destacar datos importantes.

# Proceso de creación de un diagrama

# 1. Preparar datps
# El paquete ggplot2 te permite usar código R para especificar el conjunto de 
# datos, la figura geométrica y la estética de tu diagrama.
# Para hacerlo, primero elige un conjunto de datos con el que trabajar. 
library(ggplot2)
library(palmerpenguins)
data("penguins")
View(penguins)

# 2. Creación del diagrama

# Supongamos que quieres modelar la relación entre masa corporal y longitud de
# aletas en las tres especies de pingüino. Puedes elegir una figura geométrica
# específica que se adapte al tipo de datos que tienes. Los puntos muestran la
# relación entre dos variables cuantitativas. Un diagrama de dispersión de puntos
# sería una manera eficaz de mostrar la relación entre las dos variables. 
# Puedes colocar longitud de aleta en el eje X y masa corporal en el eje Y.

ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, 
                                                  y = body_mass_g))

# ggplot(data = penguins):En ggplot 2, comienzas un diagrama con la función
# ggplot(). La función ggplot() crea un sistema de coordenadas al que puedes 
# agregar capas. El primer argumento de la función ggplot() es el conjunto de 
# datos a usar en el diagrama. En este caso, es “penguins”.

# +: Luego agregas un símbolo “+” para agregar una nueva capa a tu diagrama. 
# Completas el diagrama agregando una o más capas a ggplot().

# geom_point(): Luego eliges una figura geométrica agregando una función 
# geométrica. La función geom_point() usa puntos para crear diagramas de 
# dispersión, la función geom_bar usa barras para crear gráficos de barras, etc.
# En este caso, elige la función geom_point para crear un diagrama de dispersión 
# de puntos. El paquete ggplot2 viene con muchas funciones geométricas diferentes. 

# (mapping = aes(x = flipper_length_mm, y = body_mass_g)): Cada función geométrica
# en ggplot2 toma un argumento de mapeo. Esto define cómo se aplican variables 
# de tu conjunto de datos a propiedades visuales. El argumento de mapeo siempre
# se utiliza en conjunto con la función aes(). Los argumentos X e Y de la 
# función aes() especifican qué variables aplicar al eje X y al eje Y del 
# sistema de coordenadas. En este caso, quieres aplicar la variable 
# “flipper_length_mm” al eje X y la variable “body_mass_g” al eje Y.

# El diagrama muestra una relación positiva entre las dos variables.
# Es decir, cuanto más grande es el pingüino, más larga es la aleta.

# Consejo profesional: Puedes escribir la misma sección de código que aparece
# arriba usando una sintaxis diferente con el argumento de mapeo dentro de la
# llamada de ggplot(): 
#   ggplot(data = penguins, mapping = aes(x = flipper_length_mm, 
#                                         y = body_mass_g)) + geom_point()

#  Modificar la apariencia de las visualizaciones

# Con la estética podemos cambiar la apariencia de nuestros datos en la 
# visualizacion que estamos crando. Existen tres atributos básicos a tener en
# cuenta al crear visualizaciones de datos.

# La estética se define como una propiedad visual de un objeto de tu diagrama y
# los tres atributos eséticos son los siguientes:

# color, tamaño y forma

# color: te permite modificar el color de todos los puntos de tu diagrama o el
# color de cada grupo de datos.

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, 
                                                 y=body_mass_g,
                                                 color=species))
# En el bloque anterior decimos que cambie el color por cada especie diferente.

# tamaño: te permite modificar el tamaño de los puntos de tu diagrama por grupo
# de datos

# forma: te permite modificar la forma de los puntos de tu diagrama por grupo 
# de datos

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, 
                                                 y=body_mass_g,
                                                 shape=species))
# Aqui destacamos las diferentes especies usando diferentes formas geometricas
# aplicando la variable especies a la estetica shape

# Podemos aplicar más de una estetica a una misma variable
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, 
                                                 y=body_mass_g,
                                                 shape=species, color=species))
# Aplicando las tres esteticas
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, 
                                                 y=body_mass_g,
                                                 shape=species, 
                                                 color=species,
                                                 size=species))
# estetica alpha
# Esta estetica mapaea nuestros datos con la estetica alfa que controla la 
# transparencia de los puntos.
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, 
                                                 y=body_mass_g,
                                                 alpha=species))

# Todo lo relacionado con la estetica de nuestro conjunto de datos ira dentro de
# la funcion aes(), definir los ejex x e y son parte de la estetica. Como  se 
# mencionó, modificar el color, tamaño y forma es parte de la estetica, por lo 
# que si deseamos modificarlos iran dentro de la función mecionada.

# Con la funcion aes, tambien mapeamos nuestros datos lo que significa emparejar
# una variable especifica en tu conjunto de datos con una estética especifica.

# Podemos fijar una estetica por separado de una variable especifica. 
# Digamos que queremos cambiar el color de tosos los puntos a violeta.
# Pero no queremos aplicar color a una variable especifica como especia. Solo
# queremos que cada punto de nuestro diagrama de dispersion sea violeta. Para 
# lograrlo debemos colocar nuestro nuevo trozo de codigo fuera de la funcion
# aes y usar comillas para nuestro valor de color.

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, 
                                                 y=body_mass_g,),
                                   color='purple')

# Usando diferentes funciones geometricas

# Anteriormente nos hemos centrado en los gráficos de dispersión de puntos,
# pero existen diferentes gráficos que se pueden usar en ggplot al modificar
# las figuras geometricas que representaran a nuestros datos.

# En ggplot2 una figura geométrica es un objeto geométrico usado para representar
# a nuestros datos. Las figuras geometricas incluyen puntos, barras, lineas, etc.

# geom functions
# geom_point(): Para graficos de dispersion de puntos
# geom_bar(): Para gráficos de barras
# geom_line(): Para graficos de linea
# geom_smoot(): Grafica con linea suavizada
# geom_jttler(): Crea diagramas de dispersión y luego agrega una pequeña cantidad
# de ruido aleatorio, ayuda a lidiar con el trazado excesivo, que sucede cuando
# los puntos de datos de un diagrama se super ponen unos con otros.

# Para modificar la figura geometrica a utilizar es necesario modificar la funcion
# geom en el codigo. Si queremos modificar el grafico de dispersion que mostraba
# la relacion entre las variables flliper_length_mm y body_mass_g por una grafica
# con una linea suave podemos hacerlo como sigue:

ggplot(data=penguins) + geom_smooth(mapping = aes(x=flipper_length_mm,
                                                y=body_mass_g))
# La funcion geom_smooth es util para mostrar tendencias generales en nuestros datos.
# La linea muestra con laridad la relación positiva entre nuestras variables.

# Podemos combinar diferentes geometrias, supongamos que deseamos mostrar tanto
# la tendencia general y los puntos individuales de nuestros datos.

ggplot(data=penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm,
                            y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm,
                           y=body_mass_g))

# Digamos que ahora queremos modelar una linea separada para cada especie

ggplot(data=penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm,
                            y=body_mass_g, linetype=species))
# El bloque anterior agrega la estetica linetype para que a cada especie de
# pinguino le asigne una tipo de linea y una linea suavizada diferente.
# Si quisieramos que las lineas fueran iguales pero una diferente para cada 
# especie podemos utilizar la estitca line

ggplot(data=penguins) +
  geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g), color='green') +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g), color='red')

# Con el codigo anterior comparamos ambas geometrias

