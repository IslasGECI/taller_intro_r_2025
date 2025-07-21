# 📝 Notas – Sesión 1

- **Taller: _Introducción a R para principiantes_**
- **Fecha:** Lunes 21 de julio

---

## 🙋 Expectativas de las y los participantes

Al iniciar la sesión, las personas compartieron lo que esperaban del taller:

* Entender cómo funciona R, cómo usarlo y poder comunicarse mejor con el equipo de Ciencia de Datos.
* Refrescar conocimientos previos sobre R y RStudio.
* Familiarizarse con el programa y sentirse más cómodo usando R.
* Aprender a usar R, ejecutar scripts ya hechos y conocer cómo puede ayudarnos en nuestro trabajo.
* Saber qué se puede hacer con R.

Estas expectativas están alineadas con el objetivo y contenido del taller.

---

## 🎯 Objetivo del taller

El objetivo es crear en R la gráfica más sencilla que podríamos hacer en Excel, pero usando herramientas básicas de manipulación de datos con **Tidyverse**.
Este enfoque es **práctico**, **sin necesidad de experiencia previa**, y servirá para sentar las bases del uso de R.

---

## 💻 Introducción técnica

### ¿Qué es un script?

Un **script** es un archivo de texto con extensión `.R` que contiene un conjunto de instrucciones que R ejecuta.
Es como una receta: contiene los pasos que seguimos para transformar datos y obtener un resultado.

---

### ¿Qué es una variable?

Las **variables** en R son como pequeñas cajitas (o bolsas ziploc 😄) donde guardamos información.
Nos permiten reutilizar datos y organizar nuestro código.

* Se crean con el operador `<-` (asignación).
* Podemos verlas en el panel *Environment*.
* Se pueden borrar con el ícono de la escobita. 🧹

Tipos comunes de variables:

* Numéricas (`num`)
* Texto (`chr`)
* Booleanas (`bool`, TRUE o FALSE)

---

### ¿Qué es una función?

Una **función** en R es un bloque de código que realiza una operación específica. Tiene:

* **Entrada** (_input_)
* **Proceso** (lo que hace la función)
* **Salida** (_output_)

Ejemplo:

```r
datos <- c(3, 5)
promedio <- mean(datos)
```

Aquí:

* `datos` es un vector numérico (entrada)
* `mean()` es la función que calcula el promedio (proceso)
* `promedio` es la variable donde guardamos el resultado (salida)

---

### ¿Qué es un paquete?

Un **paquete** es una colección de funciones agrupadas por tema.
Por ejemplo, `readxl` para leer archivos Excel, o `ggplot2` para hacer gráficas.

* Se instalan una vez con `install.packages("nombre")`
* También pueden instalarse desde GitHub con `devtools::install_github("usuario/repositorio")`
* Para usarlos, se cargan en el script con `library(nombre)`

---

## 📖 Leer la documentación

Para conocer cómo funciona una función, podemos consultar la ayuda:

* `?mean` abre la documentación de la función `mean()`

La ventana *Help* (abajo a la derecha en RStudio) incluye:

* **Nombre de la función** y el paquete al que pertenece
* **Description**: Qué hace la función
* **Usage**: Cómo se usa
* **Arguments**: Qué significa cada argumento
* **Value**: Qué regresa la función
* **Examples**: Ejemplos listos para probar

---

## 📂 Estructura de un script

Un buen script tiene tres partes:

1. **Entrada**: leer datos, definir variables, cargar paquetes
2. **Proceso**: transformar o analizar los datos
3. **Salida**: generar resultados como gráficas, tablas o archivos

---

## ❓ Dudas frecuentes

**¿Cuál es la ventaja de usar R sobre Excel?**

- **Excel es excelente para tareas básicas**: almacenamiento de datos, cálculos rápidos y análisis exploratorios simples. Su interfaz gráfica es intuitiva y muy útil para trabajar con datasets pequeños.
Sin embargo, **R ofrece ventajas claras cuando el análisis se vuelve más complejo**. Es ideal para automatizar procesos, manejar grandes volúmenes de datos, realizar análisis estadísticos avanzados y crear visualizaciones reproducibles. Además, permite escalar los flujos de trabajo de forma más eficiente que Excel.
En resumen, **para tareas simples no hay mucha diferencia, pero R se vuelve mucho más útil a medida que aumenta la complejidad del análisis**.

**¿Cuál es la diferencia entre R y RStudio?**

- R es el motor que ejecuta el código. RStudio es la interfaz que facilita su uso. Es como comparar el motor de un auto con el volante y tablero.

**¿Una vez que instalo un paquete, tengo que volver a instalarlo?**

- No. Solo se instala una vez. Pero sí es necesario **cargarlo** cada vez que quieras usarlo, usando `library(nombre_del_paquete)`.

**¿Es recomendable mantener R y los paquetes actualizados?**

- En general, sí. Si surge un problema con versiones, se puede consultar con el equipo de Ciencia de Datos.

**¿Qué diferencia hay entre “proyectos” y “archivos” en RStudio?**

- Esta pregunta la abordaremos en más detalle en la siguiente sesión.

**¿Cómo funciona el argumento `trim` en `mean()`?**

- Lo veremos con un ejemplo más adelante, pero en resumen: el argumento `trim` se usa para calcular una **media truncada**. Esto significa que se elimina un porcentaje de los valores más bajos y más altos antes de calcular el promedio. Es útil para reducir el efecto de valores atípicos (_outliers_) en el resultado.
