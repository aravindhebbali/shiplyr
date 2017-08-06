tabPanel('Histogram', value = 'tab_hist_prh',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Histogram')
			),
			column(3, align = 'right',
				actionButton(inputId='histprhothlink1', label="Demo", icon = icon("video-camera"),
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
								selectInput('histly_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "histly_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								textInput(inputId = "histly_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "histly_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('histly_plot_1', height = '600px')
              )
						)
					),

					tabPanel('rbokeh',

						fluidRow(
							column(2,
								selectInput('bohist_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "bohist_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								textInput(inputId = "bohist_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "bohist_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                rbokehOutput('bohist_plot_1', height = '600px')
              )
						)
					)

				)
			)
		)
	)
)