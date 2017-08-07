tabPanel("Home", value = "tab_home_viz",

	fluidPage(

		fluidRow(
			column(12, align = 'center',
				h3("Please choose a library")
			)
		),

		br(),

		fluidRow(column(12, hr())),

		fluidRow(			
			column(3, align = 'center',
				img(src = 'Rlogonew.png', width = '100px', height = '100px')
			),
			column(6, align = 'center',
				h5("Compare data across categories")
			),
			column(3, align = 'center',
				actionButton(inputId = "click_base", 
					label = "Click Here",
					width = "120px"
				)
			)
		),

		fluidRow(column(12, hr())),

		fluidRow(			
			column(3, align = 'center',
				img(src = 'ggplot2_logo.png', width = '100px', height = '100px')
			),
			column(6, align = 'center',
				h5("Compare data across categories")
			),
			column(3, align = 'center',
				actionButton(inputId = "click_ggplot2", 
					label = "Click Here",
					width = "120px"
				)
			)
		),

		fluidRow(column(12, hr())),

		fluidRow(			
			column(3, align = 'center',
				img(src = 'highcharts_logo.png', width = '25px', height = '25px'),
				img(src = 'bokeh_logo.png', width = '25px', height = '25px'),
				img(src = 'plotly_logo.png', width = '25px', height = '25px')
			),
			column(6, align = 'center',
				h5("Compare data across categories")
			),
			column(3, align = 'center',
				actionButton(inputId = "click_prh", 
					label = "Click Here",
					width = "120px"
				)
			)
		),

		fluidRow(column(12, hr()))
		
	)

)