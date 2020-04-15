library(shiny)
shinyUI(fluidPage(
    titlePanel("Fuel flow given by Transmission type"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderMPG", "What kind of transmission type is better at particular level of fuel flow?", 10, 35, value = 20),
            submitButton("Submit")
        ),
        mainPanel(
            plotOutput("plot"),

        )
    )
))

