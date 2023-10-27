

library(tidyverse)

data.frame(
  recurso = c("Conectividad Aérea", "Turismo Internacional", "Ocupación Hotelera", "Naturaleza", "EVYTH", "Explorador",
              "PUNA", "MULC", "Empleo", "mapeAr", "Agencias", "SIG", "CRUCERISMO", "Conectividad Aérea Reporte",
              "Indicadores ODS"),
  src = c("img/conectividad.png","img/ti.png", "img/eoh.png","img/parques.png","img/evyth.png","img/ti_dash.png" ,
          "img/puna.png", "img/mulc.png", "img/empleo.png", "img/mapeAr.png", "img/agencias.png", "img/visor.png",
          "img/crucerismo.png", "img/conectividad_aerea.png","img/indicadores_ods.png"),
  url = c("https://tableros.yvera.tur.ar/conectividad/",
          "https://tableros.yvera.tur.ar/internacional.html",
          "https://tableros.yvera.tur.ar/eoh.html",
          "https://tableros.yvera.tur.ar/areas_protegidas.html",
          "https://tableros.yvera.tur.ar/interno.html",
          "https://tableros.yvera.tur.ar/turismo_internacional/",
          "https://tableros.yvera.tur.ar/puna/",
          "https://tableros.yvera.tur.ar/mulc.html",
          "https://tableros.yvera.tur.ar/empleo.html",
          "https://tableros.yvera.tur.ar/mapeAr",
          "https://tableros.yvera.tur.ar/agencias", 
          "https://tableros.yvera.tur.ar/inversiones", 
          "https://tableros.yvera.tur.ar/crucerismo",
          "https://tableros.yvera.tur.ar/conectividad.html",
          "https://tableros.yvera.tur.ar/tablero_ODS"
          ),
  description  = c("Tablero interactivo con información aerocomercial para el turismo",
                   "El reporte presenta la última información de turismo receptivo, emisivo y balanza turística
                   por todas las vías (aéreo, terrestre y fluvial / marítimo)",
                   "Presenta los últimos datos disponibles de la Encuesta de Ocupación Hotelera (EOH)",
                   "Información de visitas a Áreas Protegidas Nacionales y Provinciales",
                   "Reporte de los últimos datos de Turismo Interno estimados por la Encuesta de Viajes y Turismo de los Hogares",
                   "Tablero para la consulta de datos desagregados de las estimaciones históricas de Turismo Internacional",
                   "Tablero para la consulta de estimaciones agregadas del Padrón Único Nacional de Alojamientos (PUNA)",
                   "Reporte sobre transacciones en divisas relacionadas al turismo en el Mercado de Cambios (BCRA)",
                   "Reporte sobre empleo registrado en las ramas características del turismo",
                   "Tablero para la generación de mapas con información georeferenciada de Turismo",
                   "Tablero con información del Registro de Agencias de Viajes de la Dirección Nacional de Agencias de Viajes",
                   "Visor de Información Geográfica de Turismo para Plataforma de Inversiones", 
                   "Tablero interactivo con información sobre el crucerismo en Argentina",
                   "Reporte mensual sobre los últimos datos del sector aerocomercial a partir de la información de la Administración Nacional de Aviación Civil",
                   "Tablero interactivo para el seguimiento de indicadores de turismo en Argentina relacionados con los Objetivos de Desarrollo Sostenible (ODS)"
                   ),
  tags = c("Tablero","Reporte","Reporte","Reporte","Reporte","Tablero", "Tablero", "Reporte", 
           "Reporte", "Tablero", "Tablero", "Tablero", "Tablero", "Reporte", "Tablero"),
  Todos = c(1,1, 1, 1, 1, 1, 1, 1, 1, 1,1,1,1,1,1),
  Tablero = c(1, 0, 0, 0, 0, 1, 1, 0, 0, 1,1,1,1,0,1),
  Reporte = c(0,1, 1, 1, 1, 0, 0, 1, 1, 0,0,0,0, 1,0)) %>%
  as_tibble() %>%
  mutate(orden = c(-1,1, 5, 4, 3, 2, 6, 7, 8, 9, 0,-3,-4, -2,10)) %>%   # OREDNO POR TEMA Y NO POR TIPO DE RECURSO
  arrange(orden)  %>%
  write_csv(here::here("content", "recursos.csv"))

