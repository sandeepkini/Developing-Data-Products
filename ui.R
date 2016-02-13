shinyUI(fluidPage(
  titlePanel("Understanding the Effect of Weight and MPG by Cylinder"),
  
  sidebarLayout(
    sidebarPanel( 
      selectInput( "var",
      label= "Choose the number of cylinders",
      choices=c("Fourcylinders", "Sixcylinders",
                "Eightcylinders"),
      selected = "Fourcylinders"
       )
    ),
    mainPanel(plotOutput("carplot")

)
))) 
