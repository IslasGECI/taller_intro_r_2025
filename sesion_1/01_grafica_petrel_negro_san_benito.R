# ==== PROPÓSITO DEL SCRIPT ====
# Este script limpia y visualiza datos morfométricos de pollos de petrel negro (2012–2017) en San Benito.
# Entrada: archivo Excel con mediciones de peso y fecha.
# Salida: gráfica PNG mostrando el peso de los pollos a lo largo del tiempo, por año.
# Dependencias: tidyverse, readxl, lubridate, here.


# ==== CARGAR PAQUETES ====
library(here)       # Rutas relativas robustas
library(lubridate)  # Manejo de fechas
library(readxl)     # Lectura de archivos Excel
library(tidyverse)  # Manejo y visualización de datos


# ==== CONFIGURACIÓN ====
ruta_datos <- here("datos", "medidas_morfometricas_pollos_petrel_negro_2012_2017_san_benito.xlsx")
ruta_grafica <- here("figuras", "peso_pollos_petrel_negro_san_benito.png")

meses_espanol_a_ingles <- c(
  "Ene" = "Jan", "Feb" = "Feb", "Mar" = "Mar", "Abr" = "Apr",
  "May" = "May", "Jun" = "Jun", "Jul" = "Jul", "Ago" = "Aug",
  "Sep" = "Sep", "Oct" = "Oct", "Nov" = "Nov", "Dic" = "Dec"
)


# ==== CARGAR DATOS ====
# Se lee el archivo Excel con datos crudos y se convierte a tibble para facilitar su manipulación.
datos <- read_excel(ruta_datos) %>%
  as_tibble()


# ==== LIMPIEZA DE DATOS ====
# Se estandarizan los nombres de los meses, se convierten las fechas y pesos,
# y se extrae el año como nueva variable.
datos_limpios <- datos %>%
  mutate(
    Fecha = str_replace_all(Fecha, meses_espanol_a_ingles),  # Traducción de meses
    Fecha = dmy(Fecha),                           # Conversión a fecha
    Masa  = as.numeric(Masa),                     # Conversión a numérico
    Año   = year(Fecha)                           # Extracción del año
  )


# ==== VISUALIZACIÓN ====
# Se crea una gráfica de dispersión de el peso a lo largo del tiempo, separada por año.
grafica <- ggplot(datos_limpios, aes(x = Fecha, y = Masa)) +
  geom_point(alpha = 0.3) +
  facet_wrap(~ Año, scales = "free_x") +
  labs(
    title = "Peso de pollos de petrel negro por año",
    x = "Fecha",
    y = "Peso (g)"
  ) +
  theme_minimal()
print(grafica)


# ==== EXPORTAR GRÁFICA ====
# Se guarda la gráfica como imagen PNG para su uso en reportes o presentaciones.
ggsave(
  filename = ruta_grafica,
  plot = grafica,
  width = 10,
  height = 6,
  dpi = 300
)

