tabPanel('Filter', value = 'tab_filter',

	fluidPage(

		fluidRow(

			column(12, align = 'center',
				h4('Do you want to filter data?')
			),

			column(6, align = 'right',
				actionButton(
					inputId = 'button_filt_yes',
					label = 'Yes',
					width = '120px'
				)
			),

			column(6, align = 'left',
				actionButton(
					inputId = 'button_filt_no',
					label = 'No',
					width = '120px'
				)
			)

		),

		br(),
		br(),

		fluidRow(
			uiOutput('filt_render')
		),

		fluidRow(
			uiOutput('filt_trans')
		)

	)

)