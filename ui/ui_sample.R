tabPanel('Sample', value = 'tab_sample', icon = icon('database'),

	fluidPage(

		fluidRow(
			column(12, align = 'center',
				h5('Draw a random sample of the data?'),
				br()
			)
		),

		fluidRow(
			
			column(6, align = 'right',
				actionButton(
					inputId = 'button_sample_yes',
					label = 'Yes',
					width = '120px'
				)
			),

			column(6, align = 'left',
				actionButton(
					inputId = 'button_sample_no',
					label = 'No',
					width = '120px'
				)
			)

		),

		br(),
		br(),

		fluidRow(

			column(12, align = 'center',

				uiOutput('samp_yes_no')

			),

			br(),
			br(),

			column(12, align = 'center',

				uiOutput('samp_no_yes')

			)

		),

		fluidRow(

			br(),
			br(),
			uiOutput('samp_per_option')

		),

		fluidRow(

			uiOutput('samp_obs_option')

		)

	)

)