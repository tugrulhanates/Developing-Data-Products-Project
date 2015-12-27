library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Normal Distribution Visualisation"),
  

  sidebarLayout(
    sidebarPanel(
      p('Please specify a sampling size volume from the slider below'),
 
      sliderInput("volume",
                  "Volume(randomly selected):",
                  min = 10,
                  max = 1000,
                  value = 10),
      
      
      
      radioButtons('colour','Histogram Colour',
                         c('Red' = 'red',
                           'Blue' = 'blue',
                           'Green' = 'green',
                           'Yellow' = 'yellow',
                           'Black' = 'black')
                         
                         ),
      
      actionButton('go', 'Change Colour')
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("histogram_plot")

    )
  )
))