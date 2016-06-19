library(shiny)

# Define UI for application that solves a quadratic expression
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Quadratic Expression Solutions"),
  
  sidebarLayout(
    sidebarPanel(
       numericInput('a', 'First Parameter', 1), 
       numericInput('b', 'Second Parameter', 1), 
       numericInput('c', 'Third Parameter', -2), 
       submitButton('Submit')
    ),

    mainPanel(
        h3('Your Roots'), 
        h4('You entered for a'), 
        verbatimTextOutput("a"), 
        h4('You entered for b'), 
        verbatimTextOutput("b"), 
        h4('You entered for c'), 
        verbatimTextOutput("c"), 
        h4('Which resulted in a first root of'), 
        verbatimTextOutput("root1"), 
        h4('and a second root of'), 
        verbatimTextOutput("root2")
    )
  )
))
