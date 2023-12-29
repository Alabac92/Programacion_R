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