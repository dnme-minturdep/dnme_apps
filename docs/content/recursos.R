

library(tidyverse)

data.frame(
  recurso = c("Turismo Internacional", "Ocupación Hotelera", "Naturaleza", "EVYTH", "Explorador", "PUNA"), 
  src = c("img/ti.png", "img/eoh.png","img/parques.png","img/evyth.png","img/ti_dash.png" , "img/puna.png"), 
  url = c("https://tableros.yvera.tur.ar/reportes/internacional.html",
          "https://tableros.yvera.tur.ar/reportes/eoh.html",
          "https://tableros.yvera.tur.ar/reportes/parques.html",
          "https://tableros.yvera.tur.ar/reportes/evyth.html",
          "https://tableros.yvera.tur.ar/turismo_internacional/",
          "https://tableros.yvera.tur.ar/puna/"), 
  description  = c("El reporte presenta la última información de turismo receptivo, emisivo y balanza turística 
                   por todas las vías (aéreo, terrestre y fluvial / marítimo)",
                   "Presenta los últimos datos disponibles de la Encuesta de Ocupación Hotelera (EOH)",
                   "Información de visitas a Parques Nacionales",
                   "Reporte de los últimos datos de Turismo Interno estimados por la Encuesta de Viajes y Turismo de los Hogares",
                   "Tablero para la consulta de datos desagregados de las estimaciones históricas de Turismo Internacional",
                   "Tablero para la consulta de estimaciones agregadas del Padrón Único Nacional de Alojamientos (PUNA)"), 
  tags = c("Reporte","Reporte","Reporte","Reporte","Tablero", "Tablero"),
  Todos = c(1, 1, 1, 1, 1, 1), 
  Tablero = c(0, 0, 0, 0, 1, 1), 
  Reporte = c(1, 1, 1, 1, 0, 0)) %>% 
  as_tibble() %>% 
  mutate(orden = c(1, 3, 4, 5, 2, 6)) %>% # OREDNO POR TEMA Y NO POR TIPO DE RECURSO 
  arrange(orden) %>% 
  write_csv(here::here("content", "recursos.csv"))
