library(shiny)

root1 <- function(a, b, c) (-b + sqrt(b^2 - 4 * a * c) / (2 * a))
root2 <- function(a, b, c) (-b - sqrt(b^2 - 4 * a * c) / (2 * a))

shinyServer(function(input, output) {
   
  output$a <- renderPrint(input$a)
  output$b <- renderPrint(input$b)
  output$c <- renderPrint(input$c)
  output$root1 <- renderPrint({root1(input$a, input$b, input$c)})
  output$root2 <- renderPrint({root2(input$a, input$b, input$c)})
})
