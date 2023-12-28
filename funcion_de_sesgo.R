# Función de sesgo
# En R podemos cuantificar el sesgo comparando el resultado real de nuestros
# datos con el resultado previsto. Existe explicacion estadistica detras de lo
# mencionado anteriormente, sin embargo, con la funcion bias no es necesario
# hacer el cálculo en forma manual.

# bias()
# La función bias calcula el promedio en que el resultado real supera al
# resultado previsto. Está incuido en el paqueto de diseño Sim.

# Si el modelo no tiene sesgo, el resultado debería ser bastante cercano a cero.
# Un resultado alto significa que tus datos podrían estar sesgados.

# Instalando el paquete
install.packages("SimDesign")

# cargando el paquete
library(SimDesign)

# Usaremos la función bias para comparar las temperaturas pronosticadas con las 
# temperaturas reales.

# Tomando una muestra del conjunto de datos de temperatura
actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)

# Usando bias
bias_01 = bias(actual_temp, predicted_temp)

# Otro escenario
# Trabajaremos para una tienda de juegos, la tienda viene llevando un registro de
# cuantas copias de juegos nuevos venden en la fecha de lanzamiento. Quieren 
# comparar estas cifras con sus ventas reales para saber si los pedidos de stock
# coinciden con sus necesidades reales

actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)

bias_02 <- bias(actual_sales, predicted_sales)

# Si el resultado del bias es positivo significa que estamos por abajo de lo
# pronosticado. Por el contrario, un resultado negativo indica que estamos por
# arriba del pronostico. En nuestro ultimo escenario, significaria que estamos
# pidiendo demasiado stock para las fechas de lanzamiento.

# El sesgo se refiere a la tendencia sistemática de los errores, es decir,
# si las predicciones tienden a ser sistemáticamente más altas o más bajas que 
# los valores reales.