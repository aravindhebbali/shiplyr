tabPanel('Box Plot - I', value = 'tab_box_plot_1',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Box Plot - I')
			),
			column(3, align = 'right',
				actionButton(inputId='box1othlink1', label="Demo", icon = icon("video-camera"),
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
								selectInput('boxly1_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "boxly1_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								textInput(inputId = "boxly1_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "boxly1_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('boxly1_plot_1', height = '600px')
              )
						)
					)
				)
			)
		)
	)
)