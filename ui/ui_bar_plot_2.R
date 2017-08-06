tabPanel('Bar Plot - II', value = 'tab_bar_plot_2',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Bar Plot - II')
			),
			column(3, align = 'right',
				actionButton(inputId='bar2othlink1', label="Demo", icon = icon("video-camera"),
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
					),

					tabPanel('rbokeh',

						fluidRow(
							column(2,
								selectInput('bobar2_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "bobar2_xlabel", label = "X Axes Label: ",
                  value = "label"),
								textInput(inputId = "bobar2_title", label = "Title: ",
									value = "title")
							),

							column(2,
								selectInput('bobar2_select_y', 'Variable 2: ',
                              choices = "", selected = ""),
                textInput(inputId = "bobar2_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                rbokehOutput('bobar2_plot_1', height = '600px')
              )
						)
					)
				)
			)
		)
	)
)