########################################################################
# PACKAGES and FUNCTIONS #
########################################################################



library(data.table)
library(DT)
library(ggplot2)
library(knitr)
library(magrittr)
library(rmarkdown)
library(shiny)
library(plotly)
library(fOptions)
library(sde)
library(GEOquery)
library(DiagrammeR)
library(Heatplus)
  
########################################################################
# UI #
########################################################################

source("UI/toolUi.R")



source("UI/aboutUi.R")


source("UI/mainUi.R")



########################################################################
# SERVER #
########################################################################

source("R/server.R")

########################################################################
# RUN APP #
########################################################################

shinyApp(main_ui, server_fun)
