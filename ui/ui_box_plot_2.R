tabPanel('Box Plot - II', value = 'tab_box_plot_2',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Box Plot - II')
			),
			column(3, align = 'right',
				actionButton(inputId='box2othlink1', label="Demo", icon = icon("video-camera"),
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
								selectInput('boxly2_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "boxly2_xlabel", label = "X Axes Label: ",
                  value = "label"),
								textInput(inputId = "boxly2_title", label = "Title: ",
									value = "title")
							),

							column(2,
								selectInput('boxly2_select_y', 'Variable 2: ',
                              choices = "", selected = ""),
                textInput(inputId = "boxly2_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('boxly2_plot_1', height = '600px')
              )
						)
					),

					tabPanel('rbokeh',

						fluidRow(
							column(2,
								selectInput('bobox2_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "bobox2_xlabel", label = "X Axes Label: ",
                  value = "label"),
								textInput(inputId = "bobox2_title", label = "Title: ",
									value = "title")
							),

							column(2,
								selectInput('bobox2_select_y', 'Variable 2: ',
                              choices = "", selected = ""),
                textInput(inputId = "bobox2_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                plotlyOutput('bobox2_plot_1', height = '600px')
              )
						)
					),

					tabPanel('highcharts',

						fluidRow(
							column(2,
								selectInput('hibox2_select_x', 'Variable 1: ',
                              choices = "", selected = ""),
								textInput(inputId = "hibox2_xlabel", label = "X Axes Label: ",
                  value = "label"),
								textInput(inputId = "hibox2_title", label = "Title: ",
									value = "title")
							),

							column(2,
								selectInput('hibox2_select_y', 'Variable 2: ',
                              choices = "", selected = ""),
                textInput(inputId = "hibox2_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8, align = 'center',
                highchartOutput('hibox2_plot_1', height = '600px')
              )
						)
					)

				)
			)
		)
	)
)