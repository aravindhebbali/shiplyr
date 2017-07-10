tabPanel('Sample', value = 'tab_sample',

	fluidPage(

		fluidRow(

			column(12, align = 'center',

				selectInput(
					inputId = 'data_samp',
					label = 'Sample Type',
					choices = c('Percentage', 'Observations'),
					selected = 'Percentage'
				)

			)

		),

		fluidRow(

			column(12, align = 'center',

				uiOutput('samp_type')

			)

		),


		fluidRow(
			column(12, align = 'center',
        br(),
        br(),
        actionButton(inputId = 'submit_samp', label = 'Submit', width = '120px', icon = icon('check')),
        bsTooltip("submit_samp", "Click here to generate sample.",
                      "bottom", options = list(container = "body"))
      )
		)

	)

)