tabPanel('Partition', value = 'tab_partition', icon = icon('database'),

	fluidPage(

		fluidRow(
			column(12, align = 'center',
				h5('Do you want to partition data into training set and testing set?')
			)
		),

		fluidRow(
			
			column(6, align = 'right',
				actionButton(
					inputId = 'button_split_yes',
					label = 'Yes',
					width = '120px'
				)
			),

			column(6, align = 'left',
				actionButton(
					inputId = 'button_split_no',
					label = 'No',
					width = '120px'
				)
			)

		),

		fluidRow(
			uiOutput('ui_partition')
		)

	)

)