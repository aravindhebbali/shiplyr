tabPanel("Home", value = "tab_analyze_home",
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
				img(src = 'summary1.png', width = '100px', height = '100px')
			),
			column(6, align = 'center',
				h4('Descriptive Statisics'),
				p('Generate descriptive/summary statistics including frequency tables, two way tables and 
					group summary.')
			),
			column(3, align = 'center',
				br(),
				actionButton(
					inputId = 'click_descriptive',
					label = 'Click Here',
					width = '100px'
				)
			)
		),

		br(),

		fluidRow(
			column(3, align = 'center',
				img(src = 'normal.png', width = '100px', height = '100px')
			),
			column(6, align = 'center',
				h4('Statistical Distributions'),
				p('Generate descriptive/summary statistics including frequency tables, two way tables and 
					group summary.')
			),
			column(3, align = 'center',
				br(),
				actionButton(
					inputId = 'click_distributions',
					label = 'Click Here',
					width = '100px'
				)
			)
		),

		br(),

		fluidRow(
			column(3, align = 'center',
				img(src = 'ttest3.jpg', width = '100px', height = '100px')
			),
			column(6, align = 'center',
				h4('Hypothesis Testing'),
				p('Generate descriptive/summary statistics including frequency tables, two way tables and 
					group summary.')
			),
			column(3, align = 'center',
				br(),
				actionButton(
					inputId = 'click_inference',
					label = 'Click Here',
					width = '100px'
				)
			)
		),

		br(),

		fluidRow(
			column(3, align = 'center',
				img(src = 'simple_reg.png', width = '100px', height = '100px')
			),
			column(6, align = 'center',
				h4('Model Building'),
				p('Tools for building simple and multiple linear regression models using the ordinary least 
					squares method.')
			),
			column(3, align = 'center',
				br(),
				actionButton(
					inputId = 'click_model',
					label = 'Click Here',
					width = '100px'
				)
			)
		),

		br(),

		fluidRow(
			column(3, align = 'center',
				img(src = 'visualize2.png', width = '100px', height = '100px')
			),
			column(6, align = 'center',
				h4('Data Visualization'),
				p('Visualize data using different libraries such as ggplot2, rbokeh, plotly and highcharts.')
			),
			column(3, align = 'center',
				br(),
				actionButton(
					inputId = 'click_visualize',
					label = 'Click Here',
					width = '100px'
				)
			)	
		)
	)
)