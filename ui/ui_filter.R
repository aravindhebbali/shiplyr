tabPanel('Filter', value = 'tab_filter',

	fluidPage(

		fluidRow(

			column(12, align = 'center',
				selectInput(
					inputId = 'dplyr_filter',
					label = 'Filter:',
					choices = '',
					selected = ''
				)
			),

			column(12, align = 'center',
				selectInput(
					inputId = 'dplyr_filt_op',
					label = 'Select Operator',
					choices = c('<', '>', '<=', '>=', '=='),
					selected = ''
				)
			),

			column(12, align = 'center',
				textInput(
					inputId = 'dplyr_filt_val',
					label = 'Value',
					value = '20'
				)
			)

		),

		fluidRow(

			column(12, align = 'center',
        br(),
        br(),
        actionButton(inputId = 'submit_dply_filt', label = 'Filter', width = '120px', icon = icon('check')),
        bsTooltip("submit_dply_filt", "Click here to filter data.",
                      "bottom", options = list(container = "body"))
      )

		)

	)

)