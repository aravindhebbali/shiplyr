tabPanel('plotly', value = 'tab_plotly',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('plotly charts')
			),
			column(3, align = 'right',
				actionButton(inputId='barly1link1', label="Demo", icon = icon("video-camera"),
                     onclick ="window.open('http://google.com', '_blank')")
			)
		),

		hr(),

		fluidRow(
			column(12,
				tabsetPanel(type = 'tabs',
					
					tabPanel('Bar Plot - I',

						fluidRow(
							column(2,
								selectInput('barly1_select_x', 'Variable: ',
                              choices = "", selected = ""),
								textInput(inputId = "barly1_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								textInput(inputId = "barly1_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "barly1_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('barly1_plot_1', height = '600px')
              )
						)
					),

					tabPanel('Bar Plot - II',

						fluidRow(
							column(2,
								selectInput('barly2_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "barly2_xlabel", label = "X Axes Label: ",
                  value = "label"),
								textInput(inputId = "barly2_title", label = "Title: ",
									value = "title")
							),

							column(2,
								selectInput('barly2_select_y', 'Variable 2: ',
                              choices = "", selected = ""),
                textInput(inputId = "barly2_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('barly2_plot_1', height = '600px')
              )
						)
					)

				)
			)
		)
	)
)