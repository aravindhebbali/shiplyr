tabPanel("Select Data", value = "tab_seldata",

  fluidPage(
  	
  	fluidRow(
  		column(6, align = "right",
  			br(),
  			h4('Select Data:')
  		),
  		column(6, align = "left",
  			selectInput(
  				inputId = "sel_data",
  				label = "",
          choices = '',
  				# choices = c('csv', 'excel', 'json', 'spss', 'stata', 'sas'),
  				selected = '', 
  				width = '200px',
  			)
  		)
  	),

    fluidRow(
        column(12, align = 'center',
        br(),
        br(),
        actionButton(inputId = 'submit_seldata', label = 'Submit', width = '120px', icon = icon('check')),
        bsTooltip("submit_seldata", "Click here to select data.",
                      "bottom", options = list(container = "body")))
    )
  )

)