library(shiny)
shinyServer(function(input, output) {


    modelpred <- reactive({
        mpgInput <- input$sliderMPG

    })


    output$plot <- renderPlot({
        mpgInput <- input$sliderMPG

        boxplot(mpg ~ am, data = mtcars,
                main = "Plot: Fuel flow by Transmission type",
                xlab = "Transmission type (0 - auto,1 - manual)",
                ylab = "Fuel flow (mpg)")
        abline(h=mpgInput, col= "red")
    })


})
