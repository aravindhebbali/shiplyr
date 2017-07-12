tabPanel('Data Sources', value = 'tab_datasources', 

	fluidPage(

		fluidRow(
			column(12, align = 'center',
				h5('Use sample data or upload files?')
			)
		),

		fluidRow(

			column(6, align = 'right',
				actionButton(
					inputId = 'sample_data_yes',
					label = 'Sample Data',
					width = '120px'
				)
			),

			column(6, align = 'left',
				actionButton(
					inputId = 'upload_files_yes',
					label = 'Upload File',
					width = '120px'
				)
			)
			
		),

		br(),
		br(),

		fluidRow(
			uiOutput('upload_file_links')
		)		

	)

)