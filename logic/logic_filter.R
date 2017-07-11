filt_ui <- eventReactive(input$button_filt_yes, {

	fluidRow(

		column(12, align = 'center',
					selectInput(
						inputId = 'dplyr_filter',
						label = 'Filter:',
						choices = '',
						selected = ''
					)
				),

				column(12, align = 'center',
					selectInput(
						inputId = 'dplyr_filt_op',
						label = 'Select Operator',
						choices = c('<', '>', '<=', '>=', '=='),
						selected = ''
					)
				),

				column(12, align = 'center',
					textInput(
						inputId = 'dplyr_filt_val',
						label = 'Value',
						value = '20'
					)
				),

		column(12, align = 'center',
	        br(),
	        br(),
	        actionButton(inputId = 'submit_dply_filt', label = 'Filter', width = '120px', icon = icon('check')),
	        bsTooltip("submit_dply_filt", "Click here to filter data.",
	                      "bottom", options = list(container = "body"))
	      )
	)	

})

output$filt_render <- renderUI(
	filt_ui()
)

observeEvent(input$submit_dply_selvar, {
	updateSelectInput(
  	session,
    inputId = "dplyr_filter",
    choices = names(finalsel()),
    selected = names(finalsel())
  )
})

observeEvent(input$button_selvar_no, {
	updateSelectInput(
  	session,
    inputId = "dplyr_filter",
    choices = names(final()),
    selected = names(final())
  )
})

filt_data <- reactiveValues(p = NULL)

observeEvent(input$submit_dply_selvar, {
  filt_data$p <- final_sel$a
})

observeEvent(input$submit_dply_filt, {

  filt_data$p <- filt_data$p %>%
    filter_(paste(input$dplyr_filter, input$dplyr_filt_op, input$dplyr_filt_val))

})

observeEvent(input$button_filt_no, {
	filt_data$p <- final_sel$a
})

observeEvent(input$button_filt_no, {
	updateNavbarPage(session, 'mainpage', selected = 'tab_scr')
  updateNavlistPanel(session, 'navlist_trans', 'tab_screen')
})




# filtered <- eventReactive(input$submit_dply_filt, {
#   k <- final_sel() %>%
#     filter_(paste(input$dplyr_filter, input$dplyr_filt_op, input$dplyr_filt_val))
#   k
#   # k <- filter_(final_sel(), paste(input$dplyr_filter, input$dplyr_filt_op, input$dplyr_filt_val))
#   # k
# })