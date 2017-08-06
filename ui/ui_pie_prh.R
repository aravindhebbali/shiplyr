tabPanel('Pie Chart', value = 'tab_pie_prh',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Pie Chart')
			),
			column(3, align = 'right',
				actionButton(inputId='pieprhothlink1', label="Demo", icon = icon("video-camera"),
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
								selectInput('piely_select_x', 'Variable: ',
                              choices = "", selected = ""),
								textInput(inputId = "piely_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								textInput(inputId = "piely_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "piely_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('piely_plot_1', height = '600px')
              )
						)
					),

					tabPanel('highcharts',

						fluidRow(
							column(2,
								selectInput('hipie_select_x', 'Variable: ',
                              choices = "", selected = ""),
								textInput(inputId = "hipie_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								textInput(inputId = "hipie_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "hipie_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                highchartOutput('hipie_plot_1', height = '600px')
              )
						)
					)
				)
			)
		)
	)
)