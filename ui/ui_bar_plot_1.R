tabPanel('Bar Plot - I', value = 'tab_bar_plot_1',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Bar Plot - I')
			),
			column(3, align = 'right',
				actionButton(inputId='bar1othlink1', label="Demo", icon = icon("video-camera"),
                     onclick ="window.open('http://google.com', '_blank')")
			)
		),

		hr(),

		fluidRow(
			column(12,
				tabsetPanel(type = 'tabs',
					
					tabPanel('plotly',

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

					tabPanel('rbokeh',

						fluidRow(
							column(2,
								selectInput('bobar1_select_x', 'Variable: ',
                              choices = "", selected = ""),
								textInput(inputId = "bobar1_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								textInput(inputId = "bobar1_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "bobar1_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                rbokehOutput('bobar1_plot_1', height = '600px')
              )
						)
					)

				)
			)
		)
	)
)