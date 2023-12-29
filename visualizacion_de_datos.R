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