library(shiny)
B6 <- read.csv("1668 SK Tables - B6 Percent.csv")

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel( h4("UAE Dataset")),
	
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("x", "Brand:", 
                    choices=colnames(B6)),
        hr(),
        helpText("X360 Clinic")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("BarPlot")  
      )
      
    )
  )
)