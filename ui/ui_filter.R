tabPanel('Filter', value = 'tab_filter',

	fluidPage(

		fluidRow(

			selectInput(
				inputId = 'dplyr_filter',
				label = 'Filter:',
				choices = '',
				selected = ''
			),

			selectInput(
				inputId = 'dplyr_filt_op',
				label = 'Select Operator',
				choices = c('<', '>', '<=', '>=', '=='),
				selected = ''
			),

			textInput(
				inputId = 'dplyr_filt_val',
				label = 'Value',
				value = '20'
			)

		),

		fluidRow(

			column(12, align = 'center',
        br(),
        br(),
        actionButton(inputId = 'submit_dply_filt', label = 'Submit', width = '120px', icon = icon('check')),
        bsTooltip("submit_dply_filt", "Click here to filter data.",
                      "bottom", options = list(container = "body"))
      )

		)

	)

)