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
									value = "title"),
								textInput(inputId = "scatly_color", label = "Color: ",
									value = ""),
								textInput(inputId = "scatly_symbol", label = "Symbol: ",
									value = "circle"),
								selectInput('scatly_fit', 'Fit Line',
									choices = c("TRUE" = TRUE, "FALSE" = FALSE),
									selected = "FALSE",  width = '150px'),
								textInput(inputId = "scatly_ltype", label = "Line Type: ",
									value = "dashed")
							),

							column(2,
								selectInput('scatly_select_y', 'Variable Y: ',
                              choices = "", selected = ""),
                textInput(inputId = "scatly_ylabel", label = "Y Axes Label: ",
                  value = "label"),
                textInput(inputId = "scatly_text", label = "Text: ",
                  value = ""),
                numericInput(inputId = "scatly_opacity", label = "Opacity: ",
                	min = 0, max = 1, step = 0.1, value = 0.5),
                numericInput(inputId = "scatly_size", label = "Size: ",
                	min = 1, step = 1, value = 5),
                textInput(inputId = "scatly_lcol", label = "Line Color: ",
                  value = ""),
                numericInput(inputId = "scatly_lsize", label = "Line Width: ",
                	min = 0, step = 0.1, value = 1)
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