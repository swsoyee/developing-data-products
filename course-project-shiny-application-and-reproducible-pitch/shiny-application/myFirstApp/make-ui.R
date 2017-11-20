# UI
makeUI <- function(output, label){
    output$label <- renderUI({
        titlePanel(tr(label))
    })
}