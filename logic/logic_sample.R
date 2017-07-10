output$samp_type <- renderUI({

	if (input$data_samp == 'Percentage') {
		
		numericInput(
			inputId = 'samp_size',
			label = 'Sample Size',
			min = 0,
			max = 1, 
			value = 0.7,
			step = 0.01
		)

	} else {

		numericInput(
			inputId = 'samp_size',
			label = 'Sample Size',
			min = 0, 
			value = 0,
			step = 1
		)		

	}

})


observeEvent(input$finalok, {

	if (input$data_samp == 'Observations') {

		updateNumericInput(
			inputId = 'samp_size',
			label = 'Sample Size',
			min = 0, 
			value = nrow(final()),
			max = nrow(final()),
			step = 1
		)

	}

})

final_sample <- eventReactive(input$submit_samp, {

	if (input$data_samp == 'Percentage') {
		out <- dplyr::sample_frac(filtered(), size = input$samp_size, replace = FALSE)
	} else {
		out <- dplyr::sample_n(filtered(), size = input$samp_size, replace = FALSE)
	}

	out

})