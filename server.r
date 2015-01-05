library(shiny)
library(gdata)
B6 <- read.csv("1668 SK Tables - B6 Percent.csv")

shinyServer(function(input, output) {
  output$BarPlot <- renderPlot({

	par(mai=c(2.5,1,0.5,0.5))
    barplot(B6[3:24,input$x], main="B6 Attributes", las=2, ylim=c(0, 100), space= 0.05, names.arg=(B6[3:24,1]), ylab="% selecting", xlab="", cex.names=1)
  })

})