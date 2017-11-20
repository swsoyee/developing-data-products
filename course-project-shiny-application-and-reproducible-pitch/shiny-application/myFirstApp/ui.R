library(shiny)
library(plotly)

#source("make-ui.R",local = TRUE, encoding="utf-8")
shinyUI(
    
    fluidPage(
        navbarPage(title = "Dataset iris",
                   tabPanel(title = "Welcome Page",
                            fluidRow(
                                column(3,
                                       wellPanel(
                                           uiOutput("lGlobalSetting"),
                                           selectInput("language", "Select your language:",
                                                       c("English" = "en",
                                                         "中文" = "cn",
                                                         "日本語" = "jp")),
                                           helpText("Just a select box. It won't work at present.")
                                       )
                                ),
                                column(9,
                                       wellPanel(
                                           helpText("This is a shiny application",
                                                    "of iris dataset presentation.",
                                                    "Click Scatter plot to see the",
                                                    "dataset.")
                                       )
                                )
                            )
                   ),
            
            tabPanel(title = "Scatter Plot", 
                fluidRow(
                    column(3,
                        wellPanel(
                            # Application title
                            titlePanel("Dataset iris"),
                            
                            selectInput(inputId = "xAxis",
                                        label = "X axis:",
                                        choices = names(iris[, 1:4]),
                                        selected = "Sepal.Length"),
                            
                            selectInput(inputId = "yAxis",
                                        label = "Y axis:",
                                        choices = names(iris[, 1:4]),
                                        selected = "Sepal.Width"),

                            sliderInput(inputId = "alpha",
                                label = "Transparency:",
                                min = 0,
                                max = 1,
                                value = .5
                            ),
                            helpText("Change the point transparecy.")
                        )
                    ),
                    column(9,
                        
                            tabsetPanel(
                                tabPanel("Scatter Plot",
                                         plotlyOutput("distPlot"),
                                         DT::dataTableOutput("summaryOutput")),
                                tabPanel("Box Plot", plotlyOutput("boxPlot")),
                                helpText("Useing your selection of 'X axis' value.")
                            )
                        
                    )
                )
            ),
            
            tabPanel("Document", "It's empty.")
        )
    )
)
