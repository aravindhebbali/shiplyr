tabPanel('Line Chart', value = 'tab_line_prh',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Line Chart')
			),
			column(3, align = 'right',
				actionButton(inputId='lineprhothlink1', label="Demo", icon = icon("video-camera"),
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
								selectInput('linely_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "linely_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								textInput(inputId = "linely_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "linely_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('linely_plot_1', height = '600px')
              )
						)
					)
				)
			)
		)
	)
)