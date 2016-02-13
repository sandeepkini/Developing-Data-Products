library(ggplot2)
library(dplyr)
data <- mtcars
fourcyl <- data[data$cyl=="4",]
sixcyl <- data[data$cyl=="6",]
eightcyl <- data[data$cyl=="8",]

shinyServer(function(input, output) {
  
  output$carplot <- renderPlot ({
    vars <- switch(input$var,
       "Fourcylinders" = fourcyl,
       "Sixcylinders" = sixcyl,
       "Eightcylinders" = eightcyl)    
  
    qplot(wt, mpg, data=vars,xlab="Weight (Thousands of Pounds)", ylab="Miles per Gallon") + geom_smooth(method = lm, se = FALSE, colour= "black") + ylim(10,35) + xlim(1,6)
      })
})
