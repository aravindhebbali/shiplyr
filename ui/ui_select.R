tabPanel('Select Variables', value = 'tab_selvar',

	fluidPage(
		
		fluidRow(
			column(12, align = 'center',
				selectInput(
					inputId = 'dplyr_selvar',
					label = 'Select Variables:',
					choices = '',
					selected = '',
					multiple = TRUE,
					selectize = TRUE
				)
			)
		),

		fluidRow(
			column(12, align = 'center',
        br(),
        br(),
        actionButton(inputId = 'submit_dply_selvar', label = 'Submit', width = '120px', icon = icon('check')),
        bsTooltip("submit_seldata", "Click here to select variables.",
                      "bottom", options = list(container = "body"))
      )
		)

	)

)