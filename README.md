# dnme_apps


### Descripción del proyecto :speech_balloon:

Codigo fuente del site **_Tableros y Reportes_** de la DNMyE  https://tableros.yvera.tur.ar/

### Objetivo del Repositorio :dart:

- Publicación de reportes con la actualización de últimos datos

- Acceso a tableros interactivos para la consulta y descarga de datos

### Contenidos :test_tube:


**TABLEROS** (vínculo a _Shiny apps_ generadas en otros repositorios)

- Turismo Internacional
- Padrón Hotelero - PUNA 

**REPORTES**

- Turismo Internacional
- Turismo Interno (EVyTH)
- Naturaleza
- Ocupación Hotelera
- Turismo en el MULC
- Empleo en Turismo 


### Instrucciones de usos :building_construction:

**REPORTES**

Para crear una nueva tarjeta para un reporte de actualización periódica se deber generar un `.Rmd` en la raíz del proyecto 

**Ejemplo**: [`interno.Rmd`](https://github.com/dnme-minturdep/dnme_apps/blob/master/interno.Rmd) para el reporte de Turismo Interno - EVyTH

![imagen](https://user-images.githubusercontent.com/96128473/159048430-c115421f-3055-4d02-985b-8800ad982f3a.png)

#### TARJETAS 

- Los contenidos de Tableros y Reportes se consolidan en la _landing_ del micrositio a través de tarjetas. 

- Las mismas están creadas a partir del **📦 [`{bs4cards}`](https://github.com/djnavarro/bs4cards)**. 

- El archivo `index.Rmd` https://github.com/dnme-minturdep/dnme_apps/blob/master/index.Rmd#L41 define los parámetros del _landing_

- El contenido está definido en el _script_  [_dnme_apps/content/**recursos.R**_](https://github.com/dnme-minturdep/dnme_apps/blob/master/content/recursos.R) en el que se define un `data.frame` para luego guardar como `recurso.csv`, con los siguientes campos: 

  * `recurso` (titulo del recurso)
  * `src` (la fuente de la imagen para la tarjeta)
  * `url` (la ruta a la que dirigir el enlace de la tarjeta)
  * `description` (breve texto incorporado a la tarjeta)
  * `tags` (si se trata de un Reporte o un Tablero)
  * Una serie de variables dicotomicas (Todos, Tablero, Reporte) que definen que tarjetas se muestran en pantalla (por defecto _Todas_)


![imagen](https://user-images.githubusercontent.com/96128473/159062998-22bd29c1-f0d0-40a7-8f22-c830ee6f81ec.png)



### Cómo contribuir con el proyecto :twisted_rightwards_arrows:

Para colaborar en este proyecto, se recomienda hacer un Fork, trabajar sobre ese repositorio forkeado y hacer contribución para que el propietario vea qué cambios se realizaron, este al tanto y lo actualice.
