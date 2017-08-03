tabPanel('Bar Plot - I', value = 'tab_barly1',

	fluidPage(
		fluidRow(
			column(9, align = 'left',
				h4('Bar Plot')
			),
			column(3, align = 'right',
				actionButton(inputId='barly1link1', label="Demo", icon = icon("video-camera"),
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

					tabPanel('Aesthetics',
						fluidRow(
							column(2,
								textInput(inputId = 'barly1_col', label = 'Color', value = 'blue'),
								numericInput(inputId = 'barly1_width', label = 'Border Width', value = 1, min = 0.1, step = 0.1),
								numericInput(inputId = 'barly1_opacity', label = 'Border Opacity', value = 1, min = 0.1, step = 0.1)
							),
							column(2,
								textInput(inputId = 'barly1_borcol', label = 'Border Color', value = 'black'),
								numericInput(inputId = 'barly1_gap', label = 'Border Gap', value = 1, min = 0.1, step = 0.1),
								textInput(inputId = 'barly1_bartext', label = 'Text', value = '')
							),
							column(8, align = 'center',
								plotlyOutput('barly1_plot_2', height = '600px')
							)
						)
					),

					tabPanel('Axis Range',
            fluidRow(
              column(2,
                uiOutput('ui_barly1range_min'),
                selectInput('barly1_remx', 'X Axis Grid',
									choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                  selected = "TRUE") 
              ),
              column(2,
              	uiOutput('ui_barly1range_max'),
              	selectInput('barly1_remy', 'Y Axis Grid',
									choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                  selected = "TRUE")
              ),
              column(8,
                plotlyOutput('barly1_plot_3', height = '600px')
              )
            )
          ),

          tabPanel('Annotations',
						fluidRow(
							column(2,
								selectInput('barly1_text', 'Add Text',
									choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                  selected = "FALSE"),
								numericInput(
                  inputId = "barly1_text_x_loc",
                  label = "X Intercept: ",
                  value = 1, step = 1),
                numericInput(
                  inputId = "barly1_text_y_loc",
                  label = "Y Intercept: ",
                  value = 1, step = 1
                )
              ),
              column(2,
                textInput(inputId = "barly1_plottext", label = "Text:",
                  value = ""),
                textInput(
                  inputId = "barly1_textcolor",
                  label = "Text Color: ",
                  value = "black"
                ),
                numericInput(
                  inputId = "barly1_textsize",
                  label = "Text Size: ",
                  value = 10, min = 1, step = 1
                )
              ),
              column(8,
                plotlyOutput('barly1_plot_4', height = '600px')
              )
						)
					),

					tabPanel(
						fluidRow(
							column(12, align = 'center',
								plotlyOutput('barly1_plot_5', height = '600px')
							)
						)
					)
				)
			)
		)
	)
)