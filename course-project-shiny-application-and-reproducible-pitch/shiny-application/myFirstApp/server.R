library(shiny)
library(plotly)
library(data.table)

shinyServer(function(input, output) {
   

    source("language.R",local = TRUE, encoding="utf-8")
    
    output$distPlot <- renderPlotly({
        p <- plot_ly(data = iris, 
                     x = iris[ ,input$xAxis], 
                     y = iris[ ,input$yAxis],
                     color = ~Species, 
                     alpha = ~input$alpha,
                     type = "scatter",
                     mode = "markers")
    })
    
    output$boxPlot <- renderPlotly({
        p <- plot_ly(data = iris,
                     x = ~Species,
                     y = iris[ ,input$xAxis],
                     color = ~Species,
                     type = "box")
        
    })
    
    summaryOutput <- reactive({
        data.table(iris)
    })
    
    output$summaryOutput <- DT::renderDataTable({
        DT::datatable(summaryOutput())
    })
    
    output$lGlobalSetting <- renderUI({
        titlePanel(tr("lGlobalSetting"))
    })
})
