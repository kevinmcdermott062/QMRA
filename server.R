library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$TC <- renderPrint({ input$TC })
  output$Ecoli <- renderPrint({ input$Ecoli})
 
   
})
