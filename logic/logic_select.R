observe({
  updateSelectInput(
  	session,
    inputId = "dplyr_selvar",
    choices = names(data()),
    selected = names(data())
  )
})

observeEvent(input$finalok, {
	updateSelectInput(
  	session,
    inputId = "dplyr_selvar",
    choices = names(final()),
    selected = names(final())
  )
})

final_sel <- eventReactive(input$submit_dply_selvar, {
	k <- final() %>%
		select(input$dplyr_selvar)
	k
})