

library(tidyverse)

data.frame(
  recurso = c("Turismo Internacional", "Ocupación Hotelera", "Naturaleza", "EVYTH", "Explorador"), 
  src = c("img/ti.png", "img/eoh.png","img/parques.png","img/evyth.png","img/ti_dash.png"), 
  url = c("https://tableros.yvera.tur.ar/reportes/turismo_internacional/ficha_turismo_internacional.html",
          "https://tableros.yvera.tur.ar/reportes/eoh/ficha_eoh.html",
          "https://tableros.yvera.tur.ar/reportes/parques/ficha_parques_nacionales.html",
          "https://tableros.yvera.tur.ar/reportes/evyth/ficha_trimestral_evyth.html",
          "https://tableros.yvera.tur.ar/turismo_internacional/"), 
  description  = c("El reporte presenta la última información de turismo receptivo, emisivo y balanza turística 
                   por todas las vías (aéreo, terrestre y fluvial / marítimo)",
                   "Presenta los últimos datos disponibles de la Encuesta de Ocupación Hotelera (EOH)",
                   "Información de visitas a Parques Nacionales",
                   "Reporte de los últimos datos de Turismo Interno estimados por la Encuesta de Viajes y Turismo de los Hogares",
                   "Tablero para la consulta de datos desagregados de las estimaciones históricas de Turismo Internacional"), 
  tags = c("Reporte","Reporte","Reporte","Reporte","Tablero"),
  Todos = c(1, 1, 1, 1, 1), 
  Tablero = c(0, 0, 0, 0, 1), 
  Reporte = c(1, 1, 1, 1, 0)) %>% 
  as_tibble() %>% 
  write_csv(here::here("content", "recursos.csv"))
