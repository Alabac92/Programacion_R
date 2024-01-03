# Proyecto R: Explorando el Mundo de los Datos

¡Bienvenido al repositorio de programación en R! Aquí encontrarás herramientas y técnicas para manipular, transformar y visualizar datos de una manera creativa 
y efectiva. ¡Vamos a sumergirnos en el fascinante universo de R juntos!

## 💎 Archivo Importante

Estos son los archivos centrales de nuestro proyecto. No olvides revisarlos en en
[programacion_en_R.pdf](https://github.com/Alabac92/Programacion_R/blob/main/programacion_en_R.pdf) y en [programacion_en_R.Rmd](https://github.com/Alabac92/Programacion_R/blob/main/programacion_en_R.Rmd) para obtener el código fuente.

## Estructuras de Datos
En esta sección, descubrirás las diversas estructuras de datos que R ofrece. Desde vectores hasta listas, exploraremos cómo utilizar estas poderosas estructuras 
para organizar y manipular datos de manera eficiente.

```R
# Crear un data frame
my_data_frame <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Ana", "Juan", "Elena"),
  Age = c(25, 30, 28)
```
## Trabajo con Fechas y Horas ⏰
Dominar la manipulación de fechas y horas es esencial en análisis de datos. Aquí aprenderás a trabajar con paquetes como lubridate, facilitando operaciones como cálculos de diferencia de tiempo, extracción de componentes temporales y manejo de zonas horarias.

```R
# Instalar y cargar el paquete lubridate
install.packages("lubridate")
library(lubridate)

# Crear un objeto de fecha
my_date <- ymd("2022-01-01")

# Calcular la fecha después de 3 meses
new_date <- my_date %m+% months(3)
```

## Transformación y Organización de Datos 🛠️
En esta sección, nos sumergimos en técnicas avanzadas de manipulación de datos. Desde la limpieza y filtrado hasta la agregación y creación de nuevas variables, descubrirás cómo dar forma a tus datos para obtener información significativa.

```R
penguins %>% 
  filter(species == "Adelie") # Exactamente igual a la especia Adelie
```
## Visualización de Datos 📈
¡La visualización es la clave para comunicar efectivamente tus hallazgos! Exploramos técnicas de visualización de datos utilizando bibliotecas como ggplot2. Desde gráficos simples hasta visualizaciones más complejas, este recurso te ayudará a contar historias impactantes con tus datos.
```R
```{r funcion_annotate}
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",
       subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman") +
  annotate("text", 
           x=220, y=3500,
           label= "The Gentoos are the largest",
           color="black",
           fontface="bold",size=4.5,angle=25)
```

¡Explora, experimenta y disfruta del viaje de la programación en R! Este repositorio está diseñado para apoyarte en tu aprendizaje y desarrollo continuo. Si tienes preguntas, sugerencias o ideas, ¡no dudes en contribuir y ser parte de esta comunidad! 🚀

## Contribuir
Si te sientes inspirado, ¡contribuye a este proyecto! Ya sea informando problemas, sugiriendo mejoras o enviando solicitudes de extracción, tu participación es bienvenida.

### Pasos para Contribuir:
1. Haz un fork del repositorio.
2. Crea una rama para tu contribución (git checkout -b mi-contribucion).
3. Haz tus cambios y realiza commit (git commit -am 'Añadir nueva característica').
4. Haz push a la rama (git push origin mi-contribucion).
5. Abre una solicitud de extracción y cuéntanos sobre tus cambios.
