library(shiny)

# UI
ui <- fluidPage(
	#Input
	selectInput(inputId = "animal", 
				label = "Choose animal:",
				choices = c("Cat","Dog",
							"Lion","Tiger"),
				selected = "Cat"),
	#Output
	textOutput(outputId = "sentence")
)

# Server
server <- function(input, output) {
	output$sentence <- renderText({
		paste0("A ", 
			   tolower(input$animal), 
			   " walks down the street.")
	})
}

# Shiny object
shinyApp(ui = ui, server = server)