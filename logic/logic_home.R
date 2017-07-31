eda_menu <- eventReactive(input$click_descriptive, {

		fluidRow(

			column(8, align = 'left',
				h5('Generate detailed descriptive statistics for a continuous variable: ')
			),

			column(4, align = 'left',
					actionButton(
						inputId = 'button_1',
						label = 'Click Here',
						width = '120px'
					)
			),

			br(),

			column(8, align = 'left',
				h5('Generate frequency distribution of a categorical variable: ')
			),

			column(4, align = 'left',
					actionButton(
						inputId = 'button_2',
						label = 'Click Here',
						width = '120px'
					)
			),

			br(),

			column(8, align = 'left',
				h5('Generate frequency distribution a continuous variable: ')
			),

			column(4, align = 'left',
					actionButton(
						inputId = 'button_3',
						label = 'Click Here',
						width = '120px'
					)
			),

			br(),

			column(8, align = 'left',
				h5('Generate two way table of categorical variables: ')
			),

			column(4, align = 'left',
					actionButton(
						inputId = 'button_4',
						label = 'Click Here',
						width = '120px'
					)
			),

			br(),

			column(8, align = 'left',
				h5('Generate multiple one way tables of categorical variables: ')
			),

			column(4, align = 'left',
					actionButton(
						inputId = 'button_5',
						label = 'Click Here',
						width = '120px'
					)
			),

			br(),

			column(8, align = 'left',
				h5('Generate multiple two way tables of categorical variables: ')
			),

			column(4, align = 'left',
					actionButton(
						inputId = 'button_6',
						label = 'Click Here',
						width = '120px'
					)
			),

			br(),

			column(8, align = 'left',
				h5('Generate grouped summary statistics: ')
			),

			column(4, align = 'left',
					actionButton(
						inputId = 'button_7',
						label = 'Click Here',
						width = '120px'
					)
			)

		)

	

})


output$eda_options <- renderUI({

	eda_menu()

})