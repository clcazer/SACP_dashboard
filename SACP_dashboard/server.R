#Define server logic required to draw a histogram
function(input, output) {
  
  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkblue', border = 'white',
         xlab = 'Time to next eruption (in mins)',
         main = 'Histogram of waiting times for next eruoption')
  })
}