observeEvent(input$submit_dply_selvar, {
	updateSelectInput(
  	session,
    inputId = "dplyr_filter",
    choices = names(final_sel()),
    selected = names(final_sel())
  )
})

filt_data <- reactiveValues(p = NULL)

observeEvent(input$submit_dply_selvar, {
  filt_data$p <- final_sel()
})

observeEvent(input$submit_dply_filt, {

  filt_data$p <- filt_data$p %>%
    filter_(paste(input$dplyr_filter, input$dplyr_filt_op, input$dplyr_filt_val))

})


# filtered <- eventReactive(input$submit_dply_filt, {
#   k <- final_sel() %>%
#     filter_(paste(input$dplyr_filter, input$dplyr_filt_op, input$dplyr_filt_val))
#   k
#   # k <- filter_(final_sel(), paste(input$dplyr_filter, input$dplyr_filt_op, input$dplyr_filt_val))
#   # k
# })