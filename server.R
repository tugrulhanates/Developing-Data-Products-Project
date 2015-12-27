library(shiny)


shinyServer(function(input, output) {
  

  

    
  
  output$histogram_plot <- renderPlot({
    
   
    
    x    <- rnorm(input$volume)
    input$go
    
    # draw the histogram with the specified number of bins
    isolate(
      hist(x,  col = input$colour, border = 'black', main='Histogram')
    )
  })
  

  
})