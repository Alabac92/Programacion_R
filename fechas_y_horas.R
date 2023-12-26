# FECHAS Y HORAS EN R
# Para trabajar con fechas y horas utilizammos el paqute lubridate

# Cargar los paquetes tidyverse y lubridate (es parte de tidyverse)

# Instalacion de paquete tydyverse
install.packages("tidyverse")

# Carga de paquetes tidyverse y lubridate utilizando la función
# library()
library(tidyverse)


# Lubridate es un paquete diseñado para trabajar con fechas y horas 
# de una manera más sencilla y cómoda. Algunas de las funciones y 
# características clave incluyen:
#   
# Parseo de fechas: Facilita la conversión de texto a objetos 
# de fecha y hora.
# Manipulación de fechas: Proporciona funciones para extraer
# y manipular componentes de fechas, como días, meses, años, horas 
# y minutos.
# Operaciones con fechas: Permite realizar cálculos y operaciones 
# entre fechas de manera intuitiva.
# Manejo de zonas horarias: Facilita el trabajo con zonas horarias
# y la conversión entre ellas

# Trabajando con fechas y horas

# Tipos
# En R hay tres tipos de datos que hacen referencia a un instante en
# el tiempo

# Fecha: ("2002-10-17")
# Hora de un dia: ("23:54:46 UTC")
# Fecha-hora: ("2010-04-25 16:12:05 UTC")

# La hora se expresa en UTC, que quiere decir Hora Universal 
# Coordinada, más comúnmente conocida como tiempo civil. 
# Este es el estándar principal que regula los relojes y 
# la hora mundial.

# Obtener la fecha actual (mes, año, día)
today()

# Obtener fecha y hora actual
now()

# Al trabajar con R, hay tres modos posibles de crear formatos
# de fecha-hora: 
#   
#   Desde una cadena
# 
#   Desde una fecha individual
# 
#   Desde un objeto de fecha/hora existente
# 
# R crea fechas en el formato estándar yyyy-mm-dd (año-mes-día) 
# por defecto.

# Convertir a partir de una cadena

# Los datos de fecha/hora a menudo se expresan como cadenas. 
# Puedes convertir cadenas en fechas y fecha-hora utilizando 
# las herramientas provistas por lubridate. Estas herramientas
# automáticamente trabajan sobre el formato de fecha/hora. 
# Primero, identifica el orden en el año, el mes y el día que
# aparecen en tus fechas. Luego, ordena las letras y, m y d 
# (año, mes y día) en el mismo orden. Eso te dará el nombre de 
# la función lubridate que analizará tu fecha. 
# 
# Por ejemplo, para la fecha 2021-01-20, utilizarás el orden ymd:
fecha_01 <- ymd("2021-01-20")

# Enviamos por pantalla fecha_01
fecha_01

# mdy December 20th, 2023
fecha_02 <- mdy("Febrero 20th, 2023")
fecha_02

# Estas funciones también toman números que no están entre 
# comillas y los convierte al formato yyyy-mm-yy.
fecha_03 <- ymd(20210120)
fecha_03

# Crear componentes de fecha-hora

# La función ymd() y sus variantes crean fechas. 
# Para crear una fecha-hora desde una fecha, agrega un guion bajo 
# y una o más de las letras h, m y s (horas, minutos y segundos) 
# al nombre de la función:
fecha_04 <- ymd_hms("2021-01-20 20:11:59")
fecha_04

# Notar el orden en el que se ponen las letras en la función
fecha_05 <- ymd_hms("2021-01-20 20:11:59")
fecha_05

# Cambiar entre objetos existentes de fecha-hora
# Quizas se quiera cambiar entre una fecha-hora y una fecha.
# Se puede utilizar la función as_date() para convertir una
# fecha-hora en una fecha.

fecha_06 <- as_date(now())
fecha_06
