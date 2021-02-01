#!/usr/bin/env Rscript

####################################
# Data Professor                   #
# http://youtube.com/dataprofessor #
# http://github.com/dataprofessor  #
####################################

# Modified from Winston Chang, 
# https://shiny.rstudio.com/gallery/shiny-theme-selector.html

# Concepts about Reactive programming used by Shiny, 
# https://shiny.rstudio.com/articles/reactivity-overview.html

# Load R packages
library(shiny)
library(shinythemes)


# Define UI
ui <- fluidPage(theme = shinytheme("cerulean"),
navbarPage(
    # theme = "cerulean",  # <--- To use a theme, uncomment this
    "Pour Baba",
    tabPanel("Write to file",
            mainPanel(
                        h1("Save to file"),
                        
                        tags$h3("Input:"),
                        textInput("data", "Text to save to file:", ""),
                        textInput("fileName", "File Name:", "data"),
                        actionButton('save_inputs', 'Save inputs')
            ) # mainPanel
            
    ) # Navbar 1, tabPanel

) # navbarPage
) # fluidPage


# Define server function  
server <- function(input, output) {

observeEvent(input$save_inputs, {
    write(input$data, file = input$fileName)
})
} # server

options(shiny.autoreload = TRUE)

options(shiny.host = '0.0.0.0')
options(shiny.port = 3838)


# Create Shiny object
shinyApp(ui = ui, server = server)