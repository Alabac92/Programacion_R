# ORGANIZAR DATOS

# Si nuestra información no esta ordenada no podemos transformar la información
# en conocimiento. Ordenar nuestros datos nos permite conocer nuevos detalles
# de nuestros datos.

# Para lograrlo utilizaremos las funciones:
# arrange(), group_by() y filter()

# Insertamos el paquete tidyverse para poder utilizar su núcleo
library(tidyverse)
# Obtención de conjunto de datos
install.packages("palmerpenguins")

# Cargamos nuestros datos
library(palmerpenguins)

# Ordenar datos por una columna especifica en este caso longitud de su pico
# Los siguientes comandos crean un tibble y es importante recordar que
# estos comandos NO modifican mi conjunto de datos, solo estan temporalmente por
# pantalla
penguins %>% arrange(bill_length_mm) # Ordena ascendentemente

penguins %>% arrange(-bill_length_mm) # Ordena descendente añandiendo -

# Si deseamos crear un nuevo marco de datos que contenga los datos ordentados
# seguiremos el siguiente ejemplo, con él logramos guardar datos limpios sin
# perder infromación del conjunto de datos original
penguins_bill_descen <- penguins %>% arrange(-bill_length_mm)
View(penguins_bill_descen)

# group_by()

# Esta función suele combinarse con otras funciones, nos permite agrupar por
# alguna columna en particular y luego realizar una operación esos grupos

# Creamos nuestro grupo
penguins %>% 
  group_by(island) %>% # Agrupamos por isla
  drop_na() %>% # Eliminamos filas con valores nulos en cualquier columna
  summarise(mean_bill_length_mm = mean(bill_length_mm))
# En el fragmento anterior la función summarise se utiliza para resumir los datos
# dentro de cada grupo, en este caso, calculando la media de una columna especi_
# ca.

# Otro ejemplo de uso
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(max_bill_length_mm = max(bill_length_mm))

# Podemos utilizar tanto group_by como summarise para realizar los dos ejemplos
# anteriores simultasneamente:

penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarise(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

# El fragmento anterior logra realizar varias tareas de limpieza gracias al uso 
# de la canalización o pipes, el resultados es un conjunto de datos que muestra
# la longitud máxima del pico y el promedio de la longitud del pico por especie
# que se encuentra en cada isla.

# filter()
# Supongamos que deseamos obtener solo los datos sobre los pinguinos Adelie.

penguins %>% 
  filter(species == "Adelie") # Exactamente igual a la especia Adelie


