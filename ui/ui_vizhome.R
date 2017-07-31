tabPanel("Menu", value = "tab_home_viz",

	fluidPage(

		fluidRow(
			column(12, align = 'center',
				h3("What do you want to do?")
			)
		),

		br(),

		fluidRow(column(6, offset = 3, hr())),

		fluidRow(			
			column(3),
			column(4, align = 'left',
				h5("Compare data across categories")
			),
			column(2, align = 'left',
				actionButton(inputId = "click_bar", 
					label = "Bar Chart",
					width = "120px"
				)
			),
			column(3)
		),

		fluidRow(column(6, offset = 3, hr())),

		fluidRow(
			column(3),
			column(4, align = 'left',
				h5("View trends in data over time")
			),
			column(2, align = 'left',
				actionButton(inputId = "click_line", 
					label = "Line Chart",
					width = "120px"
				)
			),
			column(3)
		),

		fluidRow(column(6, offset = 3, hr())),

		fluidRow(
			column(3),
			column(4, align = 'left',
				h5("Display proportions")
			),
			column(2, align = 'left',
				actionButton(inputId = "click_pie", 
					label = "Pie Chart",
					width = "120px"
				)
			),
			column(3)
		),

		fluidRow(column(6, offset = 3, hr())),

		fluidRow(
			column(3),
			column(4, align = 'left',
				h5("Explore relationship between continuous variables")
			),
			column(2, align = 'left',
				actionButton(inputId = "click_scatter", 
					label = "Scatter Plot",
					width = "120px"
				)
			),
			column(3)
		),

		fluidRow(column(6, offset = 3, hr())),

		fluidRow(
			column(3),
			column(4, align = 'left',
				h5("Understand distribution of your data")
			),
			column(2, align = 'left',
				actionButton(inputId = "click_hist", 
					label = "Histogram",
					width = "120px"
				)
			),
			column(3)
		),

		fluidRow(column(6, offset = 3, hr())),

		fluidRow(
			column(3),
			column(4, align = 'left',
				h5("Compare distribution across groups and/or identify outliers")
			),
			column(2, align = 'left',
				actionButton(inputId = "click_box", 
					label = "Box Plot",
					width = "120px"
				)
			),
			column(3)
		),

		fluidRow(column(6, offset = 3, hr()))

	)

)