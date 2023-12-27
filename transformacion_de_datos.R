# Transfromación de Datos
# A veces necesitamos dividir una variable entre múltiples columnas o
# combinar las columnas atuales, o incluso agregar nuevos valores a el 
# marco de datos. Las funciones básicas incluyen:
# separate(), unite(), mutate()

# Creamos un marco de datos desde cero
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", 
          "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", 
          "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer",
               "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

print(employee)

# separate()
# Permite separar datos de un data frame de una columna en especifico con algun
# separador que podamos encontrar por ejemplo un espacio

employee_separate <- separate(employee, name, into=c("first_name", "last_name"), sep=" ")

# Con la función anterior decimos "del data-frame employee en la columna name
# separa el contenido de cada fila en dos columnas, el primer elemento de la 
# separación lo colocas en la columna "first_name" y el segundo elemento en
# la columna "last_name", para encontrar cada elemento debes buscar un espacio
# en blanco como caracter de separacion.

# La función separate tiene un aliado, la función unite.

# unite()
# Esta función nos permite fusionar columnas entre sí, es decir, lo opuesto a la
# funcion separate

# Trabajando con el data.frame con dos columnas de nombre
unite(employee_separate, 'name', first_name, last_name, sep=" ")

# Con la funcion anterior decimos "Usa el data frame employee_separate, nombra la
# columna donde se juntaran las columnas como 'name, une las columnas 'first_name',
# y 'last_name' y separalos con un espacio"

# mutate()

# La función mutate()permite agregar una columna de datos es decir una nueva
# variable. 
install.packages("palmerpenguins")
library(palmerpenguins)
data('penguins')
View(penguins)

# En este dataset, la masa de los pinguinos se encuentra en gramos. Por lo que
# crearemos una nueva columna con la masa corporal en kg

penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)
