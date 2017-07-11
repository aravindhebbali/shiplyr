tabPanel('Filter', value = 'tab_filter',

	fluidPage(

		fluidRow(

			column(12, align = 'center',
				h5('Do you want to filter data?')
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

		fluidRow(
			uiOutput('filt_render')
		)

	)

)