# Taller: Introducción a R para principiantes

**¡Bienvenidos al taller de Introducción a R para principiantes!**

El propósito del taller es familiarizarnos con las herramientas básicas para la manipulación y visualización de datos en R.
Para ello, desarrollaremos un proyecto práctico de análisis exploratorio con datos de peso del petrel negro recolectados en Isla San Benito entre 2012 y 2017.

## 🧪 Proyecto del taller

Durante el taller desarrollaremos un **análisis exploratorio de datos** sencillo, en el que generaremos tres resultados principales:

1. Una gráfica de los datos crudos
2. Una tabla de disponibilidad de datos y resumen por año
3. Diagramas de cajas y bigotes por año

Este proyecto se llevará a cabo en dos (o posiblemente tres) sesiones:

- En la **primera sesión**, cargaremos los datos desde un archivo de Excel y generaremos la gráfica inicial.
- En la **segunda sesión**, construiremos la tabla resumen y los diagramas por año.
- Si es necesario, tendremos una **tercera sesión** para completar el análisis, resolver dudas o abordar temas adicionales.

## 🧰 Sesión 1

La primera sesión será el lunes 21 de julio, de 10:00 a.m. a 12:00 p.m. (hora de Ensenada).

Durante esta sesión, trabajaremos con las siguientes herramientas y conceptos clave:

- 📂 **Cargar y explorar datos en tablas (`tibble`)**: usaremos `read_excel()` y `as_tibble()` para importar y preparar los datos de forma estructurada.
- 🧹 **Limpiar y transformar datos con `dplyr`**: aplicaremos funciones como `mutate()`, `str_replace_all()`, `dmy()`, `as.numeric()` y `year()` para limpiar los datos y generar nuevas variables.
- 📊 **Visualizar datos con `ggplot2`**: crearemos una gráfica de dispersión utilizando `ggplot()`, `geom_point()` y `facet_wrap()` para observar patrones por año.
- 💾 **Exportar resultados**: guardaremos la gráfica como imagen PNG mediante `ggsave()`, para incluirla en reportes o presentaciones.

## ⚙️ Prerrequisitos para la sesión 1

Antes de la primera sesión, por favor realiza lo siguiente:

- **Instala R y RStudio** siguiendo los pasos 1 y 2 en este enlace:
    - 👉 https://posit.co/download/rstudio-desktop/
- **Descarga y descomprime** el material del taller desde el siguiente enlace:
    - 👉 https://github.com/IslasGECI/taller_intro_r_2025/archive/refs/heads/develop.zip

## 📚 Temario general del taller

A lo largo del taller, abordaremos los siguientes temas:

- Tour por RStudio
- Crear variables en R
- Cargar y explorar datos en tablas tipo *tibble*
- Limpiar y transformar datos con `dplyr`
- Organizar datos con `tidyr`
- Hacer gráficas con `ggplot2`
- Exportar resultados
- **Opcionales**: crear reportes con R Markdown y explorar el uso de herramientas de IA
