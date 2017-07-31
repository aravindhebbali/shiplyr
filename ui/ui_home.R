tabPanel("Menu", value = "tab_analyze_home",
	fluidPage(
		
		fluidRow(
			column(12, align = 'center',
				h5('What do you want to do?')
			)
		),

		br(),
		br(),

		fluidRow(

			column(3, align = 'center',
				actionButton(
					inputId = 'click_descriptive',
					label = 'Descriptive Statistics',
					width = '200px'
				)
			),

			column(3, align = 'center',
				actionButton(
					inputId = 'click_inference',
					label = 'Test Hypothesis',
					width = '200px'
				)
			),

			column(3, align = 'center',
				actionButton(
					inputId = 'click_visualize',
					label = 'Visualize Data',
					width = '200px'
				)
			),

			column(3, align = 'center',
				actionButton(
					inputId = 'click_model',
					label = 'Build Models',
					width = '200px'
				)
			)

		),

		br(),
		br(),

		fluidRow(

			column(12, align = 'center',

				uiOutput('eda_options')

			),

			column(12, align = 'center',

				uiOutput('infer_options')

			),

			column(12, align = 'center',

				uiOutput('viz_options')

			),

			column(12, align = 'center',

				uiOutput('model_options')

			)

		)

	)
)