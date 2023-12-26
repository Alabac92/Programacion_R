# DEFINICIÓN DE VECTORES

# Una forma de crear una vector es utilizar la función c() 
# llamada función "combinar"
# Los vectores atómicos solo pueden contener elementos del mismo
# tipo.

# Definición de un vector númerico
vector_01 <- c(2.5,4.9,1.3)

# Definición de un vector de números enteros
vector_02 <- c(2L, 3L, 9L)

# Definición de un vector de caracteres y valores logicos
vector_03 <- c("Ciencia", "Datos", "Tecnología")
vector_04 <- c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE)

# DETERMINAR PROPIEDADES DE VECTORES
# Propiedades de los vectores (Tipo y longitud)

# Determinar el tipo de vector con el que se trabaja
typeof(vector_03)

# Verificar si un vector es de un tipo específico usando la 
# función is
is.logical(vector_02)
is.integer(vector_02)

# Determinar la longitud del vector
length(vector_04)

# Asignación de nombres a los elementos de un vector

# Definimos el vector x como ejemplo
x <- c(1, 3, 5)

# Asignamos nombres a cada elemento del vector x con la
# función names()
names(x) <- c("a", "b", "c")

# Pasamos por consola el vector x
x

# La asignación de nombres a los elementos de un vector 
# puede ser útil para hacer que el código sea más legible 
# y comprensible, ya que puedes referirte a los elementos 
# por sus nombres en lugar de sus índices. 

# Para acceder al elemento "c" del vector x
x["c"]
# Con lo anterior enviamos por pantalla al elemento c del
# vector x