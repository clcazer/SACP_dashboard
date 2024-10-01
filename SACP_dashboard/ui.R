library(shiny)
library(renv)
renv::init()
#test change
# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("SACP Dashboard"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = c(30,50),
                  width="30%",
                  dragRange=TRUE),
    ),
    
    position = "right",
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

