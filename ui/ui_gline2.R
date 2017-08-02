tabPanel('Line Chart - II', value = 'tab_gline2',

	fluidPage(

		fluidRow(
			column(9, align = 'left',
				h4('Line Plot - II')
			),
			column(3, align = 'right',
				actionButton(inputId='line2link1', label="Demo", icon = icon("video-camera"),
                     onclick ="window.open('http://google.com', '_blank')")
			)
		),

		hr(),

		fluidRow(
			column(12,
				tabsetPanel(type = 'tabs',

					tabPanel('Variables',

						fluidRow(
							column(2,
								selectInput('gline2_select_x', 'Variable: ',
                              choices = "", selected = ""),
								selectInput('gline2_group', 'Group: ',
                              choices = "", selected = ""),
								textInput(inputId = "gline2_title", label = "Title: ",
									value = "title"),
                textInput(inputId = "gline2_xlabel", label = "X Axes Label: ",
                  value = "label")
							),

							column(2,
								selectInput('gline2_y', 'Columns: ', choices = "", selected = ""),
								textInput(inputId = "gline2_subtitle", label = "Subtitle: ",
									value = "subtitle"),
                textInput(inputId = "gline2_ylabel", label = "Y Axes Label: ",
                  value = "label")
							),

							column(8,
                plotOutput('gline2_plot_1', height = '600px')
              )
						)
					),

					tabPanel('Aesthetics',
						fluidRow(
							column(2,
								br(),
								column(12,
									actionButton('gline2_col_yes', 'Color', width = '120px')
								),
								column(12,
									br(),
									br(),
									actionButton('gline2_ltype_yes', 'Line Type', width = '120px')
								),
								column(12,
									br(),
									br(),
									actionButton('gline2_size_yes', 'Size', width = '120px')
								)
							),
							column(2, 
								column(12,
									uiOutput('gline2_col_ui')
								),
								column(12,	
									uiOutput('gline2_ltype_ui')
								),
								column(12,	
									uiOutput('gline2_size_ui')
								)
							),
							column(8,
								plotOutput('gline2_plot_2', height = '600px')
							)
						)
					)
				)
			)
		)
	)

)