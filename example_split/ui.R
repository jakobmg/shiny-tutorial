fluidPage(
	titlePanel("Histogram"),
	sidebarLayout(
		sidebarPanel(
			#Input
			numericInput(inputId = "mean", 
						 label = "Mean:",
						 value = 0),
			numericInput(inputId = "sd", 
						 label = "Standard Deviation:",
						 value = 1, min = 0)	
		),
		mainPanel(
			tags$header(tags$strong("This is a header")),
			#Output
			plotOutput(outputId = "hist")	
		)
	)
)
