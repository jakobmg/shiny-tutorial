library(shiny)



# Server
function(input, output) {
	sample <- reactive(
		rnorm(1000, 
					mean = input$mean, 
					sd = input$sd)
	)
	output$hist <- renderPlot({
		
		hist(sample())
	})
}
