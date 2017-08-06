tabPanel('Scatter Plot', value = 'tab_scatter_prh',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Scatter Plot')
			),
			column(3, align = 'right',
				actionButton(inputId='scatprhothlink1', label="Demo", icon = icon("video-camera"),
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
								selectInput('scatly_select_x', 'Variable X: ',
                              choices = "", selected = ""),
								textInput(inputId = "scatly_xlabel", label = "X Axes Label: ",
                  value = "label"),
								textInput(inputId = "scatly_title", label = "Title: ",
									value = "title")
							),

							column(2,
								selectInput('scatly_select_y', 'Variable Y: ',
                              choices = "", selected = ""),
                textInput(inputId = "scatly_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('scatly_plot_1', height = '600px')
              )
						)
					),

					tabPanel('rbokeh',

						fluidRow(
							column(2,
								selectInput('boscat_select_x', 'Variable X: ',
                              choices = "", selected = ""),
								textInput(inputId = "boscat_xlabel", label = "X Axes Label: ",
                  value = "label"),
								textInput(inputId = "boscat_title", label = "Title: ",
									value = "title")
							),

							column(2,
								selectInput('boscat_select_y', 'Variable Y: ',
                              choices = "", selected = ""),
                textInput(inputId = "boscat_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                rbokehOutput('boscat_plot_1', height = '600px')
              )
						)
					)

				)
			)
		)
	)
)