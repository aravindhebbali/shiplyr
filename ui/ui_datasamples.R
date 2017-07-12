tabPanel('Sample Data', value = 'tab_use_sample',

	fluidPage(

		fluidRow(

			column(4, align = 'center',
				actionButton(
					inputId = 'german_data',
					label = 'German Credit',
					width = '200px'
				)
			),

			column(4, align = 'center',
				actionButton(
					inputId = 'iris_data',
					label = 'Iris',
					width = '200px'
				)
			),

			column(4, align = 'center',
				actionButton(
					inputId = 'mtcars_data',
					label = 'mtcars',
					width = '200px'
				)
			)

		),

		fluidRow(column(12, br())),

		fluidRow(

			column(4, align = 'center',
				actionButton(
					inputId = 'mpg_data',
					label = 'mpg',
					width = '200px'
				)
			),

			column(4, align = 'center',
				actionButton(
					inputId = 'hsb_data',
					label = 'hsb',
					width = '200px'
				)
			),

			column(4, align = 'center',
				actionButton(
					inputId = 'diamonds_data',
					label = 'diamonds',
					width = '200px'
				)
			)

		),

		br(),

		fluidRow(
			column(12, align = 'center',
				actionButton(
					inputId = 'use_sample_data',
					label = 'Use Sample Data',
					width = '200px'
				)
			)
		)

	)
)