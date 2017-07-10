observeEvent(input$submit_dply_selvar, {
	updateSelectInput(
  	session,
    inputId = "dplyr_filter",
    choices = names(final_sel()),
    selected = names(final_sel())
  )
})

filtered <- eventReactive(input$submit_dply_filt, {
  k <-final_sel() %>%
    filter_(paste(input$dplyr_filter, input$dplyr_filt_op, input$dplyr_filt_val))
  k
  # k <- filter_(final_sel(), paste(input$dplyr_filter, input$dplyr_filt_op, input$dplyr_filt_val))
  # k
})